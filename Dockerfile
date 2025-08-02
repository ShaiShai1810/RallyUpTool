FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install http-server --save-dev

EXPOSE 8080

CMD ["npx", "http-server", ".", "-p", "8080"]
