#!/bin/bash

if [ "$*" ]
then
    num=$(echo "$*" | sed -r 's/:.*//')
    gpaste-client select $num
else
    gpaste-client --oneline
fi	


