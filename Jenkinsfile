pipeline {
     agent any
        environment {
        AWS_ACCESS_KEY_ID     = credentials('dockerhub')
    }
    stages {
        stage('Example stage 1') {
            steps {
                echo "Running ${env.AWS_ACCESS_KEY_ID} 
            }
        }
        stage('Example stage 2') {
            steps {
               sh 'printenv' 
            }
        }
    }
}
