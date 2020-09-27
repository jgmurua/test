pipeline {
  agent any
  stages {
    stage('hola') {
      parallel {
        stage('hola') {
          environment {
            VARX = 'hola como va'
          }
          steps {
            sh 'echo $VARX'
          }
        }

        stage('docker') {
          agent docker
          steps {
            script {
              // This step should not normally be used in your script. Consult the inline help for details.
              withDockerContainer('hello-world:latest') {
                // some block
              }
            }

          }
        }

      }
    }

    stage('ultimo') {
      steps {
        echo 'chau'
      }
    }

  }
}
