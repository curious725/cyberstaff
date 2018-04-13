#!/bin/bash

while getopts b:a: option 
do 
 case "${option}" 
 in 
  b) BRANCH=${OPTARG};; 
  a) APP_NAME=${OPTARG};; 
  *)
    echo "An invalid option was received. -a, -b require an argument."
 esac 
done 

if [ -z "$APP_NAME" ]
  then
    heroku git:remote -a calm-fortress-96538
  else
    git remote rm heroku
    heroku git:remote -a $APP_NAME
fi

# If no arguments supplied then master branch is pushed to master heroku branch
if [ -z "$BRANCH" ]
  then
    git push heroku master
  else
    git push heroku $BRANCH:master
fi

heroku run rake db:migrate
