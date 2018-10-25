FROM node:10-alpine

#
# Healthcheck
#
RUN apk add --no-cache curl
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
  CMD curl -f http://localhost:8000/_version || exit 1

#
# Install parsoid
#
ARG PARSOID_VERSION=0.9.0
ADD https://github.com/wikimedia/parsoid/archive/v${PARSOID_VERSION}.tar.gz /tmp/a.tar.gz
RUN tar -xf /tmp/a.tar.gz -C /tmp/ &&\
      rm /tmp/a.tar.gz &&\
      mv /tmp/parsoid-${PARSOID_VERSION} /srv/parsoid
WORKDIR /srv/parsoid

# Install dependencies of parsoid
RUN apk add --no-cache --virtual .build-deps \
      git make gcc g++ python
RUN npm install lodash && \
      npm install --production
RUN apk del .build-deps

#
# Config
#
COPY config.yaml .
ENV NODE_ENV=production
EXPOSE 8000
CMD ["node", "bin/server.js"]
