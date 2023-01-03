FROM node:14
COPY ./ /app
WORKDIR /app
RUN mkdir build && touch ./build/1

FROM nginx
RUN mkdir /app
COPY --from=0 /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf