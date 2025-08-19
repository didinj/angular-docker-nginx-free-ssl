# Step 1: Use an official Nginx image as the base
FROM nginx:alpine

# Step 2: Copy Angular build output to Nginx HTML directory
COPY ./dist/your-app-name /usr/share/nginx/html

# Step 3: Copy custom Nginx configuration
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Step 4: Expose port 80 for HTTP traffic
EXPOSE 80

# Step 5: Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
