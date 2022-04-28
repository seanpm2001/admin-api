FROM node:16@sha256:a6c217d7c8f001dc6fc081d55c2dd7fb3fefe871d5aa7be9c0c16bd62bea8e0c

ARG GIT_SHA

WORKDIR /usr/src/app

COPY . .

ENV NODE_ENV=production
ENV PORT 4000
ENV GIT_SHA=${GIT_SHA}
EXPOSE ${PORT}

CMD ["npm", "start"]
