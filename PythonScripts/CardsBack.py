import json
import shutil
import requests
from multiprocessing import Pool
from multiprocessing.dummy import Pool as ThreadPool

cardbackImageHost = 'http://wow.zamimg.com/images/hearthstone/backs/'
smallCardbackImageBaseUrl = cardbackImageHost + 'small/'
mediumCardbackImageBaseUrl = cardbackImageHost + 'medium/'
animatedCardbackImageBaseUrl = cardbackImageHost + 'animated/'
pngSuffix = '.png?12585'
gifSuffix = '.gif?12585'


assetsArr = []
downloadCount = 0

def downloadCardBackImage_medium(asset):
    global downloadCount

    imageName = asset.split('/')[-1]
    pngImageName = imageName + ".png"
    pngUrl = mediumCardbackImageBaseUrl + imageName + pngSuffix
    print(pngImageName + " [" + pngUrl + "]")
    response = requests.get(pngUrl, stream=True)
    with open(pngImageName, 'wb') as out_file:
        shutil.copyfileobj(response.raw, out_file)
        downloadCount += 1
        print('下载完成 {0} --------- {1}/{2}'.format(pngImageName, downloadCount, len(assetsArr)))
        del response


def downloadCardbackImage_gif(asset):
    global downloadCount

    imageName = asset.split('/')[-1]
    gifImageName = imageName + ".gif"
    gifUrl = animatedCardbackImageBaseUrl + imageName + gifSuffix
    print(gifImageName + " [" + gifUrl + "]")
    response = requests.get(gifUrl, stream=True)
    with open(gifImageName, 'wb') as out_file:
        shutil.copyfileobj(response.raw, out_file)
        downloadCount += 1
        print('下载完成 {0} --------- {1}/{2}'.format(gifImageName, downloadCount, len(assetsArr)))
        del response

def assetsArrFromCardbacks(fileContent):
    cardbacksArr = fileContent['cardbacks']
    for cardbackDic in cardbacksArr:
        asset = cardbackDic['asset']
        assetsArr.append(asset)

if __name__ == '__main__':
    file = 'HearthStoneCardsBacks.json'
    fp = open(file, 'r')
    dict = json.loads(fp.read())
    fp.close()
    assetsArrFromCardbacks(dict)

    pool = ThreadPool(4)
    # download gif images
    # pool.map(downloadCardbackImage, assetsArr)

    # download medium png images
    pool.map(downloadCardBackImage_medium, assetsArr)

    pool.close()
    pool.join()
