# Step 1: Use the official Node.js image
FROM node:18-alpine

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Install development dependencies (like nodemon)
RUN npm install -g nodemon

# Step 6: Copy all backend source code
COPY . .

# Step 7: Expose backend port
EXPOSE 3000

# Step 8: Start the backend in development mode
CMD ["npm", "run", "dev"]
