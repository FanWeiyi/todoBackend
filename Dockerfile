FROM node:14
COPY ./ /app
WORKDIR /app
RUN npm i -g pnpm && pnpm install && pnpm build

FROM nginx
RUN mkdir /app
COPY --from=0 /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf