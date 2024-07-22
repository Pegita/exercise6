#!/bin/bash


ssh-keygen -o -t rsa -C "pegah.kakvand@yahoo.com"
#echo "/home/pegita/Desktop/exercise6/id_rsa_2"
eval "$(ssh-agent -s)"

ssh-add id_rsa_2.pub
#cd ~/.ssh/
chmod 400 /id_rsa_2
echo "please add "
cat id_rsa_2.pub
read -p "ENTER"

ssh -T git@github.com
