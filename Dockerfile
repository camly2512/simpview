# Use an official PHP runtime as a base image
FROM php:7.4-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy your PHP files into the container
COPY . /var/www/html

# Expose port 80 to allow access to the web server