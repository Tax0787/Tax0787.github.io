from MyHtml.MakeHtml import *

#ThisFilesSource = t()
ThisFilesSource = ''

ThisFilesSource = source + ThisFilesSource

with open(__file__.replace('_html_make.py', '.html'), 'w') as f:
    f.write(ThisFilesSource)
