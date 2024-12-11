@SanityTest
Feature: Validating basic features functionality
@CreateZapp @developer:rohit
Scenario: Validating Create Zapp Functionality
Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    When I click on "VT=Create zapp" button
    And I click on "VT=Create new"
    And I enter "PH=Enter zapp name" as "Test Zapp"
    And I enter "LABEL2=Description" as "This is Test Zapp"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Review Zapp" button
    And I click on "VT=Launch Zapp" button
    Then I see ToolTip as "Workflow Type created"
    
@CreateDashboard
Scenario: Validating Create Dashboard Functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=Test Zapp"
    And I wait for 2 Seconds
    And I refresh the page
    And I wait for 1 Seconds
     When I click on "TY=plus"
    And I enter dashboard name
    And I click on "NZPH=Select roles" of "VT=View Permissions"
    And I click on "VT=All Org Users"
  # And I click on "VT=System Admin"
    And I click on Tab 
    And I click on "NZPH=Select roles" of "VT=Edit Permissions"
    And I wait for 1 Seconds
   #And I click on "VT=All Org Users"[2]
    And I click on "VT=System Admin"
    And I click on Tab 
    And I click on "VT=Save" button
    And I wait for 1 Seconds
    Then I see ToolTip as "New analytics report created successfully"
    And I wait for 1 Seconds
     When I click on dashboard
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I click on "VT=Add widget" button
    And I click on "VT=data table"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Data Table Widget"
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=New Form Framework"
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT="
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Name"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Form Search"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=User"
    And I click on "VT= Done "
    And I wait for 1 Seconds
   
    
    @CreateUser
    Scenario: Validating Create database functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=Test Zapp"
    And I wait for 1 Seconds
    And I click on Administration
    And I click on "VT=Members"
    And I click on "VT=Invite members" button
    And I enter "PH=name@ex.com / 1234567"[1] as "testserveruser1@gmail.com"
    And I enter name as "TestServer"
    And I click on "VT=Add Attribute"[1] button
    And I enter "PH=Enter Key" as "City"
    And I enter "PH=Value" as "Pune"
    And I click on "VT=Done"
    And I click on "VT=Send Invitations"
    And I wait for 3 Seconds
    
    
    @CreateMasterAndSubmissions
    Scenario: Validating Create database functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=Test Zapp"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    When I enter "PH=Enter database name" as "Form Search Master2"
    And I enter "PH=Explain database in few words" as "This is a Database For Form Search"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "Button=Create" "Button"
    And I wait for 1 Seconds
    Then I see ToolTip as "Form created successfully"
    And I wait for 1 Seconds
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Form Search Master2"
    And I click on "VT=Form Search Master2" 
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Name"
    And I enter "PH=Field label" as "City"
    And I click on "VT=Done"
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "PH=search by title"
    And I enter "PH=search by title" as "Form Search Master2"
    And I click on "VT=Form Search Master2" 
    And I click on "VT=Add" button
    And I enter "LABEL2=City" as "Pune"
    And I click on "VT=Submit" button
    And I click on "VT=Add" button
    And I enter "LABEL2=City" as "Hyd"
    And I click on "VT=Submit" button
    And I click on "VT=Add" button
    And I enter "LABEL2=City" as "Mumbai"
    And I click on "VT=Submit" button
    And I click on "VT=Add" button
    And I enter "LABEL2=City" as "Nashik"
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    
    
    @CreateMasterAndSubmissions
    Scenario: Validating Create database functionality
     Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=Test Zapp"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    When I enter Database name
    And I enter "PH=Explain database in few words" as "This is Test Database"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "Button=Create" "Button"
    And I wait for 1 Seconds
    Then I see ToolTip as "Form created successfully"
    And I wait for 1 Seconds
     When I click on "PH=search by title"
    And I enter the created database name
    And I click on database 
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Name"
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Form Search"
    And I click on "VT=Text Edit"
    And I click on "VT=Form/Database Search"
    And I enter "PH=Field label" as "Form Search"
    And I click on "VT=Use optimized version"
    And I wait for 1 Seconds
    And I click on "VT=Choose Form"
    And I click on "VT=Form Search Master2" from dropdown
    And I click on "VT=Search Field"
    And I click on "VT=City" from dropdown
    And I click on "VT=Select Field"
    And I wait for 1 Seconds
    And I click on "VT=City" from dropdown
    And I click on "VT=Display Field"
    And I wait for 1 Seconds
    And I click on "VT=City" from dropdown
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Field"
    And I enter "PH=Field label" as "User"
    And I click on "VT=Text Edit"
    And I click on "VT=User Search"
    And I enter "PH=Field label" as "User"
    And I click on "VT=Done"
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "PH=search by title"
    And I enter the created database name
    And I click on database 
    And I click on "VT=Add" button
    And I enter "LABEL2=Name" as "Saikumar"
    And I click on "VT=Submit" button
    And I click on "VT=Add" button
    And I enter "LABEL2=City" as "Hyd"
    And I click on "VT=Submit" button
    And I click on "VT=Add" button
    And I enter "LABEL2=City" as "Mumbai"
    And I click on "VT=Submit" button
    
