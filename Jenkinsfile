pipeline {
    agent {
        kubernetes {
            label 'jenkins-pod'
            defaultContainer 'jnlp'
            yaml """
            apiVersion: v1
            kind: Pod
            metadata:
              labels:
                app: jenkins-slave-pod
              annotations:
            spec:
              containers:
              - name: golang
                image: golang:1.12
                command:
                - cat
                tty: true
              - name: busybox
                image: busybox
                command:
                - cat
                tty: true
              volumes:
              - name: jenkinscicd
            """
        }
    }
    stages {
        stage('Build') {
            steps {
                container('golang') {
                    sh 'go version'
                    sh 'ls -la'
                }
                container('busybox') { 
                    sh 'ls -la'
                }
            }
        }
    }
}
