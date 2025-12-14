FROM php:8.1-cli

# Copy API files
COPY api/ /app/api/

# Copy required dependencies (function folder)
COPY function/ /app/function/

# Set working directory
WORKDIR /app

# Expose port (Railway sets $PORT)
EXPOSE $PORT

# Start PHP built-in server
CMD ["php", "-S", "0.0.0.0:$PORT", "api/index.php"]
