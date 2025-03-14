# Build stage
FROM node:18-alpine AS build

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci

# Copy the rest of the application files
COPY . .

# Build the application
RUN npm run build

# Production stage
FROM node:18-alpine AS production

WORKDIR /app

# Copy built application and dependencies from build stage
COPY --from=build /app/.nuxt ./.nuxt
COPY --from=build /app/.output ./.output
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/nuxt.config.* ./
COPY --from=build /app/package*.json ./

# Expose the port the app runs on
EXPOSE 3000

# Set NODE_ENV to production
ENV NODE_ENV=production

# Command to run the application
CMD ["node", ".output/server/index.mjs"]

