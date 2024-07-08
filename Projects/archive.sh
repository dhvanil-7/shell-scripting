#!/bin/bash
#$Revision:001$
#$ Mon, Jul  8, 2024  1:07:04 AM

#Variables
BASE=Projects
DAYS=10
DEPTH=1
RUN=0

# Check if the directory present or not
if [ ! -d $BASE ]
then
    echo "Directory does not exist: $BASE"
fi

# Create archive folder if not present
if [ ! -d $BASE/archive ]
then
    echo "Creating archive directory..."
    mkdir $BASE/archive
fi

Find files larger than 20MB
for i in `find -maxdepth 1 -type f -size +1b`
do
    if [ $RUN -eq 0 ]
    then
        echo "[$(date "%Y-%m-%d %H-%M-%S")] archiving $i => $BASE/archive/$i"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done