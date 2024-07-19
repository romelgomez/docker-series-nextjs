FROM node:20-alpine AS base

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . .

RUN  npx next build 

EXPOSE 3000

ENV PORT 3000

CMD ["npx", "next", "start"]
