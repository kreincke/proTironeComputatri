#!/bin/bash

# insert the subject number and the numbers of its topics  
# 
# each topic gathers its respective documents in a dir 
# following the pattern "tpc-00.name" where name is a
# 7bit identifier without any whitespaces
#
# based on this definition this script 
# a) enters all topic specfic directories
# computes the respective teaching documents
# b) computes the subject specific deepdivei
# c) computes the subject specific zen-presentation
# d) moves teh computed documents into a build 
# directory named 'dist

SBJ="00"
TPCS="00"

# create the distribution tree structure:
(cd ../../ && bin/gendistbase.sh)

SBJP=`pwd`;
SBJD=`basename $SBJP`; # the subject directory
LFP=`dirname $SBJP`;
LFD=`basename $LFP`; # the 'lernfeld' directory
DD="dist"
RDD="../../$DD/$LFD/$SBJD" # the dist target directory


# (I) compute the topic specific teaching documents
# and move them into the dist directory

# for all topics do
for NUM in $TPCS; do 
( 
    cd tpc-$NUM.*;          # enter the topic directory
    DTD="../$RDD"

    TPCEXRF=exercise-$NUM.pdf
    TPCEXDF=tpc-$NUM-exercise.pdf
    
    TPCOTRF=oraltrack-$NUM.pdf
    TPCOTDF=tpc-$NUM-oraltrack.pdf

    TPCPBRF=playbook-$NUM.pdf
    TPCPBDF=tpc-$NUM-playbook.pdf

    TPCZPRF=zp-tpc-$NUM.pdf
    TPCZPDF=tpc-$NUM-zenprese.pdf

    make $TPCEXRF $TPCOTRF $TPCPBRF
    (cd zp && make $TPCZPRF && mv $TPCZPRF ../)

    echo "moving [$TPCEXRF, $TPCOTRF, $TPCPBRF, $TPCZPRF]"
    echo "  to $DTD/[$TPCEXDF,$TPCOTDF,$TPCPBDF,$TPCZPDF] "    
    mv $TPCEXRF $DTD/$TPCEXDF
    mv $TPCOTRF $DTD/$TPCOTDF
    mv $TPCPBRF $DTD/$TPCPBDF
    mv $TPCZPRF $DTD/$TPCZPDF
) 
done

# (II) compute the subject specific deepdive documents
# and move them into the dist directory

SBJDDRF=sbj-$SBJ-dd.pdf
SBJDDDF=sbj-$SBJ-deepdive.pdf
if [ -d dd ]; then (cd dd && make $SBJDDRF && mv $SBJDDRF ..); fi
mv $SBJDDRF $RDD/$SBJDDDF

# (III) compute the subject specific zen presentations documents
# and move them into the dist directory

SBJZPRF=sbj-$SBJ-zp.pdf
SBJZPDF=sbj-$SBJ-zenprese.pdf
if [ -d zp ]; then (cd zp && make $SBJZPRF && mv $SBJZPRF ..); fi
mv $SBJZPRF $RDD/$SBJZPDF

tree ../../dist