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
            stage('build') {
                steps{
                    sh script: "mvn -DskipTests clean package -f pom.xml" 
                }
            }
    }               
}
