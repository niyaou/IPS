#!/usr/bin/env python
# -*- coding:utf-8 -*-

import os
import re
import urllib
import json
import socket
import urllib.request
import urllib.parse
import urllib.error
# 设置超时
import time

timeout = 2
socket.setdefaulttimeout(timeout)


class Crawler:
    # 睡眠时长
    __time_sleep = 0.1
    __pageSize=60
    __amount = 0
    __start_amount = 0
    __counter = 0
    __total_count=0
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0'}

    # 获取图片url内容等
    # t 下载图片时间间隔
    def __init__(self, t=0.1):
        self.time_sleep = t

    # 获取后缀名
    def get_suffix(self, name):
        m = re.search(r'\.[^\.]*$', name)
        if m.group(0) and len(m.group(0)) <= 5:
            return m.group(0)
        else:
            return '.jpeg'

    # 获取referrer，用于生成referrer
    def get_referrer(self, url):
        par = urllib.parse.urlparse(url)
        if par.scheme:
            return par.scheme + '://' + par.netloc
        else:
            return par.netloc

        # 保存图片
    def save_image(self, rsp_data, word):
        if not os.path.exists("./" + word):
            os.mkdir("./" + word)
        # 判断名字是否重复，获取图片长度
        self.__counter = len(os.listdir('./' + word)) + 1
        for image_info in rsp_data['imgs']:

            try:
                time.sleep(self.time_sleep)
                suffix = self.get_suffix(image_info['objURL'])
                # 指定UA和referrer，减少403
                refer = self.get_referrer(image_info['objURL'])
                opener = urllib.request.build_opener()
                opener.addheaders = [
                    ('User-agent', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0'),
                    ('Referer', refer)
                ]
                urllib.request.install_opener(opener)
                # 保存图片
                urllib.request.urlretrieve(image_info['objURL'], './' + word + '/' + str(self.__counter) + str(suffix))
            except urllib.error.HTTPError as urllib_err:
                print(urllib_err)
                continue
            except Exception as err:
                time.sleep(1)
                print(err)
                print("产生未知错误，放弃保存")
                continue
            else:
                print("小黄图+1,已有" + str(self.__counter) + "张小黄图")
                self.__counter += 1
        return

    # 开始获取
    def get_images(self, word='美女',img_size=0,color=0):
        search = urllib.parse.quote(word)
        retry_times=2
        # pn int 图片数
        pn = self.__start_amount
        flag = False
        while pn < self.__amount:

            url = 'http://image.baidu.com/search/avatarjson?tn=resultjsonavatarnew&ie=utf-8&word=' + search + '&cg=girl&pn=' + str(
                pn) + '&rn=60&itg=1&z='+str(img_size)+'&fr=&width=&height=&lm=-1&ic='+str(color)+'&s=0&st=-1&gsm=1e0000001e'
            print(url)
              
                
#             url = 'https://image.baidu.com/search/index?ct=201326592&z=0&tn=baiduimage&ipn=r&word='+ search + '&pn='+  str(
#                 pn)  +'&istype=2&ie=utf-8&oe=utf-8&cl=2&lm=-1&st=-1&fr=&fmq=1557739705540_R&ic=&se=&sme=&width=0&height=0&face=0&hd=&latest=&copyright='     
            # 设置header防ban
            try:
                time.sleep(self.time_sleep)
                req = urllib.request.Request(url=url, headers=self.headers)
                page = urllib.request.urlopen(req)
                rsp = page.read().decode('unicode_escape')
                rsp_data = json.loads(rsp)
            except UnicodeDecodeError as e:
                print(e)
                print('-----UnicodeDecodeErrorurl:', url)
            except urllib.error.URLError as e:
                print(e)
                print("-----urlErrorurl:", url)
            except socket.timeout as e:
                print(e)
                print("-----socket timout:", url)
            except json.decoder.JSONDecodeError as e:
                print(e)
                print("-----json parse error:", url)
                pn += self.__pageSize
            else:
                # 解析json
                print(len(rsp_data["imgs"]))
#                 return   
                
                if (not flag) and rsp_data["imgtotal"]:
                    self.__total_count += len(rsp_data["imgs"])
                    print(self.__total_count)
#                 break
                if not rsp_data["imgs"]:
#                     print(url)
                    retry_times = retry_times-1
                else :
                    retry_times = 2    
                if retry_times == 0 :
                    break
                self.save_image(rsp_data, word)
                # 读取下一页
                print("下载下一页")
                pn += self.__pageSize
            finally:
                if page :
                   page.close()
        print("下载任务结束")
        return

    def start(self, word, spider_page_num=1, start_page=1,img_size=0,color=0):
        """
        爬虫入口
        :param word: 抓取的关键词
        :param spider_page_num: 需要抓取数据页数 总抓取图片数量为 页数x60
        :param start_page:起始页数
        :return:
        """
        self.__start_amount = (start_page - 1) * self.__pageSize
        self.__amount = spider_page_num * self.__pageSize + self.__start_amount
        self.get_images(word,img_size,color)

    def summary(self):
        print(self.__total_count)    
if __name__ == '__main__':
    crawler = Crawler(0.1)  # 抓取延迟为 0.05

    # crawler.start('美女', 10, 2)  # 抓取关键词为 “美女”，总数为 1 页（即总共 1*60=60 张），开始页码为 2
#     crawler.start('道闸', 1000, 10,0)  # 抓取关键词为 “二次元 美女”，总数为 10 页（即总共 10*60=600 张），起始抓取的页码为 1
    sizeArr=[0,2,3,9]
    colorArr=[0,512,16,1,2,8,256,128]
    for c in [(x,y) for x in sizeArr for y in colorArr   ]: 
#         if c[0] == 2 and (c[1]==0 or c[1] == 512 or c[1] == 16 or c[1] == 1):
#             continue
        print("x:"+str(c[0])+ "  y:" +str(c[1]))
        crawler.start('江口沉银', 500, 1,c[0],c[1])
    crawler.summary()    
    print(' -------mission done---------------')
    # crawler.start('帅哥', 5)  # 抓取关键词为 “帅哥”，总数为 5 页（即总共 5*60=300 张）