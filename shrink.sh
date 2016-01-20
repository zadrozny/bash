#!/usr/bin/bash

dir="/home/MZ/Desktop/mandarin_pics"

# Note: Bash seems to not handle these operations well when
# they are part of one loop

# ToDo: Make this less verbose / idiotic

# Replace spaces in filenames with underscores
# (identify not handling quoted files / paths well)
for image in  *.png *.jpg *.JPG *.jpeg
do   
	underscored_image=$(echo "${dir}"/"${image}" |  sed -e 's/ /_/g;')	
	mv "${image}" "${underscored_image}" 
done

# Shrink images taller than 400px
for image in  *.png *.jpg *.JPG *.jpeg
do   
	H=`identify "${image}" | cut -f 3 -d " " | sed s/.*x//` # height	
	if (("$H" > 400))
	then
	echo $H 
	convert "${image}" -resize x400 "${image}"
	fi
done

# Convert underscore filenames back to originals
SAVEIFS=$IFS # internal field seperator
IFS=$(echo -en "\n\b")
for image in  *.png *.jpg *.JPG *.jpeg
do   
	original=$(echo "${image}" |  sed -e 's/_/ /g;')	
	mv "${image}" "${original}" 
done
IFS=$SAVEIFS