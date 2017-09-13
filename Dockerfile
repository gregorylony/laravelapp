FROM lucacri/laravelcaddy:latest

MAINTAINER "Luca Critelli" <lucacri@gmail.com>

RUN mkdir -p /var/www
COPY . /var/www
RUN chown -R www-data:www-data /var/www/
RUN rm /var/www/bootstrap/cache/config.php > /dev/null 2>&1 || true
RUN rm /var/www/.env > /dev/null 2>&1 || true
