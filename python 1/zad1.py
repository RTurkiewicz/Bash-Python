import os
import sys

if(len(sys.argv)!=4):
	print("Not enough arguments")
	sys.exit()

subdir = sys.argv[1]
licznik = int(sys.argv[2])
scndfile = sys.argv[3]

filepath = os.path.realpath(subdir)

try:
	b=open(scndfile, 'r')
	tmp = b.read()
	b.close()
	for x in range(1,(licznik+1)):
		nazwa = "plik" + str(x)
		f=open(os.path.join(filepath,nazwa), 'w')
		f.write(tmp)
		f.close()
except IOError:
	print("wrong path")