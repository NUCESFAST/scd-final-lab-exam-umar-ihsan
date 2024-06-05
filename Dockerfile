FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app/21i_1113/backend
COPY ./* .!client/*
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3113
RUN chown -R node /usr/src/app/21i_1113/backend
USER node
CMD ["npm", "start"]
