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
//                 sh "oc new-build --name hello-world --binary -n my-project --image-stream=my-project/openjdk-11-rhel7  || true"
//                 sh "oc start-build hello-world --from-file=app.jar -n my-project --follow --wait"
//                 sh "oc new-app hello-world || true"
//                 sh "oc expose svc/hello-world || true"
            
            sh "docker login -u developer -p $(oc whoami -t) $(oc registry info)"
    }
    }               
}
