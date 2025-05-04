#!/bin/bash

# insert here the topic numbers of the subject specific topics  
# each topic gathers teh respective dopcuments in a dir 
# folloqing the pattern "tpc-00.name" where name is a
# 7bit identifier without any whitespaces

SBJ="00"
TPCS="00"

# create the distribution tree structure:
(cd ../../ && bin/gendistbase.sh)

SBJP=`pwd`;
SBJD=`basename $SBJP`;
LFP=`dirname $SBJP`;
LFD=`basename $LFP`;
DD="dist"
RDD="../../$DD/$LFD/$SBJD"

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

    echo "moving [$TPCEXRF, $TPCOTRF, $TPCPBRF, $TPCZPRF] \n to $DTD/[$TPCEXDF,$TPCOTDF,$TPCPBDF,$TPCZPDF] "    
    mv $TPCEXRF $DTD/$TPCEXDF
    mv $TPCOTRF $DTD/$TPCOTDF
    mv $TPCPBRF $DTD/$TPCPBDF
    mv $TPCZPRF $DTD/$TPCZPDF

) 
done

SBJDDRF=sbj-$SBJ-dd.pdf
SBJDDDF=sbj-$SBJ-deepdive.pdf
if [ -d dd ]; then (cd dd && make $SBJDDRF && mv $SBJDDRF ..); fi
mv $SBJDDRF $RDD/$SBJDDDF

SBJZPRF=sbj-$SBJ-zp.pdf
SBJZPDF=sbj-$SBJ-zenprese.pdf
if [ -d zp ]; then (cd zp && make $SBJZPRF && mv $SBJZPRF ..); fi
mv $SBJZPRF $RDD/$SBJZPDF

tree ../../dist