pipeline {
  agent any
  tools {
    maven 'maven'
  }
  stages{
    stage('1-git-clone'){
      steps{
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-id', url: 'https://github.com/ihogh/maven-project.git']]])
      }
    }
    stage('2-cleanws'){
      steps{
        sh 'mvn clean'
      }
    }
    stage('3-mavenbuild'){
      steps{
        sh 'mvn package'
      }
    }
     stage('unittest'){
        steps{
            sh 'mvn test'
        }
    }
    stage('codequality'){
        steps{
       sh 'mvn clean verify sonar:sonar \
  -Dsonar.projectKey=team3gr2_pipeline \
  -Dsonar.host.url=http://ec2-100-25-126-94.compute-1.amazonaws.com:9000 \
  -Dsonar.login=sqp_68af707de4f3b32c6997abb2fd4a3703c02ee555'
      }
    }     
  }
}