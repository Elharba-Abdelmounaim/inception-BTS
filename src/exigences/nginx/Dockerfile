FROM nginx:latest

COPY conf/nginx.conf 	/etc/nginx/nginx.conf

COPY tool/harba.key 	/etc/nginx/ssl/
COPY tool/harba.crt 	/etc/nginx/ssl/

COPY conf/index.html /usr/share/nginx/html/

EXPOSE 80 443
CMD ["nginx" , "-g" , "daemon off;"]
