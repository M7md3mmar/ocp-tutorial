def applicationName = "ocp-tutorial";

pipeline{
    agent {
         label 'maven'
    }


    stages{
         stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }
         stage('Java Build') {
                steps{
                    sh "mvn -v"
//                     sh script: "mvn -DskipTests clean package -f pom.xml" 
                }
            }
        
        stage('Docker Build') {
            agent {dockerfile true }
             steps{            
//             sh "docker login -u developer -p 3OKSAqBN-94hAYN4Bn2hAzbfzMYKritxoOf92fz9nL8  172.30.1.1:5000"
               sh " docker image build -t ocp-tutorial ."
             }
    }
    }               
}
