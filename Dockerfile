### STAGE 1: Build ###
FROM node:12.21.0-alpine AS build
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn
COPY . .
RUN yarn run build-prod

### STAGE 2: Run ###
FROM nginx:1.18.0-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/app/dist/angular-demo /usr/share/nginx/html
