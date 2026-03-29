FROM node:18

WORKDIR /app

COPY app/ .

# Fix network issue
RUN npm config set registry http://registry.npmjs.org/
RUN npm config set fetch-retries 5
RUN npm config set fetch-retry-mintimeout 20000
RUN npm config set fetch-retry-maxtimeout 120000

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]