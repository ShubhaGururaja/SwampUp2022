# LAB 0 - Configure JFrog CLI

### Prerequisites
- JFrog CLI is installed on your machine by running `jf -v`

### SETUP JFROG CLI
- Checkout all ``jf`` configs ``jf config show``


- Configure CLI that point to JFrog Instance ``jf config add --interactive`` or ``jf c add --interactive``
    - Choose a server ID: ```${{unique name}}```
    - JFrog platform URL: ```https://{{host}}.jfrog.io```
    - JFrog access token (Leave blank for username and password/API key): ```${{access_token}}```
        - Create access token from UI ``Administration`` -> ``Identity and Access`` -> ``Access Tokens``
    - Is the Artifactory reverse proxy configured to accept a client certificate (y/n) [n]?: ``n``


- Use newly created config ``jf config use SUP016``


- Healthcheck ``jf rt ping``

![lab0_cli_config](https://user-images.githubusercontent.com/7561138/164789237-bcfd7067-19f6-491f-aae5-e903ad691714.gif)
