pipeline {
    agent any
    tools {
        maven "mvn"
    }
    environment {
        ARTIFACT_NAME = "hello-1.0.war"
    }
    stages {
        stage('Git-Checkout') {
            steps {
                git 'https://github.com/commercial-product/hello-world.git'
            }
        }
        stage("Build") {
            steps {
                sh "mvn clean install"
            }
        }
        stage("Archieve Artifacts") {
            steps {
                archiveArtifacts artifacts: '**/*.war', followSymlinks: false
            }
        }
        stage("Upload Artifacts to Jfrog") {
            steps {
                echo "Package ${ARTIFACT_NAME} is uploaded to S3"
            }
        }
    }
}
