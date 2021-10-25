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
//          stage('build') {
//                 steps{
//                     sh "mvn -v"
//                     sh script: "mvn -DskipTests clean package -f pom.xml" 
//                 }
//             }
        
        stage('Deploy') {
             steps{
//                 sh "oc new-build --name hello-world --binary -n my-project --image-stream=my-project/openjdk-11-rhel7  || true"
//                 sh "oc start-build hello-world --from-file=app.jar -n my-project --follow --wait"
//                 sh "oc new-app hello-world || true"
//                 sh "oc expose svc/hello-world || true"
            
//             sh "docker login -u developer -p 3OKSAqBN-94hAYN4Bn2hAzbfzMYKritxoOf92fz9nL8  172.30.1.1:5000"
            sh " docker image build -t ocp-tutorial ."
             }
    }
    }               
}
