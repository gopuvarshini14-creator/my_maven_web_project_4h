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
                bat 'docker build -t gopuvarshini14/mavenweb:latest .'
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
                bat 'docker push gopuvarshini14/mavenweb:latest'
            }
        }

        stage('Docker Run') {
            steps {
                bat 'docker rm -f mavenweb-container || exit /b 0'
                bat 'docker run -d --name mavenweb-container -p 8081:8080 gopuvarshini14/mavenweb:latest'
            }
        }
    }

    post {
        success {
            emailext(
                to: 'varshinigopu14@gmail.com',
                subject: "SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
Hello,

Your Jenkins pipeline completed successfully!

Job: ${env.JOB_NAME}
Build Number: ${env.BUILD_NUMBER}
Status: SUCCESS

All pipeline stages completed successfully.

Console Output:
${env.BUILD_URL}console

Regards,
Jenkins
"""
            )
        }

        failure {
            emailext(
                to: 'varshinigopu14@gmail.com',
                subject: "FAILED: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
Hello,

Your Jenkins pipeline has failed.

Job: ${env.JOB_NAME}
Build Number: ${env.BUILD_NUMBER}
Status: FAILURE

Please check the console output to identify the error.

Console Output:
${env.BUILD_URL}console

Regards,
Jenkins
""",
                attachLog: true
            )
        }
    }
}

 
