pipeline {
    environment {
    registry = "shawnbat/my-simple-webapp"
    registryCredential = ‘dockerhub’
}
    agent {
        docker { image 'node:7-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
