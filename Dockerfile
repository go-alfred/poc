FROM node:12

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN \
  npm install --silent && \
  npm cache clean --force --silent

COPY . .

EXPOSE 3000
CMD node /app/src/bot.js
