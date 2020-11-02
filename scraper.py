import requests
from bs4 import BeautifulSoup
import os
import sys
from threading import Thread

# https://www.zamstats.gov.zm/index.php/publications/category/8-demorgraphy?download=93:zdhs1992

# Download the file and save it to disk
def download(file):
    filename = link['href'].split(':')[1]
    print("Downloading {} in {}".format(filename, created_dir))
    req_file = requests.get(base_url + link['href'], allow_redirects=True)
    #print("Downloading from {}".format(base_url + link['href']))
    print("Saving file to disk "+created_dir+'/'+filename)
    open(created_dir+'/'+filename, 'wb').write(req_file.content)

def test(x):
    filename = link['href']
    print(filename)

try:
    url = sys.argv[2]
    if os.path.isdir('./'+sys.argv[1]):
        pass
    else:
        os.mkdir('./'+sys.argv[1])
except:
    print('You need to pass the directory where to save files and url as the second parameter')
    print("python {} directory http://example.com".format(sys.argv[0]))
    sys.exit(1)

base_url = "https://www.zamstats.gov.zm"

html_data = requests.get(url)

parsed_html = BeautifulSoup(html_data.content, 'html.parser')
dataset = parsed_html.find(class_='pd-category')

btn_download_file = dataset.find_all('a', class_='btn btn-success')

print("Found {} files to download".format(len(btn_download_file)))

created_dir = sys.argv[1]

for link in btn_download_file:
    this_thread = Thread(target=download, args=(link,))
    this_thread.start()
    this_thread.join()

"""for link in btn_download_file:
    pool.apply_async(download, (link,))
"""

"""for link in btn_download_file:
    download(link)
"""