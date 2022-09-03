pipeline {
  agent any
  stages {
    stage('Environment') {
      steps {
        sh 'ls -ltr'
        sh 'docker --version'
        sh '''whoami
env'''
        sh 'docker ps'
      }
    }

    stage('build') {
      steps {
        sh 'sh build.sh'
      }
    }

    stage('Run') {
      steps {
        sh 'sh run.sh'
      }
    }

  }
}