FROM nginx-php5

ADD . /usr/share/nginx/html
RUN chmod -R 777 /usr/share/nginx/html/Application
# Expose the container port
EXPOSE 3000

CMD service php5-fpm start && nginx -g "daemon off;"
