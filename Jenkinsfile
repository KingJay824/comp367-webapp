pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                bat '"D:\\Games\\compressed\\apache-maven-3.9.12-bin\\apache-maven-3.9.12\\bin\\mvn" clean package'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: '**/target/*.war', fingerprint: true
            }
        }
    }
}