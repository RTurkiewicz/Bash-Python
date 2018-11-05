import urllib
import re

url = "https://en.wikipedia.org/wiki/Regular_expression"

regexpress = re.compile('<a href=\"([^"]+)\" title=\"([^"]+)\">')
urlconv = urllib.urlopen(url)
findd = regexpress.findall(urlconv.read())

for k in findd:
	print(k[1] + ' -> ' + k[0])