FROM node:lts-buster

RUN mkdir /app

RUN npm i -g @nestjs/cli


RUN yarn install

CMD ["yarn","start:debug"]
