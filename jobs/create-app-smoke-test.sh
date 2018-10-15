#!/usr/bin/env bash
# Reference: https://www.opentlc.com/labs/ocp_advanced_deployment/02_1_HA_Deployment_Solution_Lab.html#_smoke_test

echo "Create a new project -"
oc new-project smoke-test

echo "Creating new application -"
oc new-app nodejs-mongo-persistent