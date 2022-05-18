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
- Clone the [git repo](https://github.com/jfrog/SwampUp2022) 
- Command prompt - Windows or Linux with curl installed
- Jfrog CLI installed ( check the below section for setting up CLI ) 
- Set up API keys (Click on username on right top -> Edit user profile ->Enter password -> generate API Key and save it. Follow this [doc](https://www.jfrog.com/confluence/display/JFROG/User+Profile#UserProfile-APIKey) for more details ) 

## Set up Jfrog CLI 

- Download Jfrog cli here https://jfrog.com/getcli/
- Once the Jfrog CLI is successfully downloaded , open the terminal and start configuring CLI to integrate with your instance 
- Run the below command and follow the prompt
      `jf config add`
      
      - Choose a server ID  <Give an id  Example - atlanta-jpd-platform>
      - JFrog platform URL  < Your instance name  Example atl-prd.jfrog.io>
      - Select save and continue 
      - JFrog access token <Leave blank for username and password/API key>
      - JFrog username <Same username used to login to the instance>
      - JFrog password or API key <Password or API key https://www.jfrog.com/confluence/display/JFROG/User+Profile#UserProfile-APIKey . API key is recommended>

## Environment ready check 

- Login to your saas instance <instance_name>.jfrog.io with your admin credentials
- Click on Artifacts on the left hand side menu 
- Make sure below repositories and its content are created as shown in the image 
  
      - sup002-swampup-maven-dev-local
  
      - sup002-swampup-npm-dev-local
  
  ![](.images/repo-verify.png)

- If the above  data is not present on the instance , Please let the Jfrog Team know about it 
- Make sure the JPD platform has Edge nodes added to the instance and are Online . Go to settings menu -> Platform Management -> Registered JPDs to validate

## Documentation on Distribution 

https://www.jfrog.com/confluence/display/JFROG/JFrog+Distribution


