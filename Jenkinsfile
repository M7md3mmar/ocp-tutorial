def applicationName = "ocp-tutorial";

pipeline{
    agent {
        label 'maven'
    }

    stages{
            stage('build') {
                steps{
                    sh script: "cd ${applicationName} && mvn -DskipTests clean package" 
                }
            }
    }               
}
