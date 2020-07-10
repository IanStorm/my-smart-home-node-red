# My Smart Home - Node-RED

[![GitHub Actions](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FIanStorm%2Fmy-smart-home-node-red%2Fbadge&style=flat&label=build&logo=none)](https://actions-badge.atrox.dev/IanStorm/my-smart-home-node-red/goto)
[![dependencies Status](https://david-dm.org/ianstorm/my-smart-home-node-red/status.svg)](https://david-dm.org/ianstorm/my-smart-home-node-red)
[![devDependencies Status](https://david-dm.org/ianstorm/my-smart-home-node-red/dev-status.svg)](https://david-dm.org/ianstorm/my-smart-home-node-red?type=dev)
[![Docker Pulls](https://img.shields.io/docker/pulls/ianstorm/my-smart-home-node-red)](https://hub.docker.com/r/ianstorm/my-smart-home-node-red)
[![Docker Stars](https://img.shields.io/docker/stars/ianstorm/my-smart-home-node-red)](https://hub.docker.com/r/ianstorm/my-smart-home-node-red)

Smart Home project for **private purposes**.
Unifies the management of various device types like smart plugs, smart radiator controls, robotic vacuum cleaner, etc.

**🐳 Make sure you have installed *Docker*.**

See how to put this repo in action at [IanStorm/my-smart-home-ras-pi](https://github.com/IanStorm/my-smart-home-ras-pi).


## How to use in "production"? 👨‍💼 👩‍💼
1. Follow ["How to get a pre-built Docker image?"](#-how-to-get-a-pre-built-docker-image-☁️)
2. Ensure `./credentials/docker-env.list` exists. See ["a word on docker-env.list"](#-a-word-on-docker-env.list-📝).
2. Start a Docker instance:
```
$	docker run --rm -i -t --network host -p 1880:1880 --env-file ./credentials/docker-env.list ianstorm/my-smart-home-node-red:latest
```


## How to develop, i.e. how to change the flows? 👨‍💻 👩‍💻

Make sure you have installed *Visual Studio Code*.

1. Clone this repository.
2. `cd` inside the cloned folder.
3. In `settings.js` set `disableEditor: false` (instead of `true`).
4. Build the Docker image: Run the vscode task `build`.
5. Ensure `./credentials/docker-env.list` exists. See ["a word on docker-env.list"](#-a-word-on-docker-env.list-📝).
6. Start a Docker instance:
	* On Windows:
```
$	docker run --rm -i -t -p 1880:1880 -v ${PWD}:/data --env-file ./credentials/docker-env.list my-smart-home-node-red
```
7. Open any browser and enter `http://localhost:1880`.
8. Start coding, changes will be reflected in your local machine.


## Appendix


### How to get a pre-built Docker image? ☁️

Get the latest Docker image from Docker Hub:
```
$	docker pull ianstorm/my-smart-home-node-red:latest
```


### A word on `docker-env.list` 📝
The file needs to have the following content:
```
NODE_RED_CREDENTIAL_SECRET=your_secret_goes_here
```
⚠️ Make sure to keep the secret otherwise the flows cannot be decoded/decrypted anymore.
