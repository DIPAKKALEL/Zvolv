@ZvolvDatabases
Feature: Test Menu Drive Login Functionality
   Background:
        Given login into the zvolv application with below credentials
          |dragon_1|saikumaroffice786@gmail.com|Saik@123|
       
   @DownloadDataBase
   Scenario Outline: Validate Download DB Functionality
   Given User click On Zapp
   And User click on Databases
   And User reload the databases
   And User click on searchbar
   And User Serach the Database name as "Employee Table"
   And User click on Registration Form Database
   Then User should see the database details
   When User click on Download Icon
   And User click on "<type>"
   Then User should see the Downloading file
   
   Examples:
   |type|
   |csv|
   |xlsx|
    
   @CascadedActions-NoSubmit-NoClose
   Scenario: Validating Cascaded Actions Functionality
    When I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    When I enter Database name
    And I enter "PH=Explain database in few words" as "Cascaded Actions Database"
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
    And I enter "PH=Field label" as "Trigger1"
    And I click on "VT=Text Edit"
    And I click on "VT=Automation Trigger"[2]
    And I click on "VT=Choose Automation"
    And I click on "VT=Submissions Bot" 
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Trigger2"
    And I click on "VT=Text Edit"
    And I click on "VT=Automation Trigger"[2]
    And I click on "VT=Choose Automation"
    And I click on "VT=Submission Bot2" 
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Cascade Trigger"
    And I click on "VT=Text Edit"
    And I click on "VT=Cascaded Action"
    And I click on "PH=Select Actions"
    And I click on "VT=Trigger1" from "VT=Configure"
    And I click on "PH=Select Actions"
    And I click on "VT=Trigger2" from "VT=Configure"
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I refresh the page
    And I enter the created database name 
    And I click on database
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I wait for 1 Seconds
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=City" as "Hyderabad"
    And I click on "VT=Cascade Trigger " button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 3 Seconds
   
   @CascadedActions-YesSubmit-NoClose
   Scenario: Validating Cascaded Actions Functionality
    When I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    When I enter Database name
    And I enter "PH=Explain database in few words" as "Cascaded Actions Database"
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
    And I enter "PH=Field label" as "Trigger1"
    And I click on "VT=Text Edit"
    And I click on "VT=Automation Trigger"[2]
    And I click on "VT=Choose Automation"
    And I click on "VT=Submissions Bot" 
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Trigger2"
    And I click on "VT=Text Edit"
    And I click on "VT=Automation Trigger"[2]
    And I click on "VT=Choose Automation"
    And I click on "VT=Submission Bot2" 
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Cascade Trigger"
    And I click on "VT=Text Edit"
    And I click on "VT=Cascaded Action"
    And I click on "PH=Select Actions"
    And I click on "VT=Trigger1" from "VT=Configure"
    And I click on "PH=Select Actions"
    And I click on "VT=Trigger2" from "VT=Configure"
    And I click on "VT=Submit"
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I refresh the page
    And I enter the created database name 
    And I click on database
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I wait for 1 Seconds
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=City" as "Hyderabad"
    And I click on "VT=Cascade Trigger " button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 3 Seconds
    
   @CascadedActions-YesSubmit-YesClose
   Scenario: Validating Cascaded Actions Functionality
    When I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    When I enter Database name
    And I enter "PH=Explain database in few words" as "Cascaded Actions Database"
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
    And I enter "PH=Field label" as "Trigger1"
    And I click on "VT=Text Edit"
    And I click on "VT=Automation Trigger"[2]
    And I click on "VT=Choose Automation"
    And I click on "VT=Submissions Bot" 
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Trigger2"
    And I click on "VT=Text Edit"
    And I click on "VT=Automation Trigger"[2]
    And I click on "VT=Choose Automation"
    And I click on "VT=Submission Bot2" 
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Cascade Trigger"
    And I click on "VT=Text Edit"
    And I click on "VT=Cascaded Action"
    And I click on "PH=Select Actions"
    And I click on "VT=Trigger1" from "VT=Configure"
    And I click on "PH=Select Actions"
    And I click on "VT=Trigger2" from "VT=Configure"
    And I click on "VT=Submit"
    And I click on "VT=Do not close the form"
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I refresh the page
    And I enter the created database name 
    And I click on database
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I wait for 1 Seconds
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=City" as "Hyderabad"
    And I click on "VT=Cascade Trigger " button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 3 Seconds
   
    @CascadedActions-NoSubmit-YesClose
    Scenario: Validating Cascaded Actions Functionality
    When I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    When I enter Database name
    And I enter "PH=Explain database in few words" as "Cascaded Actions Database"
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
    And I enter "PH=Field label" as "Trigger1"
    And I click on "VT=Text Edit"
    And I click on "VT=Automation Trigger"[2]
    And I click on "VT=Choose Automation"
    And I click on "VT=Submissions Bot" 
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Trigger2"
    And I click on "VT=Text Edit"
    And I click on "VT=Automation Trigger"[2]
    And I click on "VT=Choose Automation"
    And I click on "VT=Submission Bot2" 
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Cascade Trigger"
    And I click on "VT=Text Edit"
    And I click on "VT=Cascaded Action"
    And I click on "PH=Select Actions"
    And I click on "VT=Trigger1" from "VT=Configure"
    And I click on "PH=Select Actions"
    And I click on "VT=Trigger2" from "VT=Configure"
    And I click on "VT=Submit"
    And I click on "VT=Do not close the form"
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I refresh the page
    And I enter the created database name 
    And I click on database
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I wait for 1 Seconds
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=City" as "Hyderabad"
    And I click on "VT=Cascade Trigger " button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 3 Seconds
    
    @CascadedAction-BotEntry&UIentry
    Scenario Outline: Validating Cascaded Actions Functionality
    When I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Test Bot Master"
    And I click on "VT=Test Bot Master"
    And I click on "DI=edit"[1]
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Cascaded Action"
    And I click on "<Submit&Do not close>" checkbox
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "Do not close" checkbox
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I refresh the page
    And I wait for 2 Seconds
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Test Bot Master"
    And I wait for 2 Seconds
    And I click on "VT=Test Bot Master"
    And I click on "DI=edit"[1]    
    And I click on "VT=Truncate"
    And I click on "VT=Delete All"
    And I click on "VT=Submit"
    And I click on "VT=OK" button
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=City" as "Hyderabad"
    And I click on "VT=Cascaded Action " button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    
    Examples:
    |Submit&Do not close |
    |Submit-No&Close-Yes |
    |Submit-Yes&Close-Yes|
    |Submit-No&Close-No  |
    |Submit-Yes&Close-No  |
  
  @CascadedAction-BotEntry&UIentry-Matrix
    Scenario Outline: Validating Cascaded Actions Functionality
    When I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Triggers in Matrix"
    And I wait for 1 Seconds
    And I click on "VT=Triggers in Matrix"
    And I click on "DI=edit"[1]
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Cascaded Action"
    And I click on "<Submit&Do not close>" checkbox
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "Do not close" checkbox
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I refresh the page
    And I wait for 2 Seconds
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Triggers in Matrix"
    And I click on "VT=Triggers in Matrix"
    And I click on "DI=edit"[1]    
    And I click on "VT=Truncate"
    And I click on "VT=Delete All"
    And I click on "VT=Submit"
    And I click on "VT=OK" button
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=City" as "Hyderabad"
    And I click on "VT=Cascaded Action " button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    
    Examples:
    |Submit&Do not close |
    |Submit-No&Close-Yes |
    |Submit-Yes&Close-Yes|
    |Submit-No&Close-No  |
    |Submit-Yes&Close-No  |
  
  @CascadedAction-BotEntry&UIentry-Container
    Scenario Outline: Validating Cascaded Actions Functionality
    When I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Triggers in Container"
    And I wait for 1 Seconds
    And I click on "VT=Triggers in Container"
    And I click on "DI=edit"[1]
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Cascaded Action"
    And I click on "<Submit&Do not close>" checkbox
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "Do not close" checkbox
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I refresh the page
    And I wait for 2 Seconds
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Triggers in Container"
    And I click on "VT=Triggers in Container"
    And I click on "DI=edit"[1]    
    And I click on "VT=Truncate"
    And I click on "VT=Delete All"
    And I click on "VT=Submit"
    And I click on "VT=OK" button
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=City" as "Hyderabad"
    And I click on "VT=Cascaded Action " button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    
    Examples:
    |Submit&Do not close |
    |Submit-No&Close-Yes |
    |Submit-Yes&Close-Yes|
    |Submit-No&Close-No  |
    |Submit-Yes&Close-No  |
  
  @CascadedAction-BotEntry&UIentry-Section
    Scenario Outline: Validating Cascaded Actions Functionality
    When I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Triggers in Section"
    And I wait for 1 Seconds
    And I click on "VT=Triggers in Section"
    And I click on "DI=edit"[1]
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Cascaded Action"
    And I click on "<Submit&Do not close>" checkbox
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "Do not close" checkbox
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I refresh the page
    And I wait for 2 Seconds
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Triggers in Section"
    And I click on "VT=Triggers in Section"
    And I click on "DI=edit"[1]    
    And I click on "VT=Truncate"
    And I click on "VT=Delete All"
    And I click on "VT=Submit"
    And I click on "VT=OK" button
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I wait for 1 Seconds
    And I click on "VT=Section" from "VT=NEW"
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=City" as "Hyderabad"
    And I click on "VT=Cascaded Action " button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    
    Examples:
    |Submit&Do not close |
    |Submit-No&Close-Yes |
    |Submit-Yes&Close-Yes|
    |Submit-No&Close-No  |
    |Submit-Yes&Close-No  |
  
  @CascadedAction-BotEntry&UIentry-Tab
    Scenario Outline: Validating Cascaded Actions Functionality
    When I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Triggers in Tab"
    And I wait for 1 Seconds
    And I click on "VT=Triggers in Tab"
    And I click on "DI=edit"[1]
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Cascaded Action"
    And I click on "<Submit&Do not close>" checkbox
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "Do not close" checkbox
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I refresh the page
    And I wait for 2 Seconds
    When I click on "PH=search by title"
    And I enter "PH=search by title" as "Triggers in Tab"
    And I click on "VT=Triggers in Tab"
    And I click on "DI=edit"[1]    
    And I click on "VT=Truncate"
    And I click on "VT=Delete All"
    And I click on "VT=Submit"
    And I click on "VT=OK" button
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=City" as "Hyderabad"
    And I click on "VT=Cascaded Action " button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    
    Examples:
    |Submit&Do not close |
    |Submit-No&Close-Yes |
    |Submit-Yes&Close-Yes|
    |Submit-No&Close-No  |
    |Submit-Yes&Close-No  |
    
    