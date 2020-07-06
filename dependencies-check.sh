#!/usr/bin/env bash

# get the relevent git commands
latestComposerCommit=$(git diff master@{1} master composer.json);
latestPackageJsonCommit=$(git diff master@{1} master package.json);

# do a check to see if either the package.json file or composer.json has been updated.
    if [[ "$latestComposerCommit" ]];
    then
    composer install
    fi
    if [[ "$latestPackageJsonCommit" ]];
    then
    npm install
    fi