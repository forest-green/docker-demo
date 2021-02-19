# FROM keymetrics/pm2:latest-alpine
FROM node

# Bundle APP files
COPY src src/
COPY package.json .
# COPY pm2.json .

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production
# RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]

# Show current folder structure in logs
RUN ls -al -R

# CMD [ "pm2-runtime", "start", "pm2.json" ]
CMD [ "npm run start", "package.json" ]