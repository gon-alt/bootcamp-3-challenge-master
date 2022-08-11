FROM node:14-alpine

LABEL manteiner="gonzaloguido2@gmail.com"
LABEL project=node_app

WORKDIR /app

COPY /hello-bootcamp ./

RUN npm install

COPY . .

EXPOSE 4000
USER node
CMD ["npm","start"]