#!/bin/bash

dir=$1
tijd=$2

foto_folder="$Home/fotos"

if [ ! d "$foto_folder" ]
then
	mkdir $foto_folder

for foto in *
do
        if [ "$ti" = "week" ] 
        then
            tijdsperiode=$(date -r "$foto" +%W)
        else
            if [ "$tijd" = "maand" ] 
            then
                tijdsperiode=$(date -r "$foto" +%m)
            else
                echo "Geen tijdsperiode gegeven"
                exit 1
            fi
        fi
        if [[ -d "$foto_folder"/"$tijdsperiod" ]] 
        then
            cp -v "$foto" "$foto_folder"/"$tijdsperiode"/"$foto"
        else
            mkdir "$foto_folder"/"$tijdsperiode"
            cp -v "$foto" "$foto_folder"/"$tijdsperiode"/"$foto"
	fi

	oud=$(sudo md5sum "$Home"/"$foto_folder" | cut -d " " -f1)
	nieuw=$(sudo md5sum "$foto_folder"/"tijdsperiode"/"$foto"  | cut -d " " -f1)

	if [ "$oud" = "$nieuw" ]
	then
		rm "$foto"
	else
		echo "$foto is invalid"
	fi

	echo ""
done


