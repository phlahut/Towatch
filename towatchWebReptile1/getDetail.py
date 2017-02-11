#!/usr/bin/env python
# -*- coding:utf-8 -*-
import firstPage

import requests
from bs4 import BeautifulSoup

import pandas

import sqlite3

urlList = firstPage.gethref()
print(urlList)

def detail(url2):
    result = {}
    # 新闻详情链接
    url = "http://www.julanhp.com"+url2
    res = requests.get(url);
    res.encoding = 'utf-8'
    soup = BeautifulSoup(res.text, "html.parser");
    # 获取标题
    result['title'] = soup.find("h1").text

# 获取新闻发表时间
    time = soup.select(".info")[0].contents[4]
    time = time[6:17]
    result['time'] = time
    # 获取新闻内容
    contents = soup.select(".content")[0].text
    result['contents'] = contents
    # 获取新闻内容图片地址
    imgUrl = soup.select(".content img")
    imgList = []
    for imgStr in imgUrl:
        imgList.append(imgStr["src"])

    result["imgUrlList"] = imgList
    result["httpUrl"] = "http://www.julanhp.com"
    # print(result);
    alllist = [result]
    return alllist

newlist = []
for url in firstPage.gethref():
    # detail(url);
    newlist.extend(detail(url))
# 使用pandas数据分析包保存数据
df = pandas.DataFrame(newlist)
df.to_csv("黄平新闻.csv")
# 保存为html格式
# df.to_html("黄平新闻.html")
# 保存为sqlite
# with sqlite3.connect("news.sqlite")as db:
#     df.to_sql('news',con=db)