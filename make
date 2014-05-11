#!/bin/bash

if ! [ -f build ]
    then
        mkdir build
        mkdir build/references
fi

echo "Turning md into html and pdf"
pandoc Resume.md -o build/resume.html -S
pandoc Resume.md -o build/resume.pdf -V geometry:"top=2cm, bottom=1.5cm, left=3cm, right=3cm"

pandoc References.md -o build/references/references.html -S 
pandoc References.md -o build/references/references.pdf -V geometry:"top=2cm, bottom=1.5cm, left=4cm, right=4cm"

echo "Deploying..."
rsync -rva build/ master:/var/www/html/resume/
