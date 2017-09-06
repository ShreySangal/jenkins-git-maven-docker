node('master')
{
  stages 
  {
    stage('Pull code from github') 
    {
      steps 
      {
        git(url: 'https://github.com/shreys/jenkins-git-maven-docker.git', branch: 'master')
      }
    }
    stage ('Check env') 
    {
      steps 
      {
        sh '''
            echo "PATH = ${PATH}"
            echo "M2_HOME = ${M2_HOME}"
        '''
      }
    }
    stage('Build app') 
    {
      agent 
      {
        docker 'maven:3.3.9' 
      }
      steps 
      {
          sh 'mvn -B clean verify'
      }
    }
    stage('Build docker image') 
    {
      steps 
      {
        sh 'docker build -t shreys/dummy:1.0-SNAPSHOT .'
      }
    }

  }
}
