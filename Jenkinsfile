pipline {
    agent {
        docker { image 'node:14-alpane'}
    }
    tools {
        docker 'Docker'
    }
    stages {
        stage('Test') {
            steps {
                echo "Version node"
                sh 'node --version'
            }
        }
    }
}