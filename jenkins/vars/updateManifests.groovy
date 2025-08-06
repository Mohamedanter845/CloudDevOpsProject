def call(DOCKER_REGISTRY, IMAGE_NAME, IMAGE_TAG) {
    sh "sed -i 's|image:.*|image: ${DOCKER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}|' backend-deployment.yaml"
}
