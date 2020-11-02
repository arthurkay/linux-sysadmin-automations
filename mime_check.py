import magic
import os
import sys

if len(sys.argv) < 2:
	print("Please pass in the directory where to rename files")
	sys.exit(1)

dir = sys.argv[1]
total_dir = 0
for file in os.listdir(dir):
	try:
		print("The file {} is of type {}".format(file, magic.from_file(dir+'/'+file)))
		if "PDF" in magic.from_file(dir+'/'+file):
			os.rename(dir+'/'+file, dir+'/'+file+'.pdf')
		else:
			os.rename(dir+'/'+file, dir+'/'+file+'.zip')
	except FileNotFoundError as e:
		# Ignore this error
		pass
	except Exception as err:
		print(err)

	total_dir +=1
print(total_dir)

