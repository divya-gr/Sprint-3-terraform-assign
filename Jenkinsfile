pipeline {
    agent any
    stages {
        stage('AWS_CONFIGURE') {
             steps {
               withCredentials([usernamePassword(credentialsId: 'aws-credentials', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')])
                 }
        }
         stage('Checkout') {
             steps {
                    git branch: 'main', changelog: false, poll: false, url: 'https://github.com/divya-gr/Sprint-3-terraform-assign.git'
                 }
        }
        stage('Terraform init') {
             steps {
                    sh 'terraform init -reconfigure'
                 }
        }
        stage('Terraform plan') {
             steps {
                    sh 'terraform plan'
                 }
        }
        stage('Terraform apply') {
             steps {
                    sh 'terraform apply -auto-approve'
                 }
        }

    }
}

