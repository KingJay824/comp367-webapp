pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/KingJay824/comp367-webapp.git'
            }
        }

        stage('Build Maven Project') {
            steps {
                bat '"D:\\Games\\compressed\\apache-maven-3.9.12-bin\\apache-maven-3.9.12\\bin\\mvn" clean package'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-cred', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    bat "docker login -u %USERNAME% -p %PASSWORD%"
                }
            }
        }

        stage('Docker Build') {
            steps {
                bat "docker build -t olamilekan2005/myapp ."
            }
        }

        stage('Docker Push') {
            steps {
                bat "docker push olamilekan2005/myapp"
            }
        }
    }
}