# Welcome to Swampup2022-SUP-002-Distribution

# Setup

Reminder: if you're lost, please contact the crew!

## Source code

- Open Github repository https://github.com/jfrog/SwampUp2022 in a browser
- Navigate to sup002-distribution folder

```bash
https://github.com/jfrog/SwampUp2022/blob/main/sup002-distribution/
```

## Requirements

- SaaS JFrog Platform instance
- Command prompt - Windows or Linux with curl installed

## Set up Jfrog CLI 

- Download Jfrog cli here https://jfrog.com/getcli/
- Once the Jfrog CLI is successfully downloaded , open the terminal and start configuring CLI to integrate with your instance 
- Run the below command and follow the prompt
      `jf config add`
      
      - Choose a server ID  <Give an id  Example - atlanta-jpd-platform>
      - JFrog platform URL  <Instance name  Example krishnaj.jfrig.io>
      - Select save and continue 
      - JFrog access token <Leave blank for username and password/API key>
      - JFrog username <Same username used to login to the instance>
      - JFrog password or API key <Password or API key https://www.jfrog.com/confluence/display/JFROG/User+Profile#UserProfile-APIKey >

## Environment ready check 

- Login to your saas instance **{{instance_name}}**.jfrog.io with  your admin credentials
- Click on Artifacts on the left hand side menu 
  <Insert image>
- Make sure below repositories and its content are created as shown in the image 
  
      - sup002-swampup-maven-dev-local
  
      - sup002-swampup-npm-dev-local
  
  ![](../.images/repo-verify.png)

- If the data is not present on the instance , Please let the Jfrog Team know about it 

## Documentation on Distribution 

https://www.jfrog.com/confluence/display/JFROG/JFrog+Distribution


