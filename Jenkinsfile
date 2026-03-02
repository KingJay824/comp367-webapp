pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/KingJay824/comp367-webapp.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: '**/target/*.war', fingerprint: true
            }
        }
    }
}