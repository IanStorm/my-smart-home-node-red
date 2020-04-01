# My Smart Home - Node-RED


## Development
1. Install *Docker*
2. Clone this repository.
2. `cd` inside the cloned folder.
2. Build the Docker image: Run `docker build -t my-smart-home-node-red .`
2. Create a Docker instance:
	* On Windows run `docker run -i -t -p 1880:1880 -v ${PWD}:/data my-smart-home-node-red`
2. Open any browser and enter `http://localhost:1880`.
2. Start coding, changes will be reflected in your local machine.