@DoughtnutCHART
Scenario Outline: Adding and Configuration of Doughtnut chart 
Given I navigate to web application
Then I should see page title as "Zvolv"
And I see "VT=Login" web element
When login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|
#And I click on "VT=Login"
Then I see "VT=Zapps" and "VT=Create zapp" web element
And I wait for 1 Seconds
And I click on "VT=End to End"
And I wait for 1 Seconds
And I refresh the page
#//new dashboard
And I wait for 1 Seconds
And I click on "DI=plus"[1] Button
And User enters the "Doughtnut" dashboard title
And I click on "VT=Select roles"
And I click on "VT=All Org Users"
And I click on "VT=Linked Users"
And I click on "VT=System Admin"
And I wait for "2000" milli seconds
And I clicked on cursor
And I click on Edit Permission "VT=Select roles" Dropdown
And User selects the "VT=System Admin"
And User clicked on edit permissin cursor
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on new Created dashboard
And I wait for "2000" milli seconds
#And I click on "VT=Doughtnut"
#And I wait for "5000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for "2000" milli seconds
And User click on "VT=Doughnut Chart" widget
Then User see the labels "Details", "Title", "Description", "Pivot", "Serieses" and "Data Points"
And I enter "PH=Title" as "Doughnut Chart NAME"
And I2 enter "LABEL=Description" as "Doughnut Chart Testing"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
And I click on "VT=Data Points"
And I wait for "2000" milli seconds
And I click on "VT=New Form Framework"
And User click on "VT=Add" Button
And I wait for "2000" milli seconds
And I click on "VT=Choose form" button
And I wait for "2000" milli seconds
And I enter "LABEL1=Choose Form" as "Doughtnut Chart New Master"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "NAME"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
#//Pivot configuration-Count
And I wait for "2000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "100" milli seconds
And I click on "VT=Configure" button
And I wait for "100" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
And I wait for "2000" milli seconds
And I click on "VT=NAME" mouse hover text
And I wait for "2000" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
And I wait for "2000" milli seconds
And I click on "VT=NAME" mouse hover text
And User double clicks on "VT=Summarize by" field "VT=NAME" in Pivot
And User changed the "VT=NAME" to "VT=NameCount" in "VT=Summarize by"[1] pivot
And I click on "VT=SUM" Button
And I wait for "2000" milli seconds
And I click on "VT=COUNT"[1]
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "100" milli seconds
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "NAME"
And I wait for "2000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=NAME" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=NameCount" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for "2000" milli seconds
#//UI verification
Then User see the doughtnut chart division are 3
Then User see the Name Label with count are "DIPAK-3", "ROHIT-2" and "SAI-1"
And I take Screenshot
    
    
