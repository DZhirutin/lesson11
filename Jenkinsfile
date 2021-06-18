pipeline {
    agent { docker { image 'dzhirutin/my-repo:build-1.0' } }
     
    stages {
        stage ('Repo git') {
            steps {
                git 'https://github.com/DZhirutin/lesson11.git'
            }
        }
        stage('Build WAR') {
            steps {
                sh 'mvn --version'
                sh 'mvn package'
            }
        }
        stage('Make docker image') {
            steps {
                echo "Docker image make..."
                sh 'docker build -t dzhirutin/my-repo:prod-1.0 .'
            }
        }
        stage('Push docker image') {
            steps {
                echo "Push docker image..."
                sh 'docker push dzhirutin/my-repo:prod-1.0'
            }
        }
        stage('Run docker on Prod') {
            steps {
                echo "Run docker on Prod...."
            }
        }
        
    }
}