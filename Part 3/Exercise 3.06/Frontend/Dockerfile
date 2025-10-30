FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY ./material-applications/example-frontend .

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    adduser appuser && \
    rm -rf node_modules package-lock.json /tmp/* /root/.npm

USER appuser

CMD [ "serve", "-s", "-l", "5000", "build" ]