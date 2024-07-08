#!/bin/bash

FU=$(df -H | grep C | awk '{print $6}' | tr -d %)

if [[ FU -lt 80 ]]
then
    echo "Disk space is low. Please perform a cleanup."
else
    echo "Disk space is good."
fi