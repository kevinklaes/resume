#!/bin/bash


echo "Turning md into html and pdf"
pandoc Resume.md -o Resume.html -c http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css -c style.css -T "Kevin Klaes"
pandoc Resume.md -o Resume.pdf -V geometry:"top=2cm, bottom=1.5cm, left=3cm, right=3cm"

pandoc References.md -o References.html -T "Kevin Klaes" -c http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css -c style.css
pandoc References.md -o References.pdf -V geometry:"top=2cm, bottom=1.5cm, left=4cm, right=4cm"

if [ -f deploy ]
    then
        echo 'Deploying...'
        bash deploy
fi
