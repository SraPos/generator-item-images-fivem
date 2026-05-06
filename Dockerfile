FROM node:18-alpine

RUN apk add --no-cache python3

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

EXPOSE 7860

CMD ["npm", "start"]
