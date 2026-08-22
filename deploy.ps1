$image = "ghcr.io/abcfgm/ci-cd-test:latest"

docker pull $image

docker rm -f ci-cd-app 2>$null

docker run -d `
  --name ci-cd-app `
  $image