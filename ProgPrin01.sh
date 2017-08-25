#!/bin/bash

pat1="/misc/arwen/XXXXX/niigui/"
ls -1 $pat1 >   temporal

lista=`cat temporal | grep -E "(PH|PM)"`

#echo $lista

k=1
for fil in $lista
do 
   echo $fil, $k
   ./crea_sub001.sh $fil $k
   let k=$k+1
done

