@createTestDBtag
Feature: create DB with different fields

  @DBTesttag1
  Scenario: careate sample DB
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=DFT-Automation-Demo" web element
    When I click on "VT=DFT-Automation-Demo"
    And I move to "VT=Database"
    And I click on "VT=Database" button
    And I click on "VT=Database" button
    And I click on "VT=Create database" button
    And I enter "PH=Enter database name" as "dft-auto-demo-003"
    And I enter "PH=Explain database in few words" as "DFT Test Automation Database"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I wait for "1000" milli seconds
    And I click on "VTEQ=Create" button
    And I enter "PH=search by title" as "dft-auto-demo-003"
    And I click on "VT=dft-auto-demo-003"
    And I wait for "1000" milli seconds
    And I click on "DI=edit"
    And I wait for "1000" milli seconds
    And I click on "VT=Edit Columns"
    And I wait for "1000" milli seconds
    And I click on "VT=Field"
    And I click on "PH=Field label"
    And I enter "PH=Field label" as "First Name"
    And I enter "PH=Hint" as "First name"
    And I wait for "3000" milli seconds
    And I move to "VT=Done"
    And I wait for "5000" milli seconds
    
    @login
    Scenario: careate sample DB
    Given I navigate to web application
    Then I see "VT=LOGIN" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"