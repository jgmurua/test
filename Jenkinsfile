pipeline {
  agent any
  stages {
    stage('inicio') {
      steps {
        readTrusted 'jenkinsRead/Jenkinsfile'
      }
    }

    stage('hola') {
      environment {
        VARX = 'hola como va'
      }
      steps {
        sh 'echo $VARX'
      }
    }

    stage('ultimo') {
      steps {
        echo 'chau'
      }
    }

  }
}