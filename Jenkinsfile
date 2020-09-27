pipeline {
  agent any
  stages {
    stage('inicio') {
      steps {
        readTrusted 'jenkinsRead/Jenkinsfile'
      }
    }

    stage('segundo') {
      parallel {
        stage('segundo') {
          steps {
            echo 'bueno'
          }
        }

        stage('error') {
          steps {
            script {
              stages{
                stage ('Test') {
                  steps{
                    script {
                      if ( params.failTest ) {
                        sh ( "echo 'fail'")
                      }
                      else {
                        sh ( "echo 'success'")
                      }
                    }
                  }
                }
                stage ('Build') {
                  steps{
                    sh ( "echo 'ok'")
                    sh ("docker ps -a -s")
                  }
                }
              }
              post{
                cleanup{
                  println "Clearing workspace"
                  deleteDir()
                }
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