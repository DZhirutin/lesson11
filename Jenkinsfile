pipeline {
    agent { docker { image 'dzhirutin/my-repo:build-1.0' } }
     
    stages {
        stage ('git') {
            steps {
                git 'https://github.com/DZhirutin/lesson11.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn --version'
                sh 'mvn package'
            }
        }
        stage('Make docker image') {
            steps {
                echo "Docker image make...."
            }
        }
        stage('Run docker image') {
            steps {
                echo "Run docker image...."
            }
        }
        
    }
}