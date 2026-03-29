pipeline {
    agent any

    stages {

       stage('Clone Code') {
    steps {
        git 'https://github.com/priyadurga888/devops-project.git'
    }
}

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-node-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 3002:3000 devops-node-app'
            }
        }
    }
}