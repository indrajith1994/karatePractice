Feature: Get API

Scenario: get user details
Given url 'https://gorest.co.in/public/v2/users'
And path '2138961'
When method GET
Then status 200
* print response
* def jsonRes = response
* print jsonRes
* def name = jsonRes.name
* def email = jsonRes.email
* def id = jsonRes.id
* print name
* match name == 'Abani Gupta'
* match email == 'abani_gupta@dietrich-johns.test'
* match id == 2138961

Scenario: get user details - user not found
Given url 'https://gorest.co.in/public/v2/users'
And path '10'
When method GET
Then status 404