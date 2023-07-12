pipeline {
    agent any
    environment{
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY= credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
        // stage('AWS_CONFIGURE') {
        //      steps {
        //        withCredentials([usernamePassword(credentialsId: 'aws-credentials', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')])
        //          }
        // }
         
         stage('Checkout') {
             steps {
                    git branch: 'main', changelog: false, poll: false, url: 'https://github.com/divya-gr/Sprint-3-terraform-assign.git'
                 }
        }
        stage('Build') {
            steps {
                dir('/var/jenkins_home/workspace/implementation') {
                    /* execute commands in the scripts directory */
                }
            }
        stage('Terraform init') {
             steps {
                    sh 'terraform init'
                 }
        }
        stage('Terraform plan') {
             steps {
                    sh 'terraform plan'
                 }
        }
        stage('Terraform apply') {
             steps {
                    sh 'terraform apply --auto-approve'
                 }
        }

    }
}

