# Use the official Node.js image as the base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install --legacy-peer-deps

# Copy the rest of the application code
COPY . .

# Expose the app's port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
