FROM node:22
RUN  useradd roboshop
RUN  mkdir /home/app ; chown roboshop /home/app
USER roboshop
WORKDIR /home/app
COPY    node_modules node_modules
COPY package.json ./
COPY server.js ./