#!/bin/bash

sujeto=$1   #"PH105_419"
num=$2      #"5"

pes="/misc/arwen/XXXXX/niigui/$sujeto"
c1="Cor01*"
c2="Cor02*"
c3="Cor03*"
c4="Cor04*"
c5="SPG*"

f1=`echo  $pes/$c1`
f2=`echo  $pes/$c2`
f3=`echo  $pes/$c3`
f4=`echo  $pes/$c4`
f5=`echo  $pes/$c5`

dir_nuevo='/misc/charcot/santosg/azalea_pymvpa'
folder="data$num"

pat1="$dir_nuevo/$folder/Azalea2017/sub001"

mkdir -p $pat1/BOLD/task001_run001
cp $f1 $pat1/BOLD/task001_run001/bold.nii.gz

mkdir -p $pat1/BOLD/task001_run002
cp $f2 $pat1/BOLD/task001_run002/bold.nii.gz

mkdir -p $pat1/BOLD/task001_run003
cp $f3 $pat1/BOLD/task001_run003/bold.nii.gz

mkdir -p $pat1/BOLD/task001_run004
cp $f4 $pat1/BOLD/task001_run004/bold.nii.gz

mkdir -p $pat1/anatomy
cp $f5 $pat1/anatomy/anat.nii.gz
