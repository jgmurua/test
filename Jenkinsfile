pipeline {
  agent any
  stages {
    stage('inicio') {
      steps {
        readTrusted 'jenkinsRead/Jenkinsfile'
      }
    }

    stage('segundo') {
      steps {
        echo 'bueno'
      }
    }

    stage('ultimo') {
      steps {
        echo 'chau'
      }
    }

  }
}