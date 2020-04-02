# My Smart Home - Node-RED


## How to use?
1. Install *Docker*
2. Authenticate against GitHub Docker registry: Run `cat ./credentials/github-pwd.txt | docker login docker.pkg.github.com --password-stdin -u <USERNAME>`
	* Recommendation: Use a Personal Access Token instead of our password
2. Get the Docker image: Run `docker pull docker.pkg.github.com/ianstorm/my-smart-home-node-red/docker:latest`
2. Start the container: Run `docker run -i -t --env-file ./credentials/docker-env.list -p 1880:1880 docker.pkg.github.com/ianstorm/my-smart-home-node-red/docker:latest`
	* `docker-env.list` is expected to contain `NODE_RED_CREDENTIAL_SECRET=your_secret_goes_here`


## How to develop?
1. Install *Docker*
2. Clone this repository.
2. `cd` inside the cloned folder.
2. Build the Docker image: Run `docker build -t my-smart-home-node-red .`
2. Create a Docker instance:
	* On Windows run `docker run -i -t -p 1880:1880 -v ${PWD}:/data my-smart-home-node-red`
2. Open any browser and enter `http://localhost:1880`.
2. Start coding, changes will be reflected in your local machine.
