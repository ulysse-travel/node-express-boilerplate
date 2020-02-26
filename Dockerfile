FROM node:13

WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available
COPY package*.json ./
RUN yarn install
COPY . .
EXPOSE 3000
CMD ["/usr/src/app/entrypoint.sh"]
