pipeline {
    agent any
    environment {
       AWS_ACCESS_KEY_ID = credentials('s3-upload')
        AWS_SECRET_ACCESS_KEY = credentials('s3-upload')
        ARTIFACTS_NAME = "hello-1.0.war"
    }

    stages {
        stage('CheckOut') {
            steps {
                git 'https://github.com/jitendrakumarpalei/jitendra-repo.git/'
            }
        }
        stage('Build') {
            steps {
              sh "mvn clean install"
            }
        }
        stage("Archieve Artifacts") {
            steps {
              archiveArtifacts artifacts: '**/*.war', followSymlinks: false
            }
        }
        stage("Finding Artifacts") {
            steps {
              echo "My workspace is: ${env.WORKSPACE}"
                sh "cd ${env.WORKSPACE}/target"
                sh "ls -lrt ${env.WORKSPACE}/target"
                sh "ps -ef | grep hello-1.0-${env.BUILD_ID}.war"
            }
        }
        stage('S3-Upload') {
            steps {
                sh "chmod +x ${env.WORKSPACE}/s3-upload.sh"
                sh "./s3-upload.sh"
            }  
        }
        stage('Deploy') {
            steps {
                sh "cd /opt/tomcat/webapps"
                sh "rm -rf *.war"
                sh "cp -r ${env.WORKSPACE}/target/${ARTIFACTS_NAME} /opt/tomcat/webapps"
                sh "/opt/tomcat/bin/shutdown.sh"
                sh "/opt/tomcat/bin/startup.sh"
                

            
            }
        }
        
        
    }
}
        
