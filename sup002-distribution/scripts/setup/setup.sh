#!/bin/sh
# exit when any command fails
set -e

_user=$1
_password=$2
_url=$3


create_validate_data 'npm' 'tgz' 'ui'
create_validate_data 'maven' 'jar' 'api'

create_validate_data(){
    repo_name=sup002-swampup-$1-dev-local #derive from what is written in json file 
    ext=$2
    app_name=hello-world-$3
    jf rt repo-create create-$type-repo.json --user $_user --password  $_password --url $_url
    jf rt u '$1-data/$app_name-*.$ext' '$repo_name/$app_name/' --user $_user --password  $_password --url $_url
    jf rt s $repo_name/$app_name/ --count | grep 3. # validate if artifacts are uploaded .. we know we upload 3 artifacts 
}


