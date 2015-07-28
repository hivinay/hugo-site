#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project. 
hugo # if using a theme, replace by `hugo -t <yourtheme>`
echo -e "\033[0;32mSuccessfully generated site\033[0m"

# Go To Public folder
cd public
# Add changes to git.
git add -A

echo -e "\033[0;32mAdded changes to GitHub Pages repo\033[0m"

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Come Back
cd ..
