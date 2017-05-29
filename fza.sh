#!/bin/bash
somefiles=$(git status --porcelain . | awk '{print $2}' | fzf --no-sort --multi --exit-0 --query "$1")
# All done!
git add -v $somefiles