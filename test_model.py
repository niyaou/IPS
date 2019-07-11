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

device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
model = torch.load("model_vgg16_finetune.pkl")
model.eval()

transform = transforms.Compose([transforms.Resize((224,224)), 
	transforms.ToTensor()])

data_test_img = datasets.ImageFolder(root = os.path.join(path,"test"), transform=transform)
dataloaders = torch.utils.data.DataLoader(dataset=data_test_img,batch_size=16)

image, label = next(iter(dataloaders))
images = image.to(device)
y_pred = model(images)
_, pred = torch.max(y_pred.data, 1)
print(pred)
print(label)

img = torchvision.utils.make_grid(image)
img = img.numpy().transpose(1,2,0)

classes = data_test_img.classes
print("Pred Label:",[classes[i] for i in pred])
plt.imshow(img)
plt.show()