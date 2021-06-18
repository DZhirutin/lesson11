pipline {
    agent { docker { image 'node:14-alpane'} }
    stages {
        stage('Test') {
            steps {
                echo "Version node"
                sh 'node --version'
            }
        }
    }
}