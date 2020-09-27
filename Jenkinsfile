pipeline {
  agent any
  stages {
    stage('inicio') {
      steps {
        readTrusted 'jenkinsRead/Jenkinsfile'
      }
    }

    stage('hola') {
      steps {
        mail(subject: 'hola', body: 'hola', to: 'jgmurua@gmail.com')
      }
    }

    stage('ultimo') {
      steps {
        echo 'chau'
      }
    }

  }
}