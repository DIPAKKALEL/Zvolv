#Author: rohit@zvolv.com

@DMS
Feature: DMS

    Background:
    
    Given login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|
    And I click on "VT=Testing_project"
    And I wait for "1000" milli seconds
  

  @DMS
  Scenario: DMS
      And I click on "ICON=layers"
      And I click on "CLASS=ft-grid" [1]
      
