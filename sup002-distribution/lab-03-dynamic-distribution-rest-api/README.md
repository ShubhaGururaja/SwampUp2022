# SUP-002 Distribution 


## Goal 
Goal of this lab to is to Create, sign, and distribute an ad-hoc Release Bundle to distribution nodes.We will be using Curl to trigger the dynamic REST API  

### Prerequisites 

- 

### Distribution 

Below commands need to be run from the scripts directory . Please make sure the [git repo](https://github.com/jfrog/SwampUp2022) is cloned to your local workspace .  


```
curl --request POST 'https://<instance name>/distribution/api/v1/dynamic/distribute' \
--header 'Authorization: Basic a3Jpc2huYWpAamZyb2cuY29tOkx1Y2t5QDYxOTM=' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
-T dynamic_release_bundle.json
}
```
