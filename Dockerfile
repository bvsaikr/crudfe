FROM node:20-alpine AS build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
# Serve Application using Nginx Server
FROM nginx:alpine
COPY --from=build /app/dist/angular-frontend/ /usr/share/nginx/html
EXPOSE 80
