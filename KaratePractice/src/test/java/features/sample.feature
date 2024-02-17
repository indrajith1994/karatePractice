Feature: Print using Karate framework
  
  Scenario: Print Karate Framework
  
  	* print 'Karate Framework'
  	
  Scenario: Print Variable
  
   * def Amount = 100
   * print Amount
   
	Scenario: Concatination
	
		* def a = 10
		* def b = 20
		* print 'concatination = ' +a+b
		* print 'Sum = ' +(a+b)  
		
	Scenario: Multiplication
	
		* def a1 = 30
		* def b1 = 10
		* print 'Multiplication = ' + (a1*b1)