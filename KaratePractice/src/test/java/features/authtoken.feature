Feature: Auth token 

Scenario: Bearer token from config js
And header Authorization = 'Bearer '+tokenID
Given url baseUrl+'/public/v2/users'
And path '2138989'
When method GET
Then status 200