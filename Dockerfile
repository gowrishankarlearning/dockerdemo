# Use the official Node.js image as the base image
FROM node:latest AS build

# Create and set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 4200

# Define the command to run the application
CMD ["npm", "run", "start"]
