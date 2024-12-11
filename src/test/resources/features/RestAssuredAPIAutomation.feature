@RestAPI
Feature: Sample Restful API automation
  Learing Rest API automation all request

  @get
  Scenario: Get Request Rest API Automation
    Given I set the base URI to "https://reqres.in/api/users"
    When I send Get request
    Then I receive a 200 status code
    And I receive a response "Michael"

  @post
  Scenario: Post request of Rest API Automation
    Given I set the base URI to "https://jsonplaceholder.typicode.com"
    When I send Post request to:
					"""
      {
        "name": "John Doe",
        "username": "john_doe",
        "email": "john.doe@example.com",
        "password": "password123"
      }
      """
    Then I receive a 201 status code
    Then I verify the json value "name:John Doe"
    Then I verify the json value "username:john_doe"
    Then I verify the json value "email:john.doe@example.com"
    Then I verify the json value "password:password123"
    
   @UpdateQuery
   Scenario: Update query co-relation of API
   Given I set the base URI to "https://reqres.in/api/users"
   When I send Get request
   Then I receive a 200 status code
   And I receive a response "Michael"
   When I set the base URI to "https://reqres.in/api/users"
   Then I send the Post request using response previous API response :
   """
   {
        "name": "John Doe",
        "username": "john_doe",
        "email": "john.doe@example.com",
        "password": "password123"
      }
      """
		 Then I receive a 201 status code
   
