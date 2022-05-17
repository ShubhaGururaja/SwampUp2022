# SUP-002 Distribution 


## Goal 
Goal of this lab to is to create a release bundle and distribute the release bundle version 2.0 to the available edge nodes and validate using the Jfrog CLI 

### Prerequisites 

- Please make sure data is present and JFROG CLI is installed and configured 

### Distribution 

Below commands need to be run from the scripts directory . Please make sure the following git repo is cloned to your local workspace .  
  
- Create a Release bundle 
 
 ```
  cd <git repo cloned>
  cd sup002-distribution/lab-01-classic-distribution-cli/scripts 
  jf ds release-bundle-create  'swampup-release-2022' '2.0' --spec=rb.json --release-notes-path releas-notes.txt
  ```
  
  Once the above commands are successful , You can login to the UI and see the new release bundle created under the distribution menu 

- Sign a release bundle 
  
  ```
  jf ds release-bundle-sign  'swampup-release-2022' '2.0' 
  ```

- Distribute a release bundle

  ```
  jf ds release-bundle-distribute  'swampup-release-2022' '2.0' --dist-rules=distribute_rules.json
  
  ```

- Verify the release bundle is distributed 

   Login to the Edge nodes UI and validate whether 'swampup-release-2022' is shown on the Received tab of Distribution Menu 




