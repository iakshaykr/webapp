pipeline {
    environment {
	registry= "iakshakr/webapp"
	registryCredential= 'dockerhub'
    }

    agent { dockerfile true }

    stages {
        stage('Bilding image') {
            steps {
	     script {
                docker.build registry + ":$BUILD_NUMBER"
              }
            }
        }
	stage('Deploy image') {
	   stesp {
            script {
                dockerImage=docker.build registry + ":$BUILD_NUMBER"
               }
            }
        }
    }
}
