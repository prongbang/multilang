FROM node:9.5.0-alpine

RUN mkdir /multilang
ADD . /multilang
WORKDIR /multilang

COPY package.json /multilang
RUN npm install
COPY . /multilang
EXPOSE 3000
CMD ["npm", "start"]

# RUN npm install -g --unsafe-perm strongloop 

# RUN npm install loopback-connector-mongodb --save