#!/bin/bash

while read program
do
    sleep 1
    sudo pacman -S  --noconfirm --needed $program
done < only_programs.txt
