pipeline{
    agent any
    
    parameters{
            booleanParam( defaultValue: false, description: 'Check if you want to fail test', name: 'failTest')      
            string( defaultValue: 'Hakunamatata', description: 'Enter a random message', name: 'randomMsg' )
    }
    
    environment {
        RANDOM_MESSAGE="${params.randomMsg}"
    }

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
