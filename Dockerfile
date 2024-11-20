FROM node:20


RUN mkdir -p /home/node/www

RUN npm install  -g  i5ting_toc http-server --registry=https://registry.npmmirror.com
COPY . /home/node/www
WORKDIR /home/node/www

RUN ls && ./build.sh
EXPOSE 80

CMD http-server ./preview -p 80 -a 0.0.0.0

