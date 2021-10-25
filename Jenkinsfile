def applicationName = "ocp-tutorial";

pipeline{
    agent {
        label 'maven'
    }

    stages{
            stage('build') {
                steps{
                    sh script: "mvn -DskipTests clean" 
                }
            }
    }               
}
