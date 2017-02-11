#!/usr/bin/env python
# -*- coding:utf-8 -*-
import requests
from bs4 import BeautifulSoup


# 获取所有推荐新闻的链接
def gethref():
    # 入口
    res = requests.get("http://www.julanhp.com/Category_67/Index.aspx")
    res.encoding = 'utf-8'
    soup = BeautifulSoup(res.text, "html.parser")

    links = soup.select(".list_txt2")
    # print(links);
    urlList = []

    for link in links:

        for url in link:
            url1 = links[0].select('a')
            urlList = url1

    urlHrefList = []
    for url in urlList:
        urlHrefList.append(url['href'])
    return urlHrefList



