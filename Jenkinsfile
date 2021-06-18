pipeline {
    agent { docker { image 'node:14-alpine' } }
    stages {
        stage('build') {
            steps {
                echo "Version node"
                sh 'npm --version'
            }
        }
    }
}