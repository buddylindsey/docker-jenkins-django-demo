pipeline {
  agent { docker 'python:3.6-alpine' }
  stages {
    stage('Install Dependencies') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('Run Tests') {
      steps {
        sh 'python manage.py test'
      }
    }
  }
}
