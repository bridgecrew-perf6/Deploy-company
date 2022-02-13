FROM node:16

#Install some dependencies

WORKDIR /usr/app

RUN npm install npm@8.1.0 -git

RUN git clone https://github.com/mojahid-belaman/Company-Client-Side

RUN cd Company-Client-Side && npm install

RUN export NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /usr/app/Company-Client-Side

EXPOSE 8081

CMD ["npm", "run", "serve"]