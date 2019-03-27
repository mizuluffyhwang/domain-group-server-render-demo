#!/bin/bash

# install sudo
su-
yum install sudo -y
exit

# update every install package 
yum update -y

# install git
yum install git -y

# install nodejs environment
yum install -y gcc-c++ make

# add node 10 package source to repository
curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -

# install nodejs
yum install nodejs -y

# add yarn package source to repository
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg

# install yarn
yum install yarn -y

# create application folder
mkdir web-demo-app
cd web-demo-app

# clone application code repository
git clone https://github.com/mizuluffyhwang/domain-group-server-render-demo.git
cd domain-group-server-render-demo

# install dependencies, build and start up application
yarn && yarn build && yarn start