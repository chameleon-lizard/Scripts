#!bin/bash

echo "Please, provide a link to a Youtube Music album."

read -r LINK

echo "What will be the name of the album's directory?"

read -r DIRECTORY

if [ "$LINK"!="" ]
then
    youtube-dl --ignore-errors --extract-audio --audio-format mp3 $LINK

    mkdir $DIRECTORY

    while [ $(ls | grep ".mp3" | wc -l) -ne 0 ]
    do
        FILE="$(ls | grep ".mp3" | head -n 1)"

        DESTINATION="$DIRECTORY/${FILE%-*}.mp3"
        mv "$FILE" "$DESTINATION"
    done
else
    echo "No link - no music."
fi
