FROM nginx:stable
COPY nginx.conf mime.types blockips.conf /etc/nginx/
RUN sed -i '/daemon off;/d' /etc/nginx/nginx.conf
RUN sed -i 's/{{port}}/8080/g' /etc/nginx/nginx.conf
RUN sed -i 's/$host/$host:8080/g' /etc/nginx/nginx.conf
RUN sed -i 's/{{nameservers}}/127.0.0.11/g' /etc/nginx/nginx.conf
RUN sed -i 's/{{env "FECFILE_WEB_API"}}/http:\/\/api:8080/g' /etc/nginx/nginx.conf