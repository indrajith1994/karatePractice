Feature: Post API

Scenario: First Post Call - create user
* def requestpayload = 
"""
{
	"name":"Jith",
	"email" : "jith@gmail.com",
	"gender" : "male",
	"status" : "active"
	
}
"""
And header Authorization = 'Bearer '+tokenID
Given url baseUrl+'/public/v2/users'
And request requestpayload
When method POST
Then status 201