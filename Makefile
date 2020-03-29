IMG := thedoh/dotfiles-decrypter:latest
DOCKERFILE := Dockerfile

all: push-image build-image

.PHONY: build-image
build-image: $(DOCKERFILE)
	docker build -f $(DOCKERFILE) -t $(IMG) .

.PHONY: push-image
push-image: build-image
	docker push $(IMG)
  
