def call(DOCKER_REGISTRY, IMAGE_NAME, IMAGE_TAG) {
    sh "docker build -t ${DOCKER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG} ."
}
