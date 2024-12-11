@UserManagement
Feature: User Management and Role Managemenet 500k Users 

  
    Background: 
    	Given login into the Testing zvolv application with below credentials
      |dragon_1|user48302@zvolv.com|User@123|
      And I wait for 2 Seconds
      And I click on "VTJS=UserManagement500K" button
      And I wait for 2 Seconds
      And I move to "VT=Administration" Button
      And I wait for 2 Seconds      
	#		And I click on "VT=Administration"
	  	And I click on "VT=Members" button
      And I wait for 2 Seconds
  
  @IMPORTUSER
  Scenario: Importing User through the Excel file
  And I Import the user through 30 templete of excel file
     
      
 @ABAConUser
  Scenario: Activating User and appling ABAC
  	Given I activate added user and applies ABAC
  	
 @ABAConUser1
  Scenario: Activating User and appling ABAC
  	Given I1 activate added user and applies ABAC
  	
 @ABAConUser2
  Scenario: Activating User and appling ABAC
  	Given I2 activate added user and applies ABAC
  	
 @ABAConUser3
  Scenario: Activating User and appling ABAC
  	Given I3 activate added user and applies ABAC
  	
 @ABAConUser4
  Scenario: Activating User and appling ABAC
  	Given I4 activate added user and applies ABAC
  	
@ABAConUser5
  Scenario: Activating User and appling ABAC
  	Given I5 activate added user and applies ABAC
  	
@ABAConUser6
  Scenario: Activating User and appling ABAC
  	Given I6 activate added user and applies ABAC
  	
 @ABAConUser7
  Scenario: Activating User and appling ABAC
  	Given I7 activate added user and applies ABAC
  	
@ABAConUser8
  Scenario: Activating User and appling ABAC
  	Given I8 activate added user and applies ABAC 	 	 	

@ABAConUser9
  Scenario: Activating User and appling ABAC
  	Given I9 activate added user and applies ABAC 
  	
@ABAConUser10
  Scenario: Activating User and appling ABAC
  	Given I10 activate added user and applies ABAC 
  	
@ABAConUser11
  Scenario: Activating User and appling ABAC
  	Given I11 activate added user and applies ABAC   
  	
@ABAConUser12
  Scenario: Activating User and appling ABAC
  	Given I12 activate added user and applies ABAC 
  	
@ABAConUser13
  Scenario: Activating User and appling ABAC
  	Given I13 activate added user and applies ABAC 
  	
@ABAConUser14
  Scenario: Activating User and appling ABAC
  	Given I14 activate added user and applies ABAC 
  	
@ABAConUser15
  Scenario: Activating User and appling ABAC
  	Given I15 activate added user and applies ABAC 
  
 
  	

 
