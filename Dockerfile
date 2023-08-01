FROM node:14 as build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

FROM node:14-alpine

WORKDIR /app

COPY --from=build /app/index.js ./

RUN npm install --only=production

CMD ["node", "index.js"]

