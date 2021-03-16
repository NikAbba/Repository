REGISTRY         := nikabba
NAME             := repository_1
VERSION         := 0.0.1

BASE_IMAGE         := ${REGISTRY}/${NAME}
VERSION_IMAGE   := ${BASE_IMAGE}:${VERSION}




image:

	docker build -f Dockerfile -t ${BASE_IMAGE} .


push:
	docker login -u nikabba -p '0e663d0a-7706-4003-b1d3-52c6ec7febde'
	docker tag ${BASE_IMAGE} ${VERSION_IMAGE}
	docker push ${BASE_IMAGE}
	docker push ${VERSION_IMAGE}
