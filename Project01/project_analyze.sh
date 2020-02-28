
#!/bin/bash

#Feature: use first argument for selecting which feature to exceute
featureNum="$1"

#Feature 1 : FIXME Log

if [ "$featureNum" -eq 1 ]
then
	echo > fixme.log
	for f in $(find .. -type f)
        do
		last=$(tail -n 1 "$f")
		if [ "$last" = "FIXME" ]
		then
			echo "${f:13}" >> fixme.log
		fi
	done
#Feature 2 : File Type Count
elif [ "$featureNum" -eq 2 ]
then
	echo "Enter the file extension you looking for and  press enter:"
	read input
	touch temp
	find .. -name "*.$input" -print >>temp
	wc -l < temp
	rm temp

#Feature 3 : File size list
elif [ "$featureNum" -eq 3 ]
then
	ls -l -h -R -S -p .. | grep -v "/" | awk '{print $9,$5"B"}'

elif [ "$featureNum" -eq 4 ]
then
	files=$(find .. -name "*.sh")
	echo > permissions.log
	echo "Enter the integer, 1 for Change and  2 for  Restore:"
	read input
	if [ "$input" -eq 1 ];then
	for f in $files
	do
		perm=$(ls -l "$f" | awk '{print $1$9}' | cut -b 1-4)
		echo "$perm:$f" >> permissions.log
		if [ "$perm" = "-rw-" ];then
			chmod u+x "$f"
		fi
	done
	elif [ "$input" -eq 2 ];then
		perm=$(cat permissions.log | cut -b 1-4,6-)
		for i in $perm
		do
			p=$(echo "$i" | cut -b 1-4)
			fileName=$( echo "$i" | cut -b 5-)
			if [ "$p" = "-rw-" ]; then
				chmod u-x "fileName"
			fi
		done
	else
		echo "Wrong input"
	fi

elif [ "$featureNum" -eq 5 ]; then
	echo "Enter the integer, 1 for Backup and  2 for  Restore:"
	read input
        if [ "$input" -eq 1 ];then
			if [ -d "backup" ];then
				rm -rf backup
				mkdir backup
			else
				mkdir backup
			fi
			echo > backup/restore.log
			files=$(find .. -name "*.tmp" | cut -d '/' -f 3)
			for f in $files
			do
				cp $f "backup/$f"
				location=$(pwd $f)
				echo "$f:$location" >> backup/restore.log
				rm $f
			done
	elif [ "$input" -eq 2 ];then
			files=$( cat backup/restore.log)
			echo "here:$files"
			for f in $files
			do
				name=$(echo "$f" | cut -d ':' -f 1 )
				location=$(echo "$f" | cut -d ':' -f 2)
				if [ -f "backup/$name" ];then
					mv "backup/$name" "$location/$name"
				else
					echo "File not exits"
				fi
			done
	else
		echo "Wrong input"
	fi

elif [ "$featureNum" -eq 6 ]
then
	echo "Enter one line of string you want to reverse, then hit enter:"
	read input
	rev=$(echo "$input" | grep " " | tac -s ' ')
	string=""
	for i in $rev
	do
		string="$string $i"
	done
	echo "$string"

elif [ "$featureNum" -eq 7 ]
then
	echo "Enter the word you want to replace in file, then hit enter:"
	read input
	echo "Enter the replace word, then hit enter:"
	read word
	files=$(find .. -name "*.txt")
	for f in $files
	do
		sed -i "s/$input/$word/g" "$f"
	done

else
        echo "Wrong argument input."
fi
exit
