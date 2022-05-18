```
curl --location --request POST 'https://krishnajprod.jfrog.io/distribution/api/v1/dynamic/distribute' \
--header 'Authorization: Basic a3Jpc2huYWpAamZyb2cuY29tOkx1Y2t5QDYxOTM=' \
--header 'Content-Type: application/json' \
--data-raw '{
    "spec": {
        "queries": [
            {
                "aql": "items.find({\"$and\": [{\"$or\": [{\"repo\": {\"$eq\": \"sup002-swampup-maven-dev-local\"}}]}]})",
                "query_name": "dynamic-demo-aql"
            }
        ]
    },
 "distribution_rules": [
    {
      "site_name": "*edge*"
    }
  ]
}
```
