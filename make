#!/bin/bash

pandoc Resume.md -o Resume.html -c style.css -c http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css -T "Kevin Klaes"
pandoc Resume.md -o Resume.pdf -V geometry:"top=4cm, bottom=1.5cm, left=3cm, right=3cm"

pandoc References.md -o References.html -T "Kevin Klaes" -c style.css -c http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css
pandoc References.md -o References.pdf -V geometry:"top=4cm, bottom=1.5cm, left=4cm, right=4cm"
