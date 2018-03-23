project.name = aws-rekey

pwd := $(shell pwd)
build.dir := $(pwd)/.build
build.filename := $(project.name)
build.file := $(build.dir)/$(build.filename)

dist.dir := $(pwd)/.dist

build:
	go build -o $(GOPATH)/bin/$(project.name) github.com/scottbrown/$(project.name)

test:
	go test $(project.name)

clean:
	rm -rf $(build.dir)
	rm -rf $(dist.dir)

