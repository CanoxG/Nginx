#Create an Image
FROM nginx:alpine

#Then we copy the file path
COPY ./src/* /usr/share/nginx/html
RUN ls /usr/share/nginx/html

#Then we create a folder for page.html
RUN mkdir /usr/share/nginx/page

#Page folder has't been created yet...
COPY ./page/* /usr/share/nginx/page
RUN ls /usr/share/nginx/page

# And copy the config file that we created
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN ls /etc/nginx/conf.d
RUN ls /usr/share/nginx/page

ENTRYPOINT ["nginx"]
CMD  ["-g", "daemon off;"]