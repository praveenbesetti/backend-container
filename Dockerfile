FROM node:18-alpine

WORKDIR /app

# Copy both package.json and package-lock.json
COPY package*.json ./

# Install exact versions from lockfile
RUN npm ci --only=production

# Copy rest of the app
COPY . .

EXPOSE 5000

CMD ["node", "server.js"]
