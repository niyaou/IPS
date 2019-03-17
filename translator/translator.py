import importlib, sys, urllib

importlib.reload(sys)
import urllib.request
import json
import hashlib
import urllib
import random


myurl = 'https://dict.bing.com.cn/api/http/v2/4154AA7A1FC54ad7A84A0236AA4DCAF3/en-us/zh-cn/?q=rod&format=application/json'
resultPage = urllib.request.urlopen(myurl)
resultJason = resultPage.read().decode('utf-8')
resultJasons = resultPage.read()
print(resultJason)