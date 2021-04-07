FROM node:14
ENV DEBIAN_FRONTEND noninteractive
ENV PORT 42069
WORKDIR /app
COPY package*.json /app
COPY yarn.lock /app
COPY src /app/src
RUN ls -la
RUN yarn install
EXPOSE 42069/tcp
CMD ["npx", "ts-node", "./src/index.ts"]

