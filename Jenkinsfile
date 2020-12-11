pipeline {
    agent any

    dir("/var/jenkins_home/"){
      sh 'pwd'
    }

    stages {
        stage ('Configure Diretory Stage') {

            steps {
                sh 'pwd'
                
            }
            dir("/var/jenkins_home/"){
              sh 'pwd'
            }
        }

        stage ('Testing Stage') {

            steps {
                sh 'echo "This is a test."'
            }
        }


        stage ('Deployment Stage') {
            steps {
                sh 'cat /etc/os-release'
            }
        }
    }
}
