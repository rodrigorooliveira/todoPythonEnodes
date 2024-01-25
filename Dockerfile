FROM node:12-alpine
WORKDIR /app
COPY package.json .
RUN apk add --no-cache python2 g++ make
RUN yarn install --production
CMD ["node", "src/index.js"]
COPY  . .
EXPOSE 3000
