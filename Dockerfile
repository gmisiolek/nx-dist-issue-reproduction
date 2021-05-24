FROM node:14

ADD . /app

WORKDIR /app
RUN npm ci --cache .npm --prefer-offline > npminstall.log
RUN npm run build -- nxtest > build.log

CMD ["bash"]
