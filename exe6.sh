#!/bin/bash

# Scenario 1: initializing and configuring a New Repository

mkdir -p  exercise6
cd /home/pegita/Desktop/exercise6

git init
git config --global user.name "pegita"
git config --global user.email "pegah.kakvand@yahoo.com"
touch README.md
echo "this is readme initial content wrote by pegah kakvand" >> README.md
#git branch -m main
#git remote add origin git@github.com/Pegita/exercise6.git
git add README.md
git commit -m "Initial commit"

# Scenario 2: Creating and switching to a New Branch
git branch feature-branch
git checkout feature-branch
touch feature.txt
echo "This is some content for this file wrote by pegah kakvand" >> feature.txt
git add feature.txt
git commit -m "Add feature.txt to feature-branch"

# Scenario 3: using Git blame to identify changes
#touch app.py
git add app.py
git commit -m "Add file app.py done."
git blame app.py -L /process_data/
var=$(git rev-parse --short HEAD 2>&1)
git show $var

# Scenario 4: cleaning up untracked files
git clean -n
git clean -f

# Scenario 5: setting up SSH for GitHub
ssh-keygen -t rsa -b 4096 -C "pegah.kakvand@yahoo.com"
eval "(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
# Manually add the SSH key to your GitHub account
echo "please add the bellow SSH key to your GitHub account:"
cat ~/.ssh/id_rsa.pub

read -p "press ENter after you have done"

ssh -T git@github.com

# Scenario 6: pushing a branch to a remote repository
git checkout feature-branch
git add .
git commit -m "Pushing feature_branch"
git remote add origin git@github.com:Pegita/exercise6.git
git push -u origin feature-branch

# Scenario 7: merging a branch into main
git checkout main
git merge feature-branch
git push -u origin main

