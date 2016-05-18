#!/usr/bin/env bash

set -e

echo "Getting unzip, git, & npm packages..."
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
apt-get -y update
apt-get -y install git unzip nodejs

echo "Installing CF cli..."
dpkg -i cf-cli-installer*.deb

echo "Installing UAAC cli..."
gem install cf-uaac

echo "Installing Azure cli..."
npm install azure-cli -g

