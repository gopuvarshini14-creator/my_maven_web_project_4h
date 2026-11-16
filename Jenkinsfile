
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
    }
