FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app/21i_1113_frontend
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 1113
RUN chown -R node /usr/src/app/21i_1113_frontend
USER node
CMD ["npm", "start"]
