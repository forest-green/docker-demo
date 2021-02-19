# FROM keymetrics/pm2:latest-alpine
FROM node:latest

# 执行命令，创建文件夹
RUN mkdir -p /home/nodeDemojs

# Bundle APP files
COPY ./src /home/nodeDemojs


# cd到 /home/nodeNestjs
WORKDIR /home/nodeDemojs


# 容器启动时执行的命令，类似npm run start
CMD ["node", "/home/nodeDemojs/app.js"]