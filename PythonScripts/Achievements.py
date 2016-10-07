import requests
from bs4 import BeautifulSoup

host = 'http://cn.hearthhead.com/'
urls = ['http://cn.hearthhead.com/cardbacks#gallery:0+1',
        'http://cn.hearthhead.com/cardbacks#gallery:40+1']

def fetchAchievements():
    for i, url in enumerate(urls):
        r = requests.get(url)
        if (r.status_code == 200):
            html_doc = r.text


if __name__ == '__main__':
    fetchAchievements()
