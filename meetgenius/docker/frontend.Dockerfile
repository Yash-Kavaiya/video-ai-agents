FROM node:20-alpine

WORKDIR /app

# Copy package files
COPY frontend/package.json frontend/package-lock.json ./

# Install dependencies
RUN npm ci

# Copy source code
COPY frontend/ ./

# Build the app
RUN npm run build

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "run", "dev"]