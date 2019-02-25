# Homework assignment: Advanced Deployment with OpenShift 3.11

## OpenShift Advanced Deployment with OpenShift 3.11 finall assignment lab.

Homework description and requirements are here:
https://www.opentlc.com/labs/ocp_advanced_deployment/08_1_Assignment_8_Hour_Lab.html
https://www.opentlc.com/labs/ocp_advanced_deployment/08_X_Assignment_40_Hour_Lab.html

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
* Change credentials at host file:

  ```
  # oreg_auth_user=CHANGE_USERNAME
  # oreg_auth_password=CHANGE_PASSWORD
  ```
* Run following to start the installation:

  ```
  # sh ./start-homework.sh
  ```

### Uninstall instructions
  
  In case that installation fails run **uninstall.sh** from **/ocp-homework/** directory.
  Delete directories ocp-homework and pvs.
  ```
  # sh ./uninstall.sh
  ```
