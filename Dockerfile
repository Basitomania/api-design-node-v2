FROM node:12.9.1-alpine

#Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Copy app source from work directory to container
COPY . .

#RUN npm config set http-proxy http://172.16.10.20:8080
#RUN npm config set https-proxy http://172.16.10.20:8080

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "deploy"]
