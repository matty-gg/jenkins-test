pipeline {
    agent any
    tools { nodejs "NODEJS" }
    stages {
        stage('Build') {
            steps {
                bat 'npm install'
            }
        }
        stage('Deliver') {
            steps {
                bat 'powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process"'
                bat 'powershell -File .\\jenkins\\scripts\\deliver.ps1'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                bat 'powershell -File .\\jenkins\\scripts\\kill.ps1'
            }
        }
    }
}
