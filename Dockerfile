# Use Node.js 16 Alpine as base image
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install --production

# Copy all other project files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the server with index.js
CMD ["node", "index.js"]

