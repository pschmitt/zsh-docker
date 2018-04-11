DOCKER_HUB_REPO := zshusers/zsh-$${VERSION\#zsh-}
DOCKER_HUB_TAG ?= latest

require-%:
	@: $(if $(${*}),,$(error $* variable must be set))

build: require-DOCKER_HUB_REPO require-DOCKER_HUB_TAG require-VERSION
	docker build --tag $(DOCKER_HUB_REPO):$(DOCKER_HUB_TAG) --build-arg ref=$(VERSION) .

deploy: require-DOCKER_HUB_REPO require-DOCKER_HUB_TAG require-DOCKER_HUB_USER require-DOCKER_HUB_PASS
	echo $(DOCKER_HUB_PASS) | docker login -u $(DOCKER_HUB_USER) --password-stdin
	docker push $(DOCKER_HUB_REPO):$(DOCKER_HUB_TAG)
