Feature: update user using put api

Background:
	* url 'https://gorest.co.in'
	* def requestPayload = 
	"""
	{
         "status": "inactive"
    }
	
	"""
Scenario: update a user with the given data
Given path '/public/v1/users/2139059'	
And request requestPayload
And header Authorization = 'Bearer ' + tokenID
When method put
Then status 200
And match $.data.id == '#present'
And match $.data.name == '#present'
And match $.data.status == 'inactive'