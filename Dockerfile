# Specify a image
FROM node:16-alpine

# Specify a workdir
WORKDIR /usr/app

# Handle dependencies
COPY ./package.json .
RUN yarn install
COPY ./ ./

# Run docker
CMD ["yarn", "dev"]

