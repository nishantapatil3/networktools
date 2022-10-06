IMG="nishantapatil3/networktools:latest"

docker-build:
	docker build -t ${IMG} -f Dockerfile .

docker-run:
	docker run -p 8080:80 --rm -it ${IMG} 
