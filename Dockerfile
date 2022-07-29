FROM node:16@sha256:4e85818bd0d023d4f9025730dc0640d3d8269e3d1a84ce6365eca8fbad7a3ee9

ARG GIT_SHA

WORKDIR /usr/src/app

COPY . .

ENV NODE_ENV=production
ENV PORT 4000
ENV GIT_SHA=${GIT_SHA}
EXPOSE ${PORT}

CMD ["npm", "start"]
