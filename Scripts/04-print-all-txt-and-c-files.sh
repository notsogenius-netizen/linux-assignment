#Check if txt files exist
shopt -s nullglob
if compgen -G "*,txt" > /dev/null; then 
	echo "Text (.txt) files found."
else
	touch dummy.txt 
	echo "No .txt files found. Creating dummy.txt."
fi

# Check if .c files exist 
if compen -G "*.c" > /dev/null; then 
	echo "C (.c) files found."
else
	touch dummy.c
	echo "No .c files found. Creating dummy.c."
fi
# Print all . txt and .c files
echo "Listing all txt and •c files in the current directory:" 
ls -l *.txt *.c
