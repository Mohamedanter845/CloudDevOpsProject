def call() {
    sh 'git add backend-deployment.yaml && git commit -m "Update image tag" && git push || echo "No changes to commit"'
}
