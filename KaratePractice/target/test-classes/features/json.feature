Feature: Json Feature testing

Scenario: json reader parser

* def jsonObject = 
"""
[
{
	"name": "Jith",
	"city": "Chennai",
	"Age": "20"
	},
	{
	"name": "john",
	"city": "Rome",
	"Age": "25"
	}
]
"""

* print "Entire Json Array "
* print jsonObject
* print "First Json object "
* print jsonObject[0]
* print jsonObject[1]
* print "First Json object's specific key "
* print jsonObject[0].name
* print jsonObject[1].name
