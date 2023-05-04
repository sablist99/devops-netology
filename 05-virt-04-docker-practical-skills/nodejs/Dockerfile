FROM node:latest

RUN wget -P /usr/app https://github.com/simplicitesoftware/nodejs-demo/archive/refs/heads/master.zip && \
 cd /usr/app && \
 unzip master.zip

WORKDIR /usr/app/nodejs-demo-master
RUN sed 's/localhost/0.0.0.0/g' app.js | tee app2.js && \
        rm app.js && \
        mv app2.js app.js && \
        npm install
EXPOSE 3000
ENTRYPOINT ["npm"]
CMD ["start"]