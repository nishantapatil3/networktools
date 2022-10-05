IMG="nishantapatil3/networktools:latest"

docker-build:
	docker build -t ${IMG} -f Dockerfile .

docker-run:
	docker run --rm -it ${IMG}
