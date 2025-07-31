def call() {
    pipeline {
        agent any

        environment {
            IMAGE_NAME = "my-app-image"
            IMAGE_TAG = "v1.0.${BUILD_NUMBER}"
            DOCKER_REGISTRY = "your-dockerhub-username"
        }

        stages {
            stage('Build Image') {
                steps {
                    script {
                        sh 'docker build -t $DOCKER_REGISTRY/$IMAGE_NAME:$IMAGE_TAG .'
                    }
                }
            }

            stage('Scan Image') {
                steps {
                    echo '🔍 Scanning Docker Image (placeholder for security scan)'
                    
                }
            }

            stage('Push Image') {
                steps {
                    script {
                        sh 'docker push $DOCKER_REGISTRY/$IMAGE_NAME:$IMAGE_TAG'
                    }
                }
            }

            stage('Delete Local Image') {
                steps {
                    script {
                        sh 'docker rmi $DOCKER_REGISTRY/$IMAGE_NAME:$IMAGE_TAG || true'
                    }
                }
            }

            stage('Update K8s Manifests') {
                steps {
                    script {
                        sh """
                        sed -i 's|image:.*|image: $DOCKER_REGISTRY/$IMAGE_NAME:$IMAGE_TAG|' backend-deployment.yaml
                        """
                    }
                }
            }

            stage('Push Updated Manifests') {
                steps {
                    script {
                        sh 'git add backend-deployment.yaml && git commit -m "Update image tag" && git push || echo "No changes to commit"'
                    }
                }
            }
        }
    }
}
