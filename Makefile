install: build/node

build/node: node.sh
	./node.sh
	touch build/node

docker: Dockerfile
	docker build . -t setup

test: docker config.yml
	container-structure-test test --image setup --config config.yml
