FROM nginx:alpine

COPY ./src/* /usr/share/nginx/html
RUN ls /usr/share/nginx/html

RUN mkdir /usr/share/nginx/page

#Page folder has't been created yet...
COPY ./page/* /usr/share/nginx/page
RUN ls /usr/share/nginx/page

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN ls /etc/nginx/conf.d
RUN ls /usr/share/nginx/page

ENTRYPOINT ["nginx"]
CMD  ["-g", "daemon off;"]