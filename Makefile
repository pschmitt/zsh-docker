SHELL = /bin/bash
DOCKER_HUB_REPO := zshusers/zsh
DOCKER_HUB_TAG ?= $${VERSION\#zsh-}
VERSION_LATEST ?= unknown

require-%:
	@: $(if $(${*}),,$(error $* variable must be set))

build: require-DOCKER_HUB_REPO require-DOCKER_HUB_TAG require-VERSION require-VERSION_LATEST
	[[ "${VERSION}" == "${VERSION_LATEST}" ]] && \
	docker build --tag $(DOCKER_HUB_REPO):$(DOCKER_HUB_TAG) --tag $(DOCKER_HUB_REPO):latest --build-arg ref=$(VERSION) . || \
	docker build --tag $(DOCKER_HUB_REPO):$(DOCKER_HUB_TAG) --build-arg ref=$(VERSION) .

deploy: require-DOCKER_HUB_REPO require-DOCKER_HUB_TAG require-DOCKER_HUB_USER require-DOCKER_HUB_PASS require-VERSION require-VERSION_LATEST
	echo "$(DOCKER_HUB_PASS)" | docker login -u $(DOCKER_HUB_USER) --password-stdin
	docker push $(DOCKER_HUB_REPO):$(DOCKER_HUB_TAG)
	[[ "${VERSION}" == "${VERSION_LATEST}" ]] && docker push $(DOCKER_HUB_REPO):latest || true
