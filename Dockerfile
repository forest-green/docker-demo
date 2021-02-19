# FROM keymetrics/pm2:latest-alpine
FROM node:latest

# 执行命令，创建文件夹
RUN mkdir -p /home/nodeDemojs

# Bundle APP files
COPY ./docker-demo /home/nodeDemojs
# COPY package.json .
# COPY pm2.json .

# cd到 /home/nodeNestjs
WORKDIR /home/nodeDemojs

# Install app dependencies
# ENV NPM_CONFIG_LOGLEVEL warn
# RUN npm install --production
# RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]

# Show current folder structure in logs
# RUN ls -al -R

# CMD [ "pm2-runtime", "start", "pm2.json" ]
# ENTRYPOINT ["sh", "/usr/local/bin/docker-entrypoint.sh"]
# CMD [ "npm run start", "package.json" ]

# 容器启动时执行的命令，类似npm run start
CMD ["node", "/home/nodeDemojs/src/app.js"]