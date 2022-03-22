#!/bin/bash
for var in "$@"
do
        if [[ $(file -b $var) == *"ASCII text"* ]];then
                if [[ $(cat -vT $var) == *"^M"* ]]; then
                        echo "This is a DOS file. Starting a conversion.."
                        sed -i 's/\x0D$//' $var
                        echo "Done."
                else
                        echo "This is already a UNIX file!"
                fi
        else
                echo "This isn't a text file."
        fi
done
