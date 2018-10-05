DOCKER_IMAGE_NAME=docker-test-image
DOCKER_CONTAINER_NAME=docker-test
PLAYBOOK_CMD=ansible-playbook docker/tests/test.yml -i docker/tests/inventory

.PHONY: build
build:
	docker build ./tests -t $(DOCKER_IMAGE_NAME)

.PHONY: run-container
run-container: build
	@if `docker ps -a | grep -q $(DOCKER_CONTAINER_NAME)`; then \
		make clean; \
	fi
	docker run -d -v ${PWD}:/test/docker \
		--name $(DOCKER_CONTAINER_NAME) \
		--privileged \
		$(DOCKER_IMAGE_NAME) \
		/sbin/init

.PHONY: check
check: run-container
	docker exec -it $(DOCKER_CONTAINER_NAME) $(PLAYBOOK_CMD) --syntax-check

.PHONY: test
test: check
	docker exec -it $(DOCKER_CONTAINER_NAME) $(PLAYBOOK_CMD)

.PHONY: clean
clean:
	-@docker rm -f $(DOCKER_CONTAINER_NAME)

.PHONY: destroy
destroy: clean
	-@docker rmi -f $(DOCKER_IMAGE_NAME)