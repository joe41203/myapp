FROM node:10.20.0-alpine3.9

RUN mkdir -p /frontend/

WORKDIR /frontend/
ADD . /frontend/

RUN apk add curl bash vim
RUN npm i -g npm && npm install && npm run build

ENV HOST 0.0.0.0
ENV PORT 3000
EXPOSE 3000

CMD [ "npm", "run", "start" ]
