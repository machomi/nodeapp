FROM node:12-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
EXPOSE 3000
COPY . /app
RUN ls -la
CMD ["node", "./bin/www"]