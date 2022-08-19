from json import load as l
from json import dump as d
link=input('link : ')
link.replace('https://','http://').replace('repl.it','replit.com')
dict = l(open('link.json'))
hex(dict.key()[-1])