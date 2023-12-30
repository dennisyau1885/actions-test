all: build test release

build:
	echo building
	docker build -t reverse .

test:
	echo testing
	rm test.txt.out || true
	docker run -u $(id -u):$(id -g) -v ./:/app reverse test.txt
	grep olleh test.txt.out

scan:
	echo scanning
	docker images reverse

release:
	echo releasing
