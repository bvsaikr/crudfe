pipeline{
  agent {label "mynode"}
  tools{
    nodejs "Nodejs"
  }
  stages{
    stage("clone"){
      steps{
      git url: "https://github.com/bvsaikr/crudfe.git", branch: "main"
      }
    }
    stage("unittest"){
      steps{
      sh 'npm test'
      }
    }
    stage("build"){
      steps{
      sh 'docker build -t frontend:latest .'
      }
    }
  }
}
