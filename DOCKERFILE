# Use the official PHP Apache image
FROM php:7.4-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy your app to the container
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Expose port 80 for web
EXPOSE 80
