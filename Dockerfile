FROM node:18
RUN apk add --no-cache bash python3 make g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000