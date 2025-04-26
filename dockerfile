# Use the official Node.js v16.17.1 image
FROM node:16.17.1

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on (example: 3000)
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
