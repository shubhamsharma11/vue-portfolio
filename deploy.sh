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

# Initialized Git repository
git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f https://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@github.com/shubhamsharma11/shubhamsharma11.github.io.git main
# git@github.com:shubhamsharma11/shubhamsharma11.github.io.git main 
# https://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@github.com/shubhamsharma11/shubhamsharma11.github.io.git
# https://$(github_pat)@github.com/shubhamsharma11/shubhamsharma11.github.io.git

cd -
