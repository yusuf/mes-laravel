FROM php:8.2-fpm-alpine

# Install system dependencies
RUN apk add --no-cache openssl mysql-client nodejs npm
RUN docker-php-ext-install pdo pdo_mysql

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www

# Copy existing application directory
COPY . /var/www

# Install PHP and JS dependencies
RUN composer install
RUN npm install && npm run build

CMD php artisan serve --host=0.0.0.0 --port=9000
EXPOSE 9000