#!/usr/bin/env bash

## iterate through each file whose name ends in 'wav'
## saving it as $file. ~ is your $HOME directory
for file in PATH To wav files/*wav
do
    ## basename will remove the path (~/Desktop/My_pictures) and also
    ## remove the extension you give as a second argument    
    name="$(basename "$file" .wav)"

    ## create the directory, the -p means it will create 
    ## the parent directories if needed and it won't complain
    ## if the directory exists.
    mkdir -p PATH To wav files/"$name"

    ## copy the file to the new directory
    mv "$file" PATH To wav files/"$name"
done
