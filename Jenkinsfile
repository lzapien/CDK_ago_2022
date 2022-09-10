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

    stage('Test') {
      steps {
        sh 'python3 /Users/luis/cdk_ago_2022/proyecto/test_script/00test_api.py'
      }
    }

  }
}