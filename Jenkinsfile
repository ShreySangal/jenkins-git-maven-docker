pipeline {
  agent any

  // The tools directive allows you to automatically install tools configured in
  // Jenkins - note that it doesn't work inside Docker containers currently.
  tools {
    // Here we have pairs of tool symbols (not all tools have symbols, so if you
    // try to use one from a plugin you've got installed and get an error and the
    // tool isn't listed in the possible values, open a JIRA against that tool!)
    // and installations configured in your Jenkins master's tools configuration.
    jdk "jdk8"
    // Uh-oh, this is going to cause a validation issue! There's no configured
    // maven tool named "mvn3.3.8"!
    maven "mvn3.3.8"
  }


  stages {
    stage('Pull source code from github') {
      steps {
        git(url: 'https://github.com/arjones/jenkins-git-maven-docker.git', branch: 'master')
      }
    }

    stage('Example Build') {
      steps {
          sh 'mvn -B clean verify'
      }
    }
  }
}
