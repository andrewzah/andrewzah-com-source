all:
  just static
  just docker

build:
  bash ./build.sh

static:
  just build
  find ./public/posts -name "*.png" -exec rm {} \;
  rsync -arv public/* ../generated_assets

docker:
  just docker-build
  just docker-push

docker-build:
  docker build . -t andrewzah/personal_site:latest

docker-push:
  docker push andrewzah/personal_site:latest
