#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# Confugure author details
git config --global user.email "shubham.sharma.17@outlook.com"
git config --global user.name "Shubham Sharma"

git config --global credential.helper 'store --file ~/.my-credentials'
printf "protocol=https\nhost=github.com\nusername=shubhamsharma11\npassword=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\n" | git credential-store --file ~/.my-credentials store


# Initialized Git repository
git init
git add -A
git commit -m 'deploy'
git branch -M main

# Setup remote origin 
git remote add origin https://@github.com/shubhamsharma11/shubhamsharma11.github.io.git

# https://github.com/shubhamsharma11/shubhamsharma11.github.io.git

git remote set-url origin https://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@github.com/shubhamsharma11/shubhamsharma11.github.io.git

#https://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@github.com/shubhamsharma11/shubhamsharma11.github.io.git

# if you are deploying to https://<USERNAME>.github.io
git push origin main
# git@github.com:shubhamsharma11/shubhamsharma11.github.io.git main 
# https://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@github.com/shubhamsharma11/shubhamsharma11.github.io.git
# https://$(github_pat)@github.com/shubhamsharma11/shubhamsharma11.github.io.git

cd -
