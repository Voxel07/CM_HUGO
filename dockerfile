# Use an official nginx image as the base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy the built Hugo site to the nginx html directory
COPY ./public .

# Optional: Copy custom nginx configuration if needed
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 8020
EXPOSE 8020

# The nginx image already has the CMD to start nginx, so no need to specify