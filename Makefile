install: node

node: node.sh
	./node.sh

docker: Dockerfile
	docker build . -t setup

test: docker config.yml
	container-structure-test test --image setup --config config.yml
