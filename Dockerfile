FROM nodered/node-red:1.0.4

ENV TZ="Europe/Berlin"

COPY .npmrc .
# Copy package.json to the WORKDIR so npm builds all
# of your added modules for Node-RED
COPY package.json .
RUN npm install --only=production

# Copy _your_ Node-RED project files into place
COPY settings.js /data/settings.js
COPY flows_cred.json /data/flows_cred.json
COPY flows.json /data/flows.json

# Start the container normally
CMD ["npm", "start"]
