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
RUN npm install && npm run dev

EXPOSE 9000
CMD ["php-fpm"]