# Используем официальный образ PHP
FROM php:7.4-fpm

# Устанавливаем необходимые пакеты
RUN apt-get update && apt-get install -y nginx

# Копируем конфигурационный файл для Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем файлы приложения в рабочую директорию
COPY index.php /var/www/html/index.php

# Открываем порт 8000
EXPOSE 8000

# Запускаем Nginx и PHP-FPM
CMD service nginx start && php-fpm