#!/bin/bash

if ! [ -f build ]
    then
        mkdir build
        mkdir build/references
fi

echo "Turning md into html and pdf"
pandoc Header.md Resume.md -o build/resume.html -S
pandoc Header.md Resume.md -o build/resume.pdf -V geometry:"top=2cm, bottom=1.5cm, left=3cm, right=3cm"

pandoc Header.md References.md -o build/references/references.html -S 
pandoc Header.md References.md -o build/references/references.pdf -V geometry:"top=2cm, bottom=1.5cm, left=4cm, right=4cm"

echo "Deploying..."
rsync -rvpa --exclude=".*" build/ master:/var/www/html/resume/
