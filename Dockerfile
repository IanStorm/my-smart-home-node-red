# ⬇️ Unlike Node.js 20 & 22, 18 does not get stuck during `npm i` on ARMv7
# ⬇️ 🔗 https://github.com/nodejs/docker-node/issues/2077 https://github.com/nodejs/docker-node/issues/1946
FROM nodered/node-red:4.0.2-20-minimal

ENV TZ="Europe/Berlin"

# ⬇ Install Node-RED dependencies
COPY ./contrib/ ./contrib/
COPY .npmrc .
COPY package.json .
RUN npm install --omit=dev

# ⬇ Copy stuff see .dockerignore (for simplicity some stuff is copied twice)
COPY ./ /data/
