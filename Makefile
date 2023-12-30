all: build test release

build:
	echo building
	docker build -t reverse .

test:
	echo testing
	rm test.txt.out || true
	docker run -v ./:/app -it reverse test.txt
	grep olleh test.txt.out

scan:
	echo scanning

release:
	echo releasing
