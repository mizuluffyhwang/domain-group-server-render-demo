#!/bin/bash

# update every install package 
sudo yum update -y

# install git
sudo yum install git -y

# add node 10 package source to repository
sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -

# install nodejs
sudo yum install nodejs -y

# add yarn package source to repository
sudo curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg

# install yarn
sudo yum install yarn -y

# create application folder
mkdir web-demo-app
cd web-demo-app

# clone application code repository
git clone https://github.com/mizuluffyhwang/domain-group-server-render-demo.git
cd domain-group-server-render-demo

# install nodejs process manager
sudo npm install pm2@latest -g

# install dependencies and build
yarn && yarn build && sudo yarn start

#start up application
sudo pm2 start npm -- start