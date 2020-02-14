#!/bin/bash

#Feature: use first argument for selecting which feature to exceute
featureNum="$1"

#Feature 1 : FIXME Log

if [ "$featureNum" == "1" ]
then
        echo > fixme.log
        for  f in $(find .. -type f)
        do
                last=$(tail -n 1 "$f")
                if [ "$last" == "FIXME" ]
                then
                        echo "${f:13}" >> fixme.log
                fi
        done
#Feature 2 : File Type Count
elif [ "$featureNum" == "2" ]
then
        echo "Enter the file extension you looking for and  press enter:"
        read
        touch temp
        find .. -name "*.${REPLY}" -print >>temp
        wc -l < temp
        rm temp

#Feature 3 : File size list
elif [ "$featureNum" == "3" ]
then

        ls -l -h -R -S -p .. | grep -v "/" | awk '{print $9,$5"B"}'


else
        echo "Wrong argument input."
fi
exit
