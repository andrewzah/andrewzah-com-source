docker-build:
  nix-build personal-site-docker.nix
  docker load < ./result

docker:
  just docker-build
  just docker-push

docker-push:
  docker push andrewzah/personal_site:latest
