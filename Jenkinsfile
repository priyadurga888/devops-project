pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t mynodeapp .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f mynodeapp-container || true
                docker run -d -p 3002:3000 --name mynodeapp-container mynodeapp
                '''
            }
        }

    }
}