
pipeline {

    agent any

    tools {
        maven 'MAVEN_HOME.'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/gopuvarshini14-creator/my_maven_web_project_4h.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t gopuvarshini14/prac_mavenweb:latest .'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'dockerhub-new',
                        usernameVariable: 'DOCKER_USERNAME',
                        passwordVariable: 'DOCKER_PASSWORD'
                    )
                ]) {
                    bat '''
                        powershell -NoProfile -Command "$env:DOCKER_PASSWORD | docker login --username $env:DOCKER_USERNAME --password-stdin"
                    '''
                }
            }
        }

        stage('Docker Push') {
            steps {
                bat 'docker push gopuvarshini14/prac_mavenweb:latest'
            }
        }

        stage('Docker Run') {
            steps {
                bat 'docker rm -f mavenweb-container || exit /b 0'
                bat 'docker run -d --name mavenweb-container -p 8081:8080 gopuvarshini14/prac_mavenweb:latest'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }

        failure {
            echo 'Pipeline failed!'
        }
    }
}
