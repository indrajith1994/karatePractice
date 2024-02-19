Feature: Get API header feature

Scenario: pass user request with header - part 1
Given header Content-Type = 'text/xml;charset=ISO-8859-1'
And header Accept-Encoding = 'gzip,deflate'
And header Connection = 'Keep-Alive'
And header Expect = '100-continue'
And header User-Agent = 'Mozilla/4.0(compatible;IE;GACv7\. 1\. 5192\. 22378)'

Given url baseUrl+'/public/v2/users'
And path '2138988'
When method GET
Then status 200

Scenario: pass user request with header - part 2
* def request_headers = {Content-Type: 'text/xml;charset=ISO-8859-1', Connection: 'Keep-Alive', User-Agent: 'Mozilla/4.0(compatible;IE;GACv7\. 1\. 5192\. 22378)'}
Given headers request_headers
Given url baseUrl+'/public/v2/users'
And path '2138988'
When method GET
Then status 200

Scenario: pass user request with header - part 3
* configure headers = {Content-Type: 'text/xml;charset=ISO-8859-1', Connection: 'Keep-Alive', User-Agent: 'Mozilla/4.0(compatible;IE;GACv7\. 1\. 5192\. 22378)'}
Given url baseUrl+'/public/v2/users'
And path '2138988'
When method GET
Then status 200