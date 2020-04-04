# My Smart Home - Node-RED


## How to use in "production"? 👨‍💼 👩‍💼
1. Follow ["How to get a pre-built Docker image?"](#-How-to-get-a-pre-built-Docker-image-☁️)
2. Ensure `./credentials/docker-env.list` exists. See ["a word on docker-env.list"](#-a-word-on-docker-env.list-📝).
2. Start a Docker instance:
```
$	docker run -i -t --env-file ./credentials/docker-env.list -p 1880:1880 docker.pkg.github.com/ianstorm/my-smart-home-node-red/docker:latest
```


## How to develop, i.e. how to change the flows? 👨‍💻 👩‍💻
1. Follow ["How to get a pre-built Docker image?"](#-How-to-get-a-pre-built-Docker-image-☁️)
2. Clone this repository.
3. `cd` inside the cloned folder.
4. Ensure `./credentials/docker-env.list` exists. See ["a word on docker-env.list"](#-a-word-on-docker-env.list-📝).
5. Start a Docker instance:
	* On Windows:
```
$	docker run -i -t --env-file ./credentials/docker-env.list -p 1880:1880 -v ${PWD}:/data docker.pkg.github.com/ianstorm/my-smart-home-node-red/docker:latest
```
6. Open any browser and enter `http://localhost:1880`.
7. Start coding, changes will be reflected in your local machine.


## How to build the Docker image locally? 🐳
1. Clone this repository.
2. `cd` inside the cloned folder.
2. Build the Docker image:
```
$	docker build -t my-smart-home-node-red .
```


## Appendix


### How to get a pre-built Docker image? ☁️
1. Install *Docker*.
2. Create `./credentials/github-pwd.txt`, ensure it contains...
	* ...a GitHub *Personal Access Token* (recommended) OR
	* ...your GitHub *password*
3. Authenticate against GitHub Docker registry:
```
$	cat ./credentials/github-pwd.txt | docker login docker.pkg.github.com --password-stdin -u <USERNAME>
```
4. Get the latest Docker image:
```
$	docker pull docker.pkg.github.com/ianstorm/my-smart-home-node-red/docker:latest
```


### A word on `docker-env.list` 📝
The file needs to have the following content:
```
NODE_RED_CREDENTIAL_SECRET=your_secret_goes_here
```
⚠️ Make sure to keep the secret otherwise the flows cannot be decoded/decrypted anymore.
