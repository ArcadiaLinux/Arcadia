#!/bin/bash

echo "Pulling newer files first"
git pull

git add --all .

echo "Enter commit comment: "

read input

git commit -m "$input"

git push -u origin main

echo "Git Push Done"
