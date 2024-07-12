#!/bin/bash

git add .

read -p "Enter the commit message: " commitMessage

git commit -m "$commitMessage"

git push
