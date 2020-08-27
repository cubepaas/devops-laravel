FROM registry.cn-hangzhou.aliyuncs.com/link-cloud/php-composer:latest
COPY ./ /root/cubepaas
WORKDIR /root/cubepaas
RUN chmod -R 777 bootstrap storage
CMD ["php", "artisan", "serve", "--host=0.0.0.0"]
