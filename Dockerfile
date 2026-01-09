FROM nodered/node-red:4.1.3-20-minimal

ENV TZ="Europe/Berlin"

# ⬇ Install Node-RED dependencies
COPY ./contrib/ ./contrib/
COPY .npmrc .
COPY package.json .
RUN npm install --omit=dev

# ⬇ Copy stuff see .dockerignore (for simplicity some stuff is copied twice)
COPY ./ /data/
