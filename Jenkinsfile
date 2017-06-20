pipeline {
  agent any
  stages {
    stage('Pull') {
      steps {
        git(url: 'https://github.com/arjones/jenkins-git-maven-docker.git', branch: 'master')
      }
    }
  }
}