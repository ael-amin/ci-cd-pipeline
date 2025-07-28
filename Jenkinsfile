pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/ael-amin/ci-cd-pipeline.git' // bdel URL
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t myapp:latest .'
      }
    }

    stage('Scan with Trivy') {
      steps {
        sh 'trivy image myapp:latest'
      }
    }
  }
}
