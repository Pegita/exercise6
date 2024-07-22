#!/bin/bash


mkdir exercise6
cd /home/pegita/Desktop/exercise6

echo "#exercise6" >>RAEDME.md
git init
git config --global user.name "pegita"
git config --global user.email "pegah.kakvand@yahoo.com"
git branch -m main
git remote add origin https://github.com/Pegita/exercise6.git

#touch README.md
echo "this is readme initial content wrote by pegah kakvand" > README.md
git add README.md
git commit -m "initial commit"

git push -u origin main
