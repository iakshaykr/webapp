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
                dockerImage= docker.build registry("my-image:${env_BUILD_ID}")
                dockerImage.push()
              }
            }
        }
	stage('Deploy image') {
	   steps  {
            script {
                dockerImage=docker.build registry + ":$BUILD_NUMBER"
               }
            }
        }
    }
}
