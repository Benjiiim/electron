
FROM node:6.6
MAINTAINER Benjamin Talmard

RUN  npm install -g pm2 \
  && mkdir /pm2home \
  && chmod 777 /pm2home \
  && rm -rf /pm2home/logs \
  && ln -s /home/LogFiles /pm2home/logs

RUN apt-get update \
  && apt-get install -y libgtk2.0-0 libgconf-2-4 libasound2 libxtst6 libxss1 libnss3 xvfb

RUN Xvfb -ac -screen scrn 1280x2000x24 :9.0 &
RUN export DISPLAY=:9.0

CMD ["pm2","</home/site/wwwroot/bin/www> --no-daemon"]
