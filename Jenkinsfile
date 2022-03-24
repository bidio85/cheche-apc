#!/bin/Groovy
pipeline {
    agent any
    stages {
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
