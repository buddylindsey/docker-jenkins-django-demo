node {
    try {
        checkout scm

        if (env.BRANCH_NAME == 'master') {
            IMAGE = 'django-demo:latest'
        } else {
            IMAGE = "django-demo:${env.BRANCH_NAME}"
        }

        stage("Build") {
            docker.build(IMAGE, '.')
        }
        stage("Run Tests") {
            sh "docker container run -i --rm --name django-demo $IMAGE python manage.py test"
        }

        // push to ECR
        // Deploy to ECS
        // Cleanup Docker image

    } catch (e) {
        currentBuild.result = "FAILED"
        throw e
    }
}
