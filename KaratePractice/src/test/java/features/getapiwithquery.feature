Feature: GET api with query parameter

Scenario: GET api with query parameter
* def query = {status:'active'}
Given url baseUrl+'/public/v2/users'
And params query
When method GET
Then status 200
* print response

Scenario: GET api with query 2 parameter
* def query = {status:'active', gender:'male'}
Given url baseUrl+'/public/v2/users'
And params query
When method GET
Then status 200
* print response

Scenario: GET api with query parameter and get count
* def query = {status:'active', gender:'male'}
Given url baseUrl+'/public/v2/users'
And params query
When method GET
Then status 200
* def jsonResponse = response
* def count = jsonResponse.length
* print count
* match count == 10