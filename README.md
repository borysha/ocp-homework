# Homework assignment: Advanced Deployment with OpenShift 3.9

## OpenShift Advanced Deployment with OpenShift 3.9 finall assignment lab.

You are a consultant assigned to a telecommunications company called MitziCom. MitziCom provides hosting and cloud services to a variety of clients, from medium size companies to enterprise giants.

MitziCom has asked you to lead a 30-40 hour proof-of-concept (POC) using Red Hat OpenShift Container Platform. The purpose of the POC is to determine the feasibility of using Red Hat OpenShift Container Platform as a target for internal and client workloads.
MitziCom management requires that you include all of the items listed in these subsections in your POC.

* Full Automation
MitziCom will be deploying your work onto their own systems. Management wants to ease the burnen on SREs, so they must be able to deploy your work on their infrastructure in an automated fashion in a single command.

* Automation Requirements
** Create a public GitHub repository with all your work which can be cloned onto a homework environment bastion host and executed to complete all the steps

Include an Ansible inventory file based on the which deploys the desired OpenShift and its hosted components.

Customizes the Ansible inventory file for different hostnames (replace GUID, at a minimum)

Use htpasswd authentication

Executes the OpenShift Ansible deployer

* Post-deployment, sets up storage and other environment configurations

* Deploys app and executes the CICD Workflow

* Creates all OpenShift objects necessary for multitenancy

* In the Engagement journal - Provide instructions for the MitziCom administrator to deploy all the above in a similar environment in a single command

### Installation steps


* Loggin to the bastion server:

  ```
  # ssh -i ~/.ssh/yourprivatekey.key opentlc-username@bastion.your_GUID.example.opentlc.com
  ```

* Become root:

  ```
  # sudo -i
  ```

* Clone homework repo:

  ```
  # git clone https://github.com/rasomonac/ocp-homework.git
  ```
  
* Switch to installation directory:

  ```
  # cd ocp-homework
  ```

* Run following to start the installation:

  ```
  # ./start-homework.sh
  ```

### Uninstall instructions
  
  In case that installation fails run **uninstall.sh** from **/ocp-homework/** directory.
  Delete directories ocp-homework and pvs.
