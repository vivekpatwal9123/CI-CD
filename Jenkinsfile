pipeline {
    agent any

    environment {
        SCANNER_HOME = tool 'sonarscanner'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/vivekpatwal9123/CI-CD.git'
            }
        }

        stage('SonarQube Scan') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh'  $SCANNER_HOME/bin/sonar-scanner'
                    
                }
            }
        }

        stage('Image Build') {
            steps {
                sh 'docker build -t nginx:latest .'
            }
        }

        stage('Image Scan') {
            steps {
                sh '''
                trivy image nginx:latest
                '''
            }
        }

        stage('Container run') {
            steps {
                sh '''
                docker rm -f vikki || true
                docker run -d -p 80:80 --name vikki nginx:latest
                '''
            }
        }
    }
}
