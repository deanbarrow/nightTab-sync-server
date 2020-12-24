FROM node:latest

RUN git clone https://github.com/deanbarrow/nightTab-sync-server /sync

WORKDIR /sync

RUN cd /sync && npm install

VOLUME /sync/data

EXPOSE 3000

CMD ["npm", "run", "sync"]