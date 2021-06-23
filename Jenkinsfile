pipeline {
    agent { 
        /*dockerfile {
            additionalBuildArgs "--build-arg jenkinsUserId=\$(id -u jenkins)"*/
        docker { 
            image 'dzhirutin/my-repo:build-1.0' 
            args '-u root:root'
            } 
        }
     
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
                script {
                      def shellCmd = "bash ./server-cmds.sh"
                    /*def dockerComposeCmd = "docker-compose -f docker-compose.yaml up --detach"*/
                    /*def dockerCmd = 'docker run -d -p 8083:8080 dzhirutin/my-repo:prod-1.0'*/
                     sshagent(['ec2-user-key']) {
                       sh "scp -v -o StrictHostKeyChecking=no server-cmds.sh ec2-user@18.118.247.199:/home/ec2-user"  
                       sh "scp -v -o StrictHostKeyChecking=no docker-compose.yaml ec2-user@18.118.247.199:/home/ec2-user"
                       sh "ssh -o StrictHostKeyChecking=no ec2-user@18.118.247.199 ${shellCmd}"
                    }
                 } 
            }
        }
    }
}
