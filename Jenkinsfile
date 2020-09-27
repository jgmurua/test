pipeline {
  agent any
  stages {
    stage('inicio') {
      steps {
        readTrusted 'jenkinsRead/Jenkinsfile'
      }
    }

    stage('') {
      steps {
        sh 'hostname; echo "h22"'
        mail(subject: 'hola', body: 'hola', to: 'jgmurua@gmail.com', from: 'jgmurua@gmail.com')
      }
    }

    stage('ultimo') {
      steps {
        echo 'chau'
      }
    }

  }
}