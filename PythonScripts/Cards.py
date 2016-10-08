import json
import shutil
import requests
from multiprocessing import Pool
from multiprocessing.dummy import Pool as ThreadPool

cardsImageHost = 'http://wow.zamimg.com/images/hearthstone/cards/zhcn/'
originalCardImageBaseUrl = cardsImageHost + 'original/'
mediumCardImageBaseUrl = cardsImageHost + 'medium/'
smallCardImageBaseUrl = cardsImageHost + 'small/'
animatedCardImageBaseUrl = cardsImageHost + 'animated/'
pngSuffix = '.png?12585'
gifSuffix = '_premium.gif?12585'
