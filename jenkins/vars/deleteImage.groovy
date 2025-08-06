def call(DOCKER_REGISTRY, IMAGE_NAME, IMAGE_TAG) {
    sh "docker rmi ${DOCKER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG} || true"
}
