docker-build:
  docker build . -t andrewzah/personal_site:latest

docker:
  just docker-build
  just docker-push

docker-push:
  docker push andrewzah/personal_site:latest
