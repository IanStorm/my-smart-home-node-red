FROM nodered/node-red:4.0.2-minimal

ENV TZ="Europe/Berlin"

# ⬇ Install Node-RED dependencies
COPY ./contrib/ ./contrib/
COPY .npmrc .
COPY package.json .
RUN npm install --only=production

# ⬇ Copy stuff see .dockerignore (for simplicity some stuff is copied twice)
COPY ./ /data/
