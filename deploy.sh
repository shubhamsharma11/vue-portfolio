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
git branch -M main

# Setup remote origin 
git remote add origin https://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@github.com/shubhamsharma11/shubhamsharma11.github.io.git

# https://github.com/shubhamsharma11/shubhamsharma11.github.io.git

#https://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@github.com/shubhamsharma11/shubhamsharma11.github.io.git

# if you are deploying to https://<USERNAME>.github.io
git push origin main
# git@github.com:shubhamsharma11/shubhamsharma11.github.io.git main 
# https://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@github.com/shubhamsharma11/shubhamsharma11.github.io.git
# https://$(github_pat)@github.com/shubhamsharma11/shubhamsharma11.github.io.git

cd -
