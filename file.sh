#!bin/bash

###looking for exist file&Directory, if doesn't exist create file&Directory

if [ -f "$1" ] ###$1=file_name
then
  echo "File $1 exist"
elif [ -d "$2" ] ###$2=Directory_name ###looking for exists Directory 2
then
  echo "Dicrectory $2 exists"
  touch $2/$1  
else
  echo "File $1 doesn't exist"
  touch $1 ###if file doesn't exist, create file 1
  echo "Folder doesn't exist either" 
  mkdir $2  ###if Directory doesn't exist create Directory 2
fi
