from os import system as s

def download_source(FILENAME, url):
    FILEID = url.replace('https://', 'http://').replace('http://drive.google.com/file/d/', '')
    FILEID = FILEID.split('/')[0] if '/' in FILEID else FILEID
    return f"wget --no-check-certificate 'https://docs.google.com/uc?export=download&id={FILEID}' -O {FILENAME}"

download = lambda file, url : s(download_source(file, url))

출처 = 'https://deeplify.dev/server/bash/download-google-drive-file-in-terminal'