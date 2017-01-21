
FROM node:6.6
MAINTAINER Benjamin Talmard

COPY init_container.sh /bin/

RUN  npm install -g pm2 \
  && mkdir /pm2home \
  && chmod 777 /pm2home \
  && rm -rf /pm2home/logs \
  && ln -s /home/LogFiles /pm2home/logs

RUN apt-get update \
  && apt-get install -y libgtk2.0-0 libgconf-2-4 libasound2 libxtst6 libxss1 libnss3 xvfb

CMD ["/bin/init_container.sh"]