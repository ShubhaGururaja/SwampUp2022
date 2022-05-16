# SUP-002 Distribution 


## Goal 
Goal of this lab to is to create a release bundle and distribute the release bundle version 1.0 to the available edge nodes and validate using the Jfrog UI 

### Prerequisites 

### Section 1 - Environment ready check 

- Login to your saas instance **{{instance_name}}**.jfrog.io with  your admin credentials
- Click on Artifacts on the left hand side menu 
  <Insert image>
- Make sure below repositories and its content are created as shown in the image 
  
      - sup002-swampup-maven-dev-local
  
      - sup002-swampup-npm-dev-local
  
  ![](../.images/repo-verify.png)



*******************************************************************************************************************
**NOTE: If you do not see teh data configured in the above step then please go through the section 2 and create the data . 
Or You can use SU-201-Intro-to-JFrog-Xray/scripts/setup.sh to populate repositories using JFROG CLI **
.You can skip Section 2 and go to section 3 if teh required data is present in the instance as shown in section 1  
*******************************************************************************************************************


### TO-DO - Section 2 - Create Repositories in JFrog Artifactory ( Run the below steps only if section 1 validation is not succeeded) 

- Login to your saas instance **{{instance_name}}**.jfrog.io with  your admin credentials
- Nevigate to Welcome, **{{user}}** from top right
- Click on dropdown and select **Quick Setup**
- Select Package Type **NPM** click **Next**
- Enter repository name **su201** and click **Create**
- Download the hello world apps and upload 
- Now, lets create NPM package 
- Enter repository name **su201** and click **Create**
- Download the hello world apps and upload 

![create_repos](https://user-images.githubusercontent.com/7561138/117177841-4f254e80-ad86-11eb-8184-20ffbe5c7af9.gif)


### Section 3 
  
- Go to Distribution Menu -> Release Bundles on the left side menu 
  
  ![](../.images/click%20on%20Distribution.png)
    
 -  Create a Release bundle 
  
   ![Distribution menu](../.images/2.png) 

- Enter Name,Version and Description as shown and click Add AQL Query 

   ![](../.images/5.png)

- Paste the below AQL Query and click Next . AQL Query fetches the required artifacts needed to be added to the bundle 
   ![](../.images/6.png)
    
- Add the following key value pair and click NExt 
   ![](../.images/7.png)

- Preview all the artifacts that AQL query collected and validate 
  ![](../.images/7-1.png)

- Click on create and sign 
  ![](../.images/8.png)

- Verify if release bundle is created 
    ![](../.images/9.png)

- Click on Distribute Release Bundle 
   ![](../.images/10.png)

- select all the edge nodes
  ![](../.images/11.png)
    
- Distrubute 
  ![](../.images/12.png)
    
- validate the release bundle is distributed 
  ![](../.images/13.png)
    
- click on release bundle to see it is distributed to edge nodes
  ![](../.images/15.png)





