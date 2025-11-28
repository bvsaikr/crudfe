pipeline{
  agent {label "mynode"}
  tools{
    npm "Nodejs"
  }
  stages{
    stage("clone"){
      git url: "https://github.com/bvsaikr/crudfe.git", branch: "main"
    }
    stage("unittest"){
      sh 'npm test'
    }
    stage("build"){
      sh 'docker build -t frontend:latest .'
    }
  }
}
