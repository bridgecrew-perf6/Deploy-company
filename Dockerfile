FROM node:alpine

#Install some dependencies

WORKDIR /usr/app

RUN apk add git

RUN npm install npm@8.1.0 -g

RUN git clone https://github.com/mojahid-belaman/Company-Client-Side

RUN cd Companies-Manager-Front-end && npm install

RUN export NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /usr/app/Company-Client-Side

EXPOSE 8081

CMD ["npm", "run", "serve"]