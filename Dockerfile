# Use Node.js version 18
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# The app runs on port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]