#!/bin/sh

export GIT_ACCOUNT=
export GIT_REPO=
-- clone repo
git clone https://github.com/$GIT_ACCOUNT/$GIT_REPO.git
cd $GIT_REPO
-- Remove the history from 
rm -rf .git

-- add .gitignore
touch .gitignore

-- recreate the repos from the current content only
git init
git add .
git commit -m 'Initial commit'

-- push to the github remote repos ensuring you overwrite history
git remote add origin https://github.com/$GIT_ACCOUNT/$GIT_REPO.git
git push --mirror --force

