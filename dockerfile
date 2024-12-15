# Use an official nginx image as the base
FROM nginx:alpine

# Copy built Hugo site to Nginx's default public directory
COPY public /usr/share/nginx/html

# Optional: Copy custom nginx configuration if needed
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 8020
EXPOSE 80

# The nginx image already has the CMD to start nginx, so no need to specify