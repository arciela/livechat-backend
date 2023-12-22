# Use an official Node runtime as a parent image
FROM node:21-alpine

ENV NODE_ENV production

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm ci --only=production
RUN npm cache clean --force

# Bundle your app's source code inside the Docker image
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
