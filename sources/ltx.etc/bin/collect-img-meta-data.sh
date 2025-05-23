#!/bin/bash

# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

BIN_DIR=`dirname $0`
TOP_DIR=`dirname $BIN_DIR`
CONTEXT="$1"

IMGMD="img-meta-data.json"; # json file containing all image meta descriptions
MP=""; # true, if the first image mate description has been written


IMAGELIST="imagelist.tmp"
UNIQUE_IMAGELIST="unique-imagelist.tmp"

# (0) clear environment
echo "[" > $IMGMD;
touch $IMAGELIST $UNIQUE_IMAGELIST;

# (1) collect all images + paths embedded into any tex-file
find . -name "*.tex" | grep "$CONTEXT" | while read f; do
  echo "?images?: $f";
  # check each line of each found tex file for embedded images
  cat $f | while read l; do
    imageFilePath=`echo $l | grep -v '^\s*%' | grep 'includegraphics' | sed 's/.*{img/img/' | tr -d '}';`
    if [ ! "$imageFilePath" == "" ]; then echo "$imageFilePath">> $IMAGELIST; fi
  done
done

# (2) delete all duplicates 
# (because the same image could multiply be embedded
# but need only one reference int the image reference)
cat $IMAGELIST | sort | uniq > $UNIQUE_IMAGELIST;

# (3) add all reffered meta files to the converter input file
cat $UNIQUE_IMAGELIST | while read iml; do
  # for each referred image compute the name of the corresponding meta (json) file
  imageName=`basename $iml`;
  imageMeta=`echo "${imageName%.*}.json"`;
  # try to find if
  find $TOP_DIR -name $imageMeta | while read tfx; do
    # if there are already meta sections, add a comma to the image meta descriptions
    if [ "$MP" == 'true' ]; then echo "," >> $IMGMD; else MP='true'; fi;
    # store the path of the image file to the image meta descriptions 
    # for enabling the converter to embed it into the image reference list
    echo "{ \"imPath\": \"$iml\"," >> $IMGMD;
    # create a corresponding meta section
    echo "  \"imMeta\": " >> $IMGMD;
    # copy the content into the image meta descriptions
    cat $tfx >> $IMGMD;
    # close this section
    echo "}" >> $IMGMD    
  done
done
# close the arry
echo "]" >> $IMGMD;

# (4) delete all temporarily created files
rm *.tmp

exit 0
