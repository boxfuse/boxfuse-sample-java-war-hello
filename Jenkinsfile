@Library('Shared')
import com.library.Shared

def shared = new Shared(this)

pipeline {
    agent any

    stages {

        stage('hello') {
            steps {
                echo "hello world!"
            }
        }

        stage('github notification') {
            steps {
                echo "sending notification to github"
                script{
                    shared.setGithubStatus("boxfuse-sample-java-war-hello", "success")
                }
            }
        }

    }
}