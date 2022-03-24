#!/bin/Groovy
pipeline {
    agent any
    tools {
         terraform "terraform 11"
    }
    stages {
        stage('Workspace') {
           
            steps {
                sh 'cd /var/lib/jenkins/workspace/Terraform-Project'
                
            }
        }
        
        stage('Terraform Initialize') {
           
            steps {
                sh 'terraform init'
                
            }
        }
        stage('Terraform Plan') {
           
            steps {
                sh 'terraform plan -out planfile'
               
            }
        }
        stage('Terraform Apply') {
           
            steps {
                sh 'terraform apply planfile'
               
            }
        }
         
    }
}
