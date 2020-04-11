FROM node:10.20.0-alpine3.9

RUN mkdir -p /frontend/

WORKDIR /frontend/
ADD . /frontend/

RUN npm i -g npm && npm install && npm run build

ENV HOST 0.0.0.0
ENV PORT 8080
EXPOSE 8080

CMD [ "npm", "run", "start" ]
