# Specify the base image
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application
COPY . .

# Expose the port your application runs on
EXPOSE 3000

# Define the command to run your application
CMD [ "node", "server.js" ]