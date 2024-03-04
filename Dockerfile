
FROM node:12-alpine
WORKDIR /cicd
COPY ./package.json /cicd/package.json
RUN npm install 
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]