# LAB 1 - Repository Provisioning

### Prerequisites
- Lab-0 - Configure JFrog CLI 

### CREATE REPOSITORY TEMPLATE
- Local Repository Template
  - run ``jf rt repo-template template-local.json``
    - Select the template type (press Tab for options): `create`
    - Insert the repository key > `sup016-npm-dev-local`
    - Select the repository class (press Tab for options): `local`
    - Select the repository's package type (press Tab for options): `npm`
    - You can type ":x" at any time to save and exit.
    - Select the next configuration key (press Tab for options): `repoLayoutRef`
    - Insert the value for repoLayoutRef (press Tab for options): > `npm-default`
    - Select the next configuration key (press Tab for options): `xrayIndex`
    - Insert the value for xrayIndex (press Tab for options): > `true`
    - Select the next configuration key (press Tab for options): `:x`
    - Validate template `template-local.json` is created successfully. - ``ls -la``
    - View template
      ```json
      {
        "key":"${repo-name}",
        "packageType":"${package-type}",
        "rclass":"${repo-type}",
        "repoLayoutRef":"${repo-layout}",
        "xrayIndex":"${xray-enable}"
      }
      ```
- Remote Repository Template
  - run ``jf rt repo-template template-remote.json``
      - Select the template type (press Tab for options): `create`
      - Insert the repository key > `npm-remote`
      - Select the repository class (press Tab for options): `remote`
      - Insert the remote repository URL > `https://registry.npmjs.org`
      - Select the repository's package type (press Tab for options): `npm`
      - You can type ":x" at any time to save and exit.
      - Select the next configuration key (press Tab for options): `repoLayoutRef`
      - Insert the value for repoLayoutRef (press Tab for options): > `npm-default`
      - Select the next configuration key (press Tab for options): `xrayIndex`
      - Insert the value for xrayIndex (press Tab for options): > `true`
      - Select the next configuration key (press Tab for options): `:x`
      - Validate template `template-remote.json` is created successfully. ``ls -la``
      - View template
        ```json
        {
          "key":"${repo-name}",
          "packageType":"${package-type}",
          "rclass":"${repo-type}",
          "url":"${url}",
          "repoLayoutRef":"${repo-layout}",
          "xrayIndex":"${xray-enable}"
        }
        ```
- Virtual Repository Template
    - run ``jf rt repo-template template-remote.json``
      - Select the template type (press Tab for options): `create`
      - Insert the repository key > `sup016-npm-virtual`
      - Select the repository class (press Tab for options): `virtual`
      - Select the repository's package type (press Tab for options): `npm`
      - You can type ":x" at any time to save and exit. 
      - Select the next configuration key (press Tab for options): `repoLayoutRef`
      - Insert the value for repoLayoutRef (press Tab for options): > `npm-default`
      - Select the next configuration key (press Tab for options): `repositories` 
      - The value should be a comma separated list:
      - Insert the value for repositories > `sup016-npm-dev-local,sup016-npm-qa-local,sup016-npm-prod-local,sup016-npm-remote`
      - Select the next configuration key (press Tab for options): `externalDependenciesRemoteRepo`
      - Insert the value for externalDependenciesRemoteRepo > `sup016-npm-remote`
      - Select the next configuration key (press Tab for options): `:x`
      - Validate template `template-remote.json` is created successfully. ``ls -la``
      - View template
        ```json
        {
          "key":"${repo-name}",
          "packageType":"${package-type}",
          "rclass":"${repo-type}",
          "repoLayoutRef":"${repo-layout}",
          "defaultDeploymentRepo":"${deploy-repo-name}",
          "externalDependenciesRemoteRepo":"${external-remote-repo-name}",
          "repositories": "${repos}"
        }
        ```

### CREATE REPOSITORY
- Run ``jf rt repo-create template-{{ local|remote|virtual }}.json``

    or

  ``jf rt rc template-{{ local|remote|virtual }}.json``


    NOTE: 

    --var - List of variables in the form of "key1=value1;key2=value2;..." to be replaced in the template.
    
    ``jf rt rc template-local.json --var “repo-name=sup016-npm-qa-local”``


  
### CHALLENGE - Update Repository [Optional] 
- Update the description of one repository we created above 
- Configure repository with Include/Exclude Pattern
- For remote repository, update metadata retrieval cache period in secs. (default: 7200secs)