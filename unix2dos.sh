#!/bin/bash
for var in "$@"
do
        if [[ $(file -b $var) == *"ASCII text"* ]];then
                if [[ $(cat -vT $var) == *"^M"* ]]; then
                        echo "This is already a DOS file!"
                else
                        echo "This is a Unix file.Starting the conversion.."
                        sed -i -e 's/\r*$/\r/' $var
                        echo "Done."
                fi
        else
                echo "This isn't a text file."
        fi
done
