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
                    def response = httpRequest httpMode: 'POST', customHeaders: [[name: "Authorization", value: "token ${env.GITHUB_TOKEN}"],[name: "Content-Type", value: "application/json"]], url: "https://api.github.com/repos/edbighead/boxfuse-sample-java-war-hello/statuses/${env.GIT_COMMIT}",requestBody: "{ \"state\": \"pending\",\"target_url\": \"${env.BUILD_URL}\",\"description\": \"Build started\",\"context\": \"continuous-integration/jenkins\"}"
                }
            }
        }

    }
}