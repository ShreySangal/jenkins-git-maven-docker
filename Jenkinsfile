pipeline {
  agent any
  stages {
    stage('Pull') {
      steps {
        git(url: 'git@github.com:arjones/jenkins-git-maven-docker.git', branch: 'master')
      }
    }
  }
}