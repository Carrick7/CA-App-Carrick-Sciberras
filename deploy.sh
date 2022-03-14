# !/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is a production process manager for Node.js witha built-in load balancer
sudo npm install -g pm2
# stop any instance of our application running currently
pm2 stop ExampleApplication
# change directory into folder where application is downloaded
cd ExampleApplication/
# Install application dependencies
npm install
# pm2 save error
sudo pm2 save
# Start the applciation with the process name ExampleApplication using pm2
pm2 start ./bin/www --name ExampleApplication
