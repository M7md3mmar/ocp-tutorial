def applicationName = "ocp-tutorial";

pipeline{
    agen any
    tools {
        maven "MAVEN"
        jdk "JDK"
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
            stage('build') {
                steps{
                    sh 'mvn -B -DskipTests clean package'
//                     sh script: "mvn -DskipTests clean install" 
                }
            }
    }               
}
