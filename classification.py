from __future__ import print_function, division


import os
import copy
import time

import torch
from torch.optim import lr_scheduler
import torchvision
from torchvision import transforms, datasets
from torchvision import models
import matplotlib.pyplot as plt

path = "barrier_gate"

transform = transforms.Compose([transforms.Resize((224,224)), 
	transforms.ToTensor()])

image_datasets = {x:datasets.ImageFolder(root = os.path.join(path,x), 
	transform = transform) 
for x in ["train", "val"]}

dataloaders = {x: torch.utils.data.DataLoader(dataset=image_datasets[x], 
	batch_size=4, shuffle=True) for x in ["train", "val"]}

X_train, y_train = next(iter(dataloaders["train"]))

def show_image(X_train):
	img = torchvision.utils.make_grid(X_train)
	img = img.numpy().transpose((1,2,0))
	plt.imshow(img)


model = models.vgg16(pretrained=True)


for param in model.parameters():
	param.requires_grad = False

model.classifier = torch.nn.Sequential(
	torch.nn.Linear(25088,4096),
	torch.nn.ReLU(),
	torch.nn.Dropout(p=0.5),
	torch.nn.Linear(4096,4096),
	torch.nn.ReLU(),
	torch.nn.Dropout(p=0.5),
	torch.nn.Linear(4096,2))

cost = torch.nn.CrossEntropyLoss()
optimizer = torch.optim.Adam(model.classifier.parameters())
exp_lr_scheduler = lr_scheduler.StepLR(optimizer, step_size=7, gamma=0.1)
device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
dataset_sizes = {x: len(image_datasets[x]) for x in ['train', 'val']}

def train_model(model, criterion, optimizer, scheduler, num_epochs):
	since = time.time()

	best_model_wts = copy.deepcopy(model.state_dict())
	best_acc = 0.0

	for epoch in range(num_epochs):
		print('Epoch {}/{}'.format(epoch, num_epochs - 1))
		print('-' * 10)
		for phase in ['train', 'val']:
			if phase == 'train':
				scheduler.step()
				model.train()
			else:
				model.eval()

			running_loss = 0.0
			running_corrects = 0

			for inputs, labels in dataloaders[phase]:
				inputs = inputs.to(device)
				labels = labels.to(device)

				optimizer.zero_grad()

				with torch.set_grad_enabled(phase == 'train'):
					outputs = model(inputs)
					_, preds = torch.max(outputs,1)
					loss = criterion(outputs, labels)

					if phase == 'train':
						loss.backward()
						optimizer.step()

				running_loss += loss.item() * inputs.size(0)
				running_corrects += torch.sum(preds == labels.data)

			epoch_loss = running_loss / dataset_sizes[phase]
			epoch_acc = running_corrects.double() / dataset_sizes[phase]

			print('{} Loss: {:.4f} Acc: {:.4f}'.format(phase, epoch_loss, epoch_acc))

			if phase == 'val' and epoch_acc > best_acc:
				best_acc = epoch_acc
				best_model_wts = copy.deepcopy(model.state_dict())

		print()

	time_elapsed = time.time() - since
	print('Training complete in {:.0f}m {:.0f}s'.format(time_elapsed // 60, time_elapsed %60))
	print('Best val Acc: {:4f}'.format(best_acc))

	model.load_state_dict(best_model_wts)
	return model


model_ft = train_model(model, cost, optimizer, exp_lr_scheduler,
                       num_epochs=1)


torch.save(model, "model_vgg16_finetune.pkl")
