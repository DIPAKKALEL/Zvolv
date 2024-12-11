@registerNewTeams
Feature: Register teams with different categories


  @createNewDB
  Scenario: register different teams with different categories
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    #And I wait for "2000" milli seconds
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone " as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    #And I wait for "1000" milli seconds
    And I click on "VT=DFT-Automation-Demo"
    And I click on "VT=Databases" button
    And I click on "VT=Databases" button
    And I wait for "3000" milli seconds
    And I click on "VT=Create database" button
    And I enter "PH=Enter database name" as "dft-auto-15812"
    And I enter "PH=Explain database in few words" as "DFT Test Automation Database"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I wait for "1000" milli seconds
    And I click on "VTEQ=Create" button
    And I enter "PH=search by title" as "dft-auto-15812"
    And I click on "VT=dft-auto-15812"
    And I click on "DI=edit"
    And I wait for "2000" milli seconds
    And I click on "VT=Edit Columns"
    And I wait for "2000" milli seconds
    And I click on "VT=Field"
    And I click on "PH=Field label"
    And I enter "PH=Field label" as "First Name"
    And I enter "PH=Hint" as "Enter First Name"
    And I click on "VT=Done"
    And I wait for "1000" milli seconds
    And I click on "VT=Field"
    And I click on "PH=Field label"
    And I enter "PH=Field label" as "Last Name"
    And I enter "PH=Hint" as "Enter Last Name"
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I click on "DI=down"
    And I wait for "1000" milli seconds
    And I click on "VT=Dropdown List"
    And I click on "PH=Field label"
    And I enter "PH=Field label" as "Category"
    And I enter "PH=Add option" as "India"
    And I enter "PH=Add option" dropdown value as "India"
    And I click on "VT=Done"
    And I wait for "1000" milli seconds
    And I click on "VT=Field"
    And I click on "DI=down"
    And I click on "VT=Email"
    And I click on "PH=Field label"
    And I enter "PH=Field label" as "Email"
    And I click on "VT=Done"
    And I wait for "1000" milli seconds
    And I click on "VT=Field"
    And I click on "VT=Field"
    And I click on "DI=down"
    And I click on "VT=Phone"
    And I click on "PH=Field label"
    And I enter "PH=Field label" as "Phone"
    And I click on "VT=Done"
    And I wait for "1000" milli seconds
    And I click on "VT=Field"
    And I click on "VT=Field"
    And I click on "DI=down"
    And I click on "VT=Check Box"
    And I click on "PH=Field label"
    And I enter "PH=Field label" as "Check Box"
    And I click on "VT=Done"
    And I wait for "1000" milli seconds
    
    
  @registerNewTeam
  Scenario: register different teams with different categories
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone " as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    And I click on "VT=DFT-Automation-Demo"
    And I click on "VT=Registration"
    #Then I see "VT=Submit" web element
    #And I see "VT=Register" web element
    And I click on "VT=Category" dropdown
    And I click on "VT=Battle of cities"
    When I enter "PH=Enter First Name" as "Mohan" 
    And I enter "PH=Last Name" as "Sridhar"
    And I enter "LABEL=Email" as "mohan.sridhar@dragonflytest.com"
    And I enter "PH=Enter Team Name" as "DFT-Test-Team"
    And I click on "VT=Region" dropdown
    And I click on "VT=India"
    And I enter "PH=Set Password" as "DragonFly@1234"
    And I enter "LABEL=Mobile Number" as "8712969474"
    And I enter "PH=Enter Confirm Password" as "DragonFly@1234"
    And I click on "VT=Submit" form
    And I wait for "5000" milli seconds
    
  @createNewZapp
  Scenario: register different teams with different categories
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone " as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    And I click on "VT=Create zapp" button
    And I click on "VT=Create new"
    And I enter "PH=Enter zapp name" as "DFT Test"
    And I enter "PH=Explain zapp in few words" as "This is automation testing zapp"
    And I wait for "5000" milli seconds
    
    
  @createNewDBTest
  Scenario: register different teams with different categories
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone " as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    And I click on "VT=DFT-Automation-Demo"
    And I click on "VT=Databases" button
    And I click on "VT=Databases" button
    And I wait for "3000" milli seconds
    And I click on "VT=Create database" button
    And I enter "PH=Enter database name" as "dft-auto-375534"
    And I enter "PH=Explain database in few words" as "DFT Test Automation Database"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I wait for "1000" milli seconds
    And I click on "VTEQ=Create" button
    And I wait for "10000" milli seconds
    And I wait for "3000" milli seconds
    
    
    @getInTouch
    Scenario: register different teams with different categories
    Given I navigate to web application
    Then I should see page title as "contact"
    When I enter "LABEL=First Name" as "mohan"
    And I enter "LABEL=Last Name" as "sridhar"
    And I enter "LABEL=Email" as "mohan.sridhar@dragonflytest.com"
    And I enter "LABEL=Mobile" as "8712969474"
    And I click on "VT=Select Topic" dropdown
    And I click on "VT=Others"
    And I enter "LABEL=Company Name" as "DragonFlyTest"
    And I enter "NAME=2" as "This is test message"
    And I click on "VT=Submit" button
    And I wait for "5000" milli seconds
    
   @govGamesRegistration
   Scenario: register different teams with different categories
   Given I navigate to web application
   #Then I should see page title as "staging-govgaves"
   When I click on "VT=Category" dropdown
   And I click on "VT=Battle of the Juniors"
   And I wait for "1000" milli seconds
   And I enter "NAME=firstName" as "Mohan"
   And I enter "NAME=lastName" as "Sridhar"
   And I enter "NAME=email" as "mohan.sridhar@dragonflytest.com"
   And I enter "ID=:r3:" as "8712969474"
   And I enter "NAME=teamName" as "DFT-Test-Team"
   And I click on "VT=Region" dropdown
   And I click on "VT=Dubai"
   And I enter "NAME=password" as "Testing@1234"
   And I enter "NAME=passCheck" as "Testing@1234"
   And I click on "VT=Register" button
   And I wait for "5000" milli seconds
   
   @resemblesystems
   Scenario: register different teams with different categories
   Given I navigate to web application
   And I enter "PH=First Name" as "Mohan"
   And I enter "PH=Last Name" as "Sridhar"
   And I enter "PH=Phone Number" as "8712969474"
   And I enter "PH=Your Email" as "mohan.sridhar@dragonflytest.com"
   And I enter "PH=Enquiry For" as "Automation testing"
   And I enter "PH=Your Message" as "Test Message"
   
   @createNewDBWithTextBox
  Scenario: register different teams with different categories
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone " as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    And I click on "VT=DFT-Automation-Demo"
    And I click on "VT=Databases" button
    And I click on "VT=Databases" button
    And I wait for "1000" milli seconds
    #And I click on "VT=Create database" button
    #And I enter "PH=Enter database name" as "dft-auto-15812"
    #And I enter "PH=Explain database in few words" as "DFT Test Automation Database"
    #And I click on "VT=Next" button
    #And I click on "VT=Next" button
    #And I click on "VT=Next" button
    #And I wait for "1000" milli seconds
    #And I click on "VTEQ=Create" button
    And I enter "PH=search by title" as "dft-auto-17030"
    And I wait for "3000" milli seconds
    And I click on "VT=dft-auto-17030"
    And I click on "DI=edit"
    And I wait for "1000" milli seconds
    And I click on "VT=Edit Columns"
    And I wait for "1000" milli seconds
    And I click on "VT=Field"
    And I click on "PH=Field label"
    And I enter "PH=Field label" as "First Name"
    And I enter "PH=Hint" as "Enter First Name"
    And I enter "PH=Default value" as "This First Name Default Value"
    And I click on "VT=Show as Button"
    And I wait for "1000" milli seconds
    And I click on "VT=Helpers"
    And I wait for "1000" milli seconds
    And I enter "PH=Info text" as "Info text"
    And I enter "PH=Help text" as "Help text"
    And I click on "VT=Data Validation"
    And I click on "VT=Add"
    And I click on "VT=Expression"
    And I click on "VT=Trigger"
    And I move to "VT=Done"
    #And I wait for "5000" milli seconds
    #And I click on "VT=Choose Automation"
    #And I click on "VTJS=Test"
    #And I wait for "5000" milli seconds
    And I enter "PH=Error message" as "Text Error message"
    And I move to "VT=Advanced" and click
    And I move to "VT=Required" and click
    And I wait for "3000" milli seconds
    And I move to "VT=Done" and click
    And I wait for "5000" milli seconds
   
   

    
    	
    
    
