FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm build --prod


FROM ngnix:alpine
COPY --from=node /app/dist/hello_flash /usr/share/ngnix/html
