# Uses node alpine base image
FROM node:alpine

# Creates working directory
WORKDIR '/appl'

# Copies package.json into container
COPY package.json .

# Runs npm install inside container
RUN npm install

# Copies index.js into container (places it in /appl)
COPY . .

# Starts node inside container
CMD [ "npm", "start"]