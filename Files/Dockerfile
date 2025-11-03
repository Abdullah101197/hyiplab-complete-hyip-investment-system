# Use PHP 7.4 Apache image
FROM php:7.4-apache

# Copy project files into container
COPY . /var/www/html/

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html/

# Expose port 80
EXPOSE 80
