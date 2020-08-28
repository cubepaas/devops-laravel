FROM registry.cn-hangzhou.aliyuncs.com/link-cloud/php-composer:latest
COPY ./ /root/cubepaas
WORKDIR /root/cubepaas
RUN chmod -R 777 storage && chmod -R 777 bootstrap/cache
CMD ["/bin/bash","-c", "php artisan key:generate && php artisan serve --host=0.0.0.0 --port=8001"]
