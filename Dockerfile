FROM node:14

WORKDIR /usr/src/app

# Install nodemon globally
RUN npm install -g nodemon

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose port 3000
EXPOSE 3000

# Use nodemon to start the app
CMD ["nodemon", "./app.js"]
