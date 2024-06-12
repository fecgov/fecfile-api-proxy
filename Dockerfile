FROM nginx:stable
COPY nginx.conf mime.types blockips.conf /etc/nginx/