Feature: Create user using post api

Background:
	* url 'https://gorest.co.in'

	* def random_string = 
	"""
		function(s){
			var text = "";
			var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
			for(var i=0; i<s; i++)
				text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
				return text;
		}
	"""
	* def randomString = random_string(10)
	* print randomString
	
	* def requestPayload = 
	"""
	{
        "name": "tom",
        "gender": "male",
        "status": "active"
    }	
	"""
	  * set requestPayload.email = randomString + "@gmail.com"
	  
    * print requestPayload
	
Scenario: Create and udpate a user with the given data
#create a user with POST call
Given path '/public/v1/users'	
And request requestPayload
And header Authorization = 'Bearer ' + tokenID
When method post
Then status 201
And match $.data.id == '#present'
And match $.data.id == '#present'
And match $.data.name == 'tom'
And match $.data.gender == 'male'
And match $.data.status == 'active'
And match $.data.email == requestPayload.email


# fetch the userid created
* def userid = $.data.id
* print userid

#PUT call - update new user created
* def requestPayload1 = 
	"""
	{
        "gender": "female",
        "status": "inactive"
    }	
	"""
Given path '/public/v1/users/'+	userid
And request requestPayload1
And header Authorization = 'Bearer ' + tokenID
When method put
Then status 200
And match $.data.id == '#present'
And match $.data.name == '#present'
And match $.data.name == 'tom'
And match $.data.gender == 'female'
And match $.data.status == 'inactive'
And match $.data.email == requestPayload.email

