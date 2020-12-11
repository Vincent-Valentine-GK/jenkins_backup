pipeline {
    agent any

    stages {
        stage ('Configure Diretory Stage') {

            steps {
                sh 'pwd'
                sh 'sh backup.sh'
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
