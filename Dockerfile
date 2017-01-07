# Get alphine with node and npm
FROM node:6.9.4

# Create working directory
RUN mkdir -p /app
WORKDIR /app

# Get yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

# Export node environment variables
ARG NODE_ENV
ENV NODE_ENV $NODE_ENV


# Expose port
EXPOSE 3000

# Install dependencies
ENTRYPOINT ["sh", "./entrypoint.sh"]

# Start app
CMD ["npm", "start"]
