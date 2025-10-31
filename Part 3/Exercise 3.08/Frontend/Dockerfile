FROM node:16-alpine AS build-stage

WORKDIR /usr/src/app

COPY ./material-applications/example-frontend .

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    adduser -D appuser && \
    chown appuser . && \
    rm -rf node_modules package-lock.json /tmp/* /root/.npm
    
FROM nginx:1.19-alpine

COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html