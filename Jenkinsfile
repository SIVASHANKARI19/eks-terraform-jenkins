pipeline {
  agent any

  stages {

    stage('Checkout') {
      steps {
        git 'https://github.com/yourusername/eks-terraform-jenkins.git'
      }
    }

    stage('Trivy Scan') {
      steps {
        sh 'trivy config .'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan'
      }
    }

    stage('Terraform Apply') {
      steps {
        input "Approve EKS creation?"
        sh 'terraform apply -auto-approve'
      }
    }
  }
}
