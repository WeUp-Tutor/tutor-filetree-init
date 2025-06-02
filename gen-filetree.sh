#!/bin/bash

set -u # 
: "$TUTOR_FOLDER"
echo 'ok'
REPO_PLUGINS='git@github.com:WeUp-Tutor/weup-plugins.git'
REPO_SCRIPTS='git@github.com:WeUp-Tutor/tutor-scripts.git'
REPO_DEFAULT_THEME='git@github.com:WeUp-Tutor/weup-tutor-indigo-release.git'
cd $TUTOR_FOLDER
mkdir -p $TUTOR_FOLDER/plugins
mkdir -p $TUTOR_FOLDER/root 
mkdir -p $TUTOR_FOLDER/scripts
mkdir -p $TUTOR_FOLDER/themes 
mkdir -p $TUTOR_FOLDER/tmp

git clone $REPO_PLUGINS $TUTOR_FOLDER/plugins
git clone $REPO_SCRIPTS $TUTOR_FOLDER/scripts

cd $TUTOR_FOLDER/themes
git clone $REPO_DEFAULT_THEME
cd ~
