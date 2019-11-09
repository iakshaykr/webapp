pipeline {
    environment {
	registry= "iakshakr/webapp"
	registryCredential= 'dockerhub'
        dockerImage= ''
    }

    agent { dockerfile true }

    stages {
        stage('Bilding image') {
            steps {
	     script {
                 docker.build registry + :$BUILD_NUMBER
              }
            }
        }
    }
}
