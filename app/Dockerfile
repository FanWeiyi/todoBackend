# syntax=docker/dockerfile:1
FROM node:14
WORKDIR /app
COPY ./ /app
RUN yarn install && yarn build

FROM nginx
RUN mkdir /app
COPY --from=0 /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf

# CMD ["node", "src/index.js"]
# EXPOSE 3000