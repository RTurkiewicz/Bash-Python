import os
import sys

subdir = sys.argv[1]
scnddir = sys.argv[2]

filepath = os.path.realpath(subdir)
scndpath = os.path.realpath(scnddir)

try:
	for fil in os.listdir(filepath):
		tmp = os.path.join(filepath,fil)
		z1, z2 = os.path.splitext(tmp)
		if z2 == ".txt":
			print(tmp)
			f=open(tmp, "r")
			contents = f.read()
			f.close()
			try:
				tmppath = os.path.join(scndpath,fil)
				b=open(tmppath,"w")
				b.write(contents)
				b.close()
			except IOError:
				print("wrong path")
	
		os.remove(tmp)

except IOError:
	print("wrong path")