#Xvfb -ac -screen scrn 1280x2000x24 :9.0 &
#export DISPLAY=:9.0

pm2 start /home/site/wwwroot/bin/www --no-daemon