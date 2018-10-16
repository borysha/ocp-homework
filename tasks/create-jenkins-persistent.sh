#!/usr/bin/env bash

# Create project for Jenkins persistent deployment and CICD
oc new-project cicd

# Install Jenkins with persistent storage
oc new-app jenkins-persistent

# Create three new projects as dev, test, and prod environment
oc new-project cicd-dev
oc new-project cicd-test
oc new-project cicd-prod

# Set privilege to edit DEV, TEST, and PROD environments to jenkins service account
oc adm policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n cicd-dev
oc adm policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n cicd-test
oc adm policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n cicd-prod
