Feature: Get API

Scenario: get user details
Given url 'https://gorest.co.in/public/v2/users'
And path '2138955'
When method GET
Then status 200