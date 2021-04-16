#!/bin/bash

sudo chmod -R 777 /home/ec2-user/express-app

# navigate into our working directory
cd /home/ec2-user/express-app

# adding npm and node to our path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#install node modules 
npm install

#start our application 
node app.js > app.out.log 2> app.err.log < /dev/null &
