FROM node:20-alpine as builder

WORKDIR /app

COPY package.json package-lock.json openapi.yaml ./

RUN npm install

RUN npx @redocly/cli build-docs openapi.yaml --output=docs.html

FROM redocly/redoc

COPY --from=builder /app/docs.html /usr/share/nginx/html/index.html
