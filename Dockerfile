FROM node:lts-alpine3.15

RUN apk add --no-cache --update make

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# COPY . .

EXPOSE 9090


CMD ["sh", "entrypoint.sh"]
