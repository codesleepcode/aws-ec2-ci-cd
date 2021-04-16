#!/bin/bash

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node


#create our working directory
DIR="/home/ec2-user/express-app"
if [ -d "$DIR"]
then
    echo "${DIR} exists"
fi


