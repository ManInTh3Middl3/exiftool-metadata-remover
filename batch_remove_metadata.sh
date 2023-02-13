#!/bin/bash

echo "Enter the directory containing the images: "
read dir

# loop through all image files in the specified directory
for file in $dir/*.[Jj][Pp][Gg] $dir/*.[Jj][Pp][Ee][Gg] $dir/*.[Pp][Nn][Gg] $dir/*.[Ww][Ee][Bb][Pp]; do
  # remove metadata from each file using ExifTool
  exiftool -all= "$file"
done
