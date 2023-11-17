# Use an official MySQL base image from Docker Hub
FROM mysql:latest

# Read environment variables from .env file and set them as build ARGs
ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD

# Set environment variables for MySQL configuration
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}

# Copy your custom MySQL configuration files if needed
# COPY ./custom-config-file.cnf /etc/mysql/conf.d/

# Expose the MySQL port (default is 3306)
EXPOSE 3306

# You can add any additional setup or initialization scripts here
# COPY ./init-script.sql /docker-entrypoint-initdb.d/

# Start the MySQL server when the container starts
CMD ["mysqld"]
