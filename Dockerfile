FROM node::10.13-alpine as node
ENV NODE_ENV production
WORKDIR /app
COPY package.json /app
# COPY ["package.json", "package-lock.json", "npm-shrinkwrap.json*", "./"]
# LABEL Name=primeiro-projeto Version=0.0.0
RUN npm install --silent
COPY . .
RUN npm run build
