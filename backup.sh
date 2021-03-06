#!/bin/bash
# Jenkins Configuraitons Directory
whoami
echo "We are HEREEEEEEEEEEEEEE!"
pwd
cd "/var/jenkins_home/"
pwd 
ls -la | grep TEST
ls -la | grep git
echo "Before git!!!!!!!!!!!!!!!!!!"
# Add general configurations, job configurations, and user content
sudo git add -- *.xml jobs/*/*.xml userContent/* ansible/*
# only add user configurations if they exist
if [ -d users ]; then
    user_configs=`ls users/*/config.xml`
if [ -n "$user_configs" ]; then
        sudo git add $user_configs
fi
fi
# mark as deleted anything that's been, well, deleted
to_remove=`git status | grep "deleted" | awk '{print $3}'`
if [ -n "$to_remove" ]; then
    sudo git rm --ignore-unmatch $to_remove
fi
sudo git commit -m "Automated Jenkins commit"
sudo git push -q -u origin master
