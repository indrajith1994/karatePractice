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

#Delete call - delete new user created
Given path '/public/v1/users/'+	userid
And header Authorization = 'Bearer ' + tokenID
When method delete
Then status 204

#Get call -check if user is deleted
Given url 'https://gorest.co.in/public/v2/' + userid
When method GET
Then status 404


