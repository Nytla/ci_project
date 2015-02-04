#!/bin/bash
#*******************************************************#
# Create commit UPC for http://github.com/		 		#
#														#
# Autor: zhabskiy.igor@gmail.com						#
# 														#
# Date: 11.12.2012										#
#*******************************************************#

#Come in our project
cd /var/www/htwd.loc/public/

#Initialize git program
git init

#Add in git folder our project
git add .

#Take commit name variable from user
echo -e "\033[1mВведите пожалуйста название коммита:\033[0m";

#Set commit name variable
read COMMIT_NAME

#Create commit
git commit -a -m "${COMMIT_NAME}"

#Add commit in our repository on site github.com 
git remote add "${COMMIT_NAME}" https://github.com/Nytla/ci_project.git

#Push commit in our repository
git push "${COMMIT_NAME}" master