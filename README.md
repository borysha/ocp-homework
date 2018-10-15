# Homework assignment: Advanced Deployment with OpenShift 3.9


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
