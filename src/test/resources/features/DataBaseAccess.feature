@ZvolvDatabases

    Feature: Database Access Permissions
    @DataBaseLevelPermissions  
    Scenario: Validating Database permissions Functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "Employee Table"
    And I click on "VT=Employee Table"
    And I click on "DI=edit"
    And I click on "VT=Edit"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Private"
    And I click on "VT=×" from "LABEL=Edit"
    And I enter "LI=Edit" as "System Admin"
    And I click on "VT=System Admin" of "VT=Edit"
    And I get "VT=System Admin" of "VT=Edit"
    And I enter "LI=New Entry" as "System Admin"
    And I click on "VT=System Admin" of "VT=New Entry"
    And I get "VT=System Admin" of "VT=New Entry"
    And I click on "VT=×" from "LABEL=View"
    And I wait for 1 Seconds
    And I click on "VT=×" from "LABEL=View"
    And I enter "LI=View" as "System Admin"
    And I click on "VT=System Admin" of "VT=View"
    And I click on "LABEL1=View"
    And I enter "LI=View" as "sai"
    And I click on "VT=Manager@zvolv.com"
    And I get "VT=System Admin" of "VT=Edit"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Next" button
    And I click on "VT=Update" Button
    And I wait for 1 Seconds
    And I click on "DI=close"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "Employee Table"
    And I click on "VT=Employee Table"
    And I wait for 1 Seconds
    And I take Screenshot
  #For New Entry  
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I enter "LABEL3=Employee Name" as "Raju"
    And I enter "LABEL3=Employee ID" as "DFT008"
    And I enter "LABEL3=Role" as "Tester"
    And I click on "VT=Submit" button
    And I wait for 3 Seconds
  #For Edit  
    And I click on "DI=edit"
    And I click on "VT=Edit"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Public"
    And I click on "VT=Next" button
    And I click on "VT=Update" Button
    And I wait for 1 Seconds
    Then I see ToolTip as "Access restricted! You are not authorized to update this resource."
    
    And I wait for 3 Seconds
    
    @DataBaseLevelPermissions2
     Scenario: Validating Database permissions Functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "Database For Testing"
    And I click on "VT=Database For Testing"
    And I click on "DI=edit"
    And I click on "VT=Edit"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Private"
    And I click on "VT=×" from "LABEL=Edit"
    And I enter "LI=Edit" as "System Admin"
    And I click on "VT=System Admin" of "VT=Edit"
    And I get "VT=System Admin" of "VT=Edit"
    And I wait for 1 Seconds
    And I enter "LI=New Entry" as "System Admin"
    And I click on "VT=System Admin" of "VT=New Entry"
    And I get "VT=System Admin" of "VT=New Entry"
    And I click on "VT=×" from "LABEL=View"
    And I wait for 1 Seconds
    And I click on "VT=×" from "LABEL=View"
    And I enter "LI=View" as "System Admin"
    And I click on "VT=System Admin" of "VT=View"
    And I wait for 1 Seconds
    And I enter "LI=View" as "sai"
    And I click on "VT=Manager@zvolv.com"
    And I get "VT=System Admin" of "VT=Edit"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Next" button
    And I click on "VT=Update" Button
    And I wait for 2 Seconds
    And I click on "DI=close"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "TL@zvolv.com "
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "Database For Testing"
    And I wait for 1 Seconds
    And I take Screenshot
    #And I click on "VT=Database For Testing"
    And I wait for 3 Seconds
    
   @DataBaseLevelPermissions3
     Scenario: Validating Database permissions Functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "Tag Master"
    And I click on "VT=Tag Master"
    And I click on "DI=edit"
    And I click on "VT=Edit"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Private"
    And I click on "VT=×" from "LABEL=Edit"
    And I enter "LI=Edit" as "System Admin"
    And I click on "VT=System Admin" of "VT=Edit"
    And I get "VT=System Admin" of "VT=Edit"
    And I enter "LI=New Entry" as "System Admin"
    And I click on "VT=System Admin" of "VT=New Entry"
    And I get "VT=System Admin" of "VT=New Entry"
    And I click on "VT=×" from "LABEL=View"
    And I enter "LI=View" as "System Admin"
    And I click on "VT=System Admin" of "VT=View"
    #And I enter "LI=View" as "sai"
    #And I click on "VT=Manager@zvolv.com"
    And I get "VT=System Admin" of "VT=Edit"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Next" button
    And I click on "VT=Update" Button
    And I wait for 1 Seconds
    And I click on "DI=close"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "Tag Master"
    And I wait for 1 Seconds
    And I take Screenshot
    #And I click on "VT=Database For Testing"
    And I wait for 3 Seconds
    
    
     @FormSearchAccess-with-privateDB
    Scenario: Validating FormSearch Access Functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    When I enter Database name
    And I enter "PH=Explain database in few words" as "City Master Database"
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
    And I wait for 1 Seconds
    And I refresh the page
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Name"
    And I click on "VT=Text Edit"
    And I click on "VT=Form/Database Search"
    And I enter "PH=Field label" as "Form Search"
    #And I click on "VT=Use optimized version"
    And I wait for 1 Seconds
    And I click on "VT=Choose Form"
    And I click on "VT=Sql Employee" from dropdown
    And I click on "VT=Search Field"
    And I click on "VT=ENAME" from dropdown
    And I click on "VT=Select Field"
    And I wait for 1 Seconds
    And I click on "VT=ENAME" from dropdown
    And I click on "VT=Display Field"
    And I wait for 1 Seconds
    And I click on "VT=ENAME" from dropdown
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "Sql Employee"
    And I click on "VT=Sql Employee"
    And I click on "DI=edit"
    And I click on "VT=Edit"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Private"
    And I click on "VT=×" from "LABEL=Edit"
    And I enter "LI=Edit" as "System Admin"
    And I click on "VT=System Admin" of "VT=Edit"
    And I get "VT=System Admin" of "VT=Edit"
    And I enter "LI=New Entry" as "System Admin"
    And I click on "VT=System Admin" of "VT=New Entry"
    And I get "VT=System Admin" of "VT=New Entry"
    And I click on "VT=×" from "LABEL=View"
    And I wait for 1 Seconds
    And I click on "VT=×" from "LABEL=View"
    And I enter "LI=View" as "System Admin"
    And I click on "VT=System Admin" of "VT=View"
    And I enter "LI=View" as "shar"
    And I click on "VT=test@zvolv.com"
    And I get "VT=System Admin" of "VT=Edit"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Next" button
    And I click on "VT=Update" Button
    And I wait for 1 Seconds
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=City"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "City"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "City"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "test@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "City"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    And I refresh the page
    And I click on "DI=close"
    And I wait for 2 Seconds
    And I click on avatar
    And I click on "VT=Logout" button
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "test@zvolv.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    When I click on "PH=search by title"
    And I enter the created database name
    And I click on database
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 5 Seconds
    And I click on "DI=down"
    And I wait for 1 Seconds
    And I take Screenshot
    Then I see "VT=SMITH" web element
    Then I see "VT=ALLEN" web element
    Then I see "VT=WARD" web element
    And I click on "VT=ALLEN"
    And I click on "VT=Submit" button
    And I wait for 5 Seconds
    
    @FormSearchAccess-with-OptimisedVersion
    Scenario: Validating FormSearch Access Functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    When I enter Database name
    And I enter "PH=Explain database in few words" as "City Master Database"
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
    And I wait for 1 Seconds
    And I refresh the page
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Name"
    And I click on "VT=Text Edit"
    And I click on "VT=Form/Database Search"
    And I enter "PH=Field label" as "Form Search"
    And I click on "VT=Use optimized version"
    And I wait for 1 Seconds
    And I click on "VT=Choose Form"
    And I click on "VT=City Master" from dropdown
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
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "City Master"
    And I click on "VT=City Master"
    And I click on "DI=edit"
    And I click on "VT=Edit"
    And I click on "VT=Next" button
    And I click on "VT=Next" button
    And I click on "VT=Private"
    And I click on "VT=×" from "LABEL=Edit"
    And I enter "LI=Edit" as "System Admin"
    And I click on "VT=System Admin" of "VT=Edit"
    And I get "VT=System Admin" of "VT=Edit"
    And I enter "LI=New Entry" as "System Admin"
    And I click on "VT=System Admin" of "VT=New Entry"
    And I get "VT=System Admin" of "VT=New Entry"
    And I click on "VT=×" from "LABEL=View"
    And I wait for 1 Seconds
    And I click on "VT=×" from "LABEL=View"
    And I enter "LI=View" as "System Admin"
    And I click on "VT=System Admin" of "VT=View"
    And I enter "LI=View" as "shar"
    And I click on "VT=test@zvolv.com"
    And I get "VT=System Admin" of "VT=Edit"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Next" button
    And I click on "VT=Update" Button
    And I wait for 1 Seconds
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=City"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "City"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "City"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "test@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "City"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    And I refresh the page
    And I click on "DI=close"
    And I wait for 2 Seconds
    And I click on avatar
    And I click on "VT=Logout" button
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "test@zvolv.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    When I click on "PH=search by title"
    And I enter the created database name
    And I click on database
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 5 Seconds
    And I click on "DI=down"
    And I wait for 1 Seconds
    And I take Screenshot
    
    
    @FormSearchAccess-OptimisedVersion-Series
    Scenario: Validating FormSearch Access Functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    When I enter Database name
    And I enter "PH=Explain database in few words" as "City Master Database"
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
    And I wait for 1 Seconds
    And I refresh the page
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Name"
    And I click on "VT=Text Edit"
    And I click on "VT=Form/Database Search"
    And I enter "PH=Field label" as "Form Search"
    And I click on "VT=Use optimized version"
    And I wait for 1 Seconds
    And I click on "VT=Choose Form"
    And I click on "VT=Form Search Master" from dropdown
    And I click on "VT=Search Field"
    And I click on "VT=Series" from dropdown
    And I click on "VT=Select Field"
    And I wait for 1 Seconds
    And I click on "VT=Series" from dropdown
    And I click on "VT=Display Field"
    And I wait for 1 Seconds
    And I click on "VT=Series" from dropdown
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter the created database name 
    And I click on database
    And I wait for 1 Seconds
     And I click on "VT=Add" button
    #And I wait for 5 Seconds
    And I click on "DI=down"
    And I wait for 2 Seconds
    #And I see "VT=Pune" web element
    And I take Screenshot
    
     @FormSearch-OR 
    Scenario: Validating FormSearch Functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    When I enter Database name
    And I enter "PH=Explain database in few words" as "Master Database"
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
    And I wait for 1 Seconds
    And I refresh the page
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Name"
    And I enter "PH=Field label" as "Name"
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Department"
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I click on "VT=Text Edit"
    And I click on "VT=Form/Database Search"
    And I enter "PH=Field label" as "Form Search"
   # And I click on "VT=Use optimized version"
    And I wait for 1 Seconds
    And I click on "VT=Choose Form"
    And I click on "VT=Employee Master" from dropdown
    And I click on "VT=Search Field"
    And I click on "VT=Employee Name" from dropdown
    And I click on "VT=Select Field"
    And I wait for 1 Seconds
    And I click on "VT=Employee Name" from dropdown
    And I click on "VT=Display Field"
    And I wait for 1 Seconds
    And I click on "VT=Employee Name" from dropdown
    And I click on "VT=Dependencies"
    And I click on Add button on dependencies
    And I click on "VT=Master Form Field"
    And I click on "VT=Employee Name" from dropdown
    And I click on "VT=Form Field" "dropdown"
    And I click on "VT=Name" from dropdown
    And I click on Add button on dependencies
    And I click on Master Form Field
    And I wait for 1 Seconds
    And I click on "VT=Department" from dropdown
    And I click on Form Field
    And I wait for 1 Seconds
    And I click on "VT=Department" from dropdown
    And I click on "VT=Select operator"
    And I click on "VT=OR" from dropdown
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    When I click on "PH=search by title"
    And I enter the created database name
    And I click on database
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=Department" as "Testing"
    And I click on "DI=down"
    And I wait for 1 Seconds
    And I take Screenshot
    Then I see "VT=Saikumar" web element
    Then I see "VT=Mohan" web element
    And I wait for 3 Seconds
    
    @FormSearch-AND
    Scenario: Validating FormSearch Functionality
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    When I enter Database name
    And I enter "PH=Explain database in few words" as "Master Database"
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
    And I wait for 1 Seconds
    And I refresh the page
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on "VT=Name"
    And I enter "PH=Field label" as "Name"
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I enter "PH=Field label" as "Department"
    And I click on "VT=Done"
    And I click on "VT=Field"
    And I click on "VT=Text Edit"
    And I click on "VT=Form/Database Search"
    And I enter "PH=Field label" as "Form Search"
    #And I click on "VT=Use optimized version"
    And I wait for 1 Seconds
    And I click on "VT=Choose Form"
    And I click on "VT=Employee Master" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=Search Field"
    And I click on "VT=Employee Name" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=Select Field"
    And I click on "VT=Employee Name" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=Display Field"
    And I wait for 1 Seconds
    And I click on "VT=Employee Name" from dropdown
    And I click on "VT=Dependencies"
    And I click on Add button on dependencies
    And I click on "VT=Master Form Field"
    And I wait for 1 Seconds
    And I click on "VT=Employee Name" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=Form Field" "dropdown"
    And I click on "VT=Name" from dropdown
    And I click on Add button on dependencies
    And I click on Master Form Field
    And I wait for 1 Seconds
    And I click on "VT=Department" from dropdown
    And I click on Form Field
    And I wait for 1 Seconds
    And I click on "VT=Department" from dropdown
    And I click on "VT=Select operator"
    And I click on "VT=AND" from dropdown
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    And I click on "VT=OK"
    And I wait for 1 Seconds
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    When I click on "PH=search by title"
    And I enter the created database name
    And I click on database
    And I wait for 1 Seconds
    And I click on "VT=Add" button
    And I enter "LABEL3=Name" as "Saikumar"
    And I enter "LABEL3=Department" as "Testing"
    And I click on "DI=down"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 3 Seconds
   
    
    
    #@FormSearchAccess
    #Scenario: Validating FormSearch Access Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    #When I enter Database name
    #And I enter "PH=Explain database in few words" as "City Master Database"
    #And I click on "VT=Next" button
    #And I click on "VT=Next" button
    #And I click on "VT=Next" button
    #And I click on "Button=Create" "Button"
    #And I wait for 1 Seconds
    #Then I see ToolTip as "Form created successfully"
    #And I wait for 1 Seconds
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database 
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Name"
    #And I click on "VT=Text Edit"
    #And I click on "VT=Form/Database Search"
    #And I enter "PH=Field label" as "Form Search"
    #And I click on "VT=Use optimized version"
    #And I wait for 1 Seconds
    #And I click on "VT=Choose Form"
    #And I click on "VT=City Master" from dropdown
    #And I click on "VT=Search Field"
    #And I click on "VT=City" from dropdown
    #And I click on "VT=Select Field"
    #And I wait for 1 Seconds
    #And I click on "VT=City" from dropdown
    #And I click on "VT=Display Field"
    #And I wait for 1 Seconds
    #And I click on "VT=City" from dropdown
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    #And I click on "VT=OK"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "City Master"
    #And I click on "VT=City Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=City"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "City"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "City"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "test@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "City"
   #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
   #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "test@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database
    #And I wait for 1 Seconds
    #And I click on "VT=Add" button
    #And I wait for 5 Seconds
    #And I click on "DI=down"
    #And I wait for 1 Seconds
    #And I see "VT=Pune" web element
    #And I take Screenshot
    #And I wait for 5 Seconds
    #And I click on Body
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on "DI=close"
    #And I wait for 1 Seconds
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database
    #And I click on "VT=Add" button
    #And I click on "DI=down"
    #
    #And I see "VT=Pune" web element
    #
     #And I wait for 3 Seconds
     #
     #
     
     #@DatabaseFiledLevelPermissions
    #Scenario: Validating Database Permissions Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Employee Master"
    #And I click on "VT=Employee Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Department"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=View Field" as "Department"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=Edit Field" as "Department"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Department"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Department"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "Manager@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Department"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "IT"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Employee Master"
    #And I click on "VT=Employee Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #
    #And I wait for 3 Seconds
    #
    #@DatabaseUserLevelPermissions
    #Scenario: Validating Database Permissions Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "User Access"
    #And I click on "VT=User Access"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Assignee"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=View Field" as "User"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=Edit Field" as "User"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "User"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "User"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "Test1@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "User"
    #And I click on "TY=checkbox" of "PH=Enter Key"
    #And I enter Attributes value as "Sharath"
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Test1@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "User Access"
    #And I click on "VT=User Access"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #
    #And I wait for 3 Seconds
    #
    
     
    #@FormSearchAccess-OptimisedVersion
    #Scenario: Validating FormSearch Access Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    #When I enter Database name
    #And I enter "PH=Explain database in few words" as "City Master Database"
    #And I click on "VT=Next" button
    #And I click on "VT=Next" button
    #And I click on "VT=Next" button
    #And I click on "Button=Create" "Button"
    #And I wait for 1 Seconds
    #Then I see ToolTip as "Form created successfully"
    #And I wait for 1 Seconds
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database 
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Name"
    #And I click on "VT=Text Edit"
    #And I click on "VT=Form/Database Search"
    #And I enter "PH=Field label" as "Form Search"
    #And I click on "VT=Use optimized version"
    #And I wait for 1 Seconds
    #And I click on "VT=Choose Form"
    #And I click on "VT=City Master" from dropdown
    #And I click on "VT=Search Field"
    #And I click on "VT=City" from dropdown
    #And I click on "VT=Select Field"
    #And I wait for 1 Seconds
    #And I click on "VT=City" from dropdown
    #And I click on "VT=Display Field"
    #And I wait for 1 Seconds
    #And I click on "VT=City" from dropdown
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    #And I click on "VT=OK"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "City Master"
    #And I click on "VT=City Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=City"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "City"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "City"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "test@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "City"
   #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
   #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "test@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database
    #And I wait for 1 Seconds
    #And I click on "VT=Add" button
    #And I wait for 5 Seconds
    #And I click on "DI=down"
    #And I wait for 2 Seconds
    #Then I see "VT=Pune"
    #And I take Screenshot
    #And I wait for 5 Seconds
    #And I click on Body
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on "DI=close"
    #And I wait for 1 Seconds
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database
    #And I click on "VT=Add" button
    #And I click on "DI=down"
    #
    #And I see "VT=Pune" web element
    #
     #And I wait for 3 Seconds
     
     
    #@FormSearchAccess2
    #Scenario: Validating FormSearch Access Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I click on "VT=Create database" button
    #Then I see "VT=Create new database" web element
    #When I enter Database name
    #And I enter "PH=Explain database in few words" as "City Master Database"
    #And I click on "VT=Next" button
    #And I click on "VT=Next" button
    #And I click on "VT=Next" button
    #And I click on "Button=Create" "Button"
    #And I wait for 1 Seconds
    #Then I see ToolTip as "Form created successfully"
    #And I wait for 1 Seconds
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database 
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Name"
    #And I click on "VT=Text Edit"
    #And I click on "VT=Form/Database Search"
    #And I enter "PH=Field label" as "Form Search"
    #And I click on "VT=Use optimized version"
    #And I wait for 1 Seconds
    #And I click on "VT=Choose Form"
    #And I click on "VT=City Master" from dropdown
    #And I click on "VT=Search Field"
    #And I click on "VT=City" from dropdown
    #And I click on "VT=Select Field"
    #And I wait for 1 Seconds
    #And I click on "VT=City" from dropdown
    #And I click on "VT=Display Field"
    #And I wait for 1 Seconds
    #And I click on "VT=City" from dropdown
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    #And I click on "VT=OK"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "City Master"
    #And I click on "VT=City Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit"
    #And I click on "VT=Next" button
    #And I click on "VT=Next" button
    #And I click on "VT=Private"
    #And I click on "VT=×" from "LABEL=Edit"
    #And I enter "LI=Edit" as "System Admin"
    #And I click on "VT=System Admin" of "VT=Edit"
    #And I get "VT=System Admin" of "VT=Edit"
    #And I enter "LI=New Entry" as "System Admin"
    #And I click on "VT=System Admin" of "VT=New Entry"
    #And I get "VT=System Admin" of "VT=New Entry"
    #And I click on "VT=×" from "LABEL=View"
    #And I wait for 1 Seconds
    #And I click on "VT=×" from "LABEL=View"
    #And I enter "LI=View" as "System Admin"
    #And I click on "VT=System Admin" of "VT=View"
    #And I enter "LI=View" as "shar"
    #And I click on "VT=test@zvolv.com"
    #And I get "VT=System Admin" of "VT=Edit"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Next" button
    #And I click on "VT=Update" Button
    #And I wait for 1 Seconds
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=City"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "City"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "City"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "test@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "City"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database
    #And I wait for 1 Seconds
    #And I click on "VT=Add" button
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 5 Seconds
    #And I click on "DI=down"
    #And I see "VT=Pune" web element
    #And I wait for 5 Seconds
    
   
    
    
    
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Series"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Series"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Series"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I wait for 1 Seconds
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "test@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "City"
   #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
   #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "test@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database
    #And I click on "VT=Add" button
    #And I wait for 5 Seconds
    #And I click on "DI=down"
    #And I wait for 2 Seconds
    #And I take Screenshot
    #And I wait for 5 Seconds
    #And I click on Body
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on "DI=close"
    #And I wait for 1 Seconds
    #When I click on "PH=search by title"
    #And I enter the created database name
    #And I click on database
    #And I click on "VT=Add" button
    #And I click on "DI=down"
    #
    #And I see "VT=Pune" web element
    #
     #And I wait for 3 Seconds
     #
     
    
    
   
    #@DatabaseFiledLevelPermissions-TwoUsers
    #Scenario: Validating Database Permissions Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Age"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=View Field" as "Department"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=Edit Field" as "Department"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Age"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Age"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Salary"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Salary"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Salary"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "Manager@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Age"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "24"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #
    #And I click on Three dots of "TL@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Salary"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "19000"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #
    #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 3 Seconds
    #And I click on "DI=close"
    #And I wait for 1 Seconds
    #And I click on avatar
    #And I click on "VT=Logout" button
    #
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "TL@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 3 Seconds
    #
    #@DatabaseFiledLevelPermissions-TwoUsers2
    #Scenario: Validating Database Permissions Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Age"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=View Field" as "Department"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=Edit Field" as "Department"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Age"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Age"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Salary"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Salary"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Salary"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Name"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Name"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Name"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Department"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Department"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Department"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "Manager@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Age"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "24"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter Enter Key[2] as "Name"
    #And I wait for 1 Seconds
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[2] as "Rohith"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #
    #And I click on Three dots of "TL@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Salary"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "19000"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter Enter Key[2] as "Department"
     #And I wait for 1 Seconds
    #And I click on "NZPH=Enter value" dropdown
     #And I enter Enter value[2] as "Developer"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #
    #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 3 Seconds
    #And I click on "DI=close"
    #And I wait for 1 Seconds
    #And I click on avatar
    #And I click on "VT=Logout" button
    #
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "TL@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 3 Seconds
    #
    #@DatabaseFiledLevelPermissions-TwoUsers3
    #Scenario: Validating Database Permissions Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Age"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=View Field" as "Department"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=Edit Field" as "Department"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Age"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Age"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Salary"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Salary"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Salary"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
     #And I click on "VT=Name"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Name"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Name"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
     #And I click on "VT=Department"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Department"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Department"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
     #And I click on "VT=Designation"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Designation"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Designation"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
     #And I click on "VT=Employee ID"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Employee ID"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Employee ID"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
     #And I click on "VT=Employee Name"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Employee Name"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Employee Name"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
     #And I click on "VT=Company"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Company"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Company"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
     #And I click on "VT=State"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "State"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "State"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
     #And I click on "VT=City"
    #And I click on "VT=Advanced"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "City"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "City"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "Manager@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Age"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "24"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #
    #And I click on Three dots of "TL@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Salary"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "19000"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #
    #And I click on Three dots of "socore2042@pursip.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Department"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Developer"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #
    #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 3 Seconds
    #And I click on "DI=close"
    #And I wait for 1 Seconds
    #And I click on avatar
    #And I click on "VT=Logout" button
    #
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "TL@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 3 Seconds
    #And I click on "DI=close"
    #And I wait for 1 Seconds
    #And I click on avatar
    #And I click on "VT=Logout" button
    #
     #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "socore2042@pursip.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #
    #And I wait for 3 Seconds
    #
    #@DatabaseSubmissionLevel-AND-OnlyView 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=AND"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[3]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseSubmissionLevel-OR-OnlyView 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[3]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
   #
   #@DatabaseSubmissionLevel-AND-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=AND"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseSubmissionLevel-OR-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
  #
    #@DatabaseSubmissionLevel-OR-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=AND"
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
  #
   #@DatabaseSubmissionLevel-OR-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseSubmissionLevel-OR-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=AND"
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseSubmissionLevel-OR-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseSubmissionLevel-OR-View&Edit
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseSubmissionLevel-OR-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseSubmissionLevel-OR-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
 #
 #@DatabaseSubmissionLevel-OR-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=AND"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
 #
    #@DatabaseSubmissionLevel-OR-View&Edit 
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee ID"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "1111"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseFieldlevelAbac-View-AND
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Employee Name"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "DI=down"[2]
    #And I click on "VT=AND"
    #And I click on "DI=down"[4]
    #And I click on "VT=Employee Designation" from dropdown
    #And I click on "VT=City" from dropdown
    #And I click on Body
    #And I click on "VT=Done"
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #
    #
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee Designation"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "TESTER"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
  #
  #
   #@DatabaseFieldlevelAbac-View-OR
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Employee Name"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "DI=down"[2]
    #And I click on "VT=OR"
    #And I click on "DI=down"[4]
    #And I click on BackSpace
    #And I click on BackSpace
    #And I click on "VT=Employee Designation" from dropdown
    #And I click on "VT=City" from dropdown
    #And I click on Body
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Done"
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #
    #
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee Designation"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "TESTER"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseFieldlevelAbac-Edit-AND
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Employee Name"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "DI=down"[3]
    #And I click on "VT=AND"
    #And I click on "DI=down"[4]
    #And I click on BackSpace
    #And I click on BackSpace
    #And I wait for 2 Seconds
    #And I click on Body
    #And I click on "DI=down"[5]
    #And I click on BackSpace
    #And I click on BackSpace
    #And I click on "VT=Employee Designation" from dropdown
    #And I click on "VT=City" from dropdown
    #And I click on Body
    #And I wait for 2 Seconds
    #And I take Screenshot
    #And I click on "VT=Done"
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #
    #
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee Designation"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "TESTER"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
    #@DatabaseFieldlevelAbac-Edit-OR
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Employee Name"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "DI=down"[3]
    #And I click on "VT=OR"
    #And I click on "DI=down"[4]
    #And I click on BackSpace
    #And I click on BackSpace
    #And I wait for 2 Seconds
    #And I click on Body
    #And I click on "DI=down"[5]
    #And I click on BackSpace
    #And I click on BackSpace
    #And I click on "VT=Employee Designation" from dropdown
    #And I click on "VT=City" from dropdown
    #And I click on Body
    #And I wait for 2 Seconds
    #And I take Screenshot
    #And I click on "VT=Done"
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #
    #
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee Designation"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "TESTER"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
    #
     #@DatabaseFieldlevelAbac-View-AND&Edit-AND
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Employee Name"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "DI=down"[3]
    #And I click on "VT=OR"
    #And I click on "DI=down"[4]
    #And I click on BackSpace
    #And I click on BackSpace
    #And I wait for 2 Seconds
    #And I click on Body
    #And I click on "DI=down"[5]
    #And I click on BackSpace
    #And I click on BackSpace
    #And I click on "VT=Employee Designation" from dropdown
    #And I click on "VT=City" from dropdown
    #And I click on Body
    #And I wait for 2 Seconds
    #And I take Screenshot
    #And I click on "VT=Done"
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #
    #
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee Designation"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "TESTER"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
  #
   #@DatabaseFieldlevelAbac-Edit-OR
    #Scenario: Validating Submission Level Abac Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I wait for 1 Seconds
    #And I click on "VT=Abac Master"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Employee Name"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "DI=down"[3]
    #And I click on "VT=OR"
    #And I click on "DI=down"[4]
    #And I click on BackSpace
    #And I click on BackSpace
    #And I wait for 2 Seconds
    #And I click on Body
    #And I click on "DI=down"[5]
    #And I click on BackSpace
    #And I click on BackSpace
    #And I click on "VT=Employee Designation" from dropdown
    #And I click on "VT=City" from dropdown
    #And I click on Body
    #And I wait for 2 Seconds
    #And I take Screenshot
    #And I click on "VT=Done"
    #And I click on Three Dots at Data Points
    #And I click on "VT=Form Settings"
    #Then I see "VT=Form Properties"
    #And I click on "VT=Submission Level Attribute-Based Access Control (ABAC)"
    #And I click on Close Icon
    #And I click on Close Icon
    #
    #
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element" dropdown
    #And I click on "VT=Employee ID" from dropdown
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=City" from dropdown
    #And I click on "DI=down"
    #And I click on "VT=OR"
    #And I click on "TY=checkbox"[1]
    #And I click on "TY=checkbox"[2]
    #And I click on "TY=checkbox"[3]
    #And I click on "TY=checkbox"[4]
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"[3]
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I refresh the page
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "phani@gmail.com"
    #And I click on close icon of Attributes[1]
    #And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Employee Designation"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "TESTER"
    #And I click on Body
    #And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #When I enter "PH=Enter email / phone" as "phani@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "Abac Master"
    #And I click on "VT=Abac Master"
    #And I wait for 1 Seconds
    #And I take Screenshot
    #And I wait for 2 Seconds
  #
     #@DatabaseFiledLevelPermissions-OR
    #Scenario: Validating Database Permissions Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #And I wait for 5 Seconds
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Salary"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "LABEL1=View Field" dropdown
   # And I clear Submission If any
    #And I enter "LI=View Field" as "Designation"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=Edit Field" as "Department"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Department"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Department"
    #And I click on "VT2=View Operator" downarrow
    #And I click on "VT=OR" from dropdown
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "Manager@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Designation"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Manager"
    #And I enter Enter value[1] as "Testing"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on "VT=A" "avatar"
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #
    #And I wait for 3 Seconds
    #
    #@DatabaseFiledLevelPermissions-AND
    #Scenario: Validating Database Permissions Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #And I wait for 5 Seconds
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Salary"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "LABEL1=View Field" dropdown
   # And I clear Submission If any
    #And I enter "LI=View Field" as "Designation"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=Edit Field" as "Department"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Department"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Department"
    #And I click on "VT2=View Operator" downarrow
    #And I click on "VT=AND" from dropdown
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "Manager@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Designation"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Manager"
    #And I enter Enter value[1] as "Testing"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on "VT=A" "avatar"
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #
    #And I wait for 3 Seconds
    #
    #@DatabaseFiledLevelPermissions-View-Edit-OR
    #Scenario: Validating Database Permissions Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #And I wait for 5 Seconds
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Salary"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "LABEL1=View Field" dropdown
   # And I clear Submission If any
    #And I enter "LI=View Field" as "Designation"
    #And I enter "LI=Edit Field" as "Designation"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=Edit Field" as "Department"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Department"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Department"
    #And I click on "VT2=View Operator" downarrow
    #And I click on "VT=OR" from dropdown
    #And I click on "VT2=Edit Operator" downarrow
    #And I click on "VT=OR" from dropdown
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "Manager@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Designation"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "Manager"
    #And I enter Enter value[1] as "Testing"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on "VT=A" "avatar"
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #
    #And I wait for 3 Seconds
    #
    #@DatabaseFiledLevelPermissions2
    #Scenario: Validating Database Permissions Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I wait for 1 Seconds
    #And I click on "LI=databases"
    #And I wait for 2 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I click on "DI=edit"
    #And I click on "VT=Edit Columns"
    #And I wait for 2 Seconds
    #And I click on "VT=Age"
    #And I click on "VT=Advanced"
    #And I click on "VT=Field Level Attribute-Based Access Control (ABAC)"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=View Field" as "Department"
    #And I click on "LABEL1=View Field" dropdown
    #And I enter "LI=Edit Field" as "Department"
    #And I enter "PH=User Attribute" of "VT=View Submission" as "Age"
    #And I enter "PH=User Attribute" of "VT=Edit Submission" as "Department"
    #And I click on "VT=Done"
    #And I wait for 1 Seconds
    #And I click on "VT=Save" button
    #And I click on "VT=Retrofit Form?"
    #And I click on "VT=OK"
    #And I click on Administration
    #And I click on "VT=Members"
    #And I click on Three dots of "Manager@zvolv.com"
    #And I click on close icon of Attributes[1]
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key" as "Age"
    #And I click on "NZPH=Enter value" dropdown
    #And I enter Enter value[1] as "24"
    #And I click on Body 
    #And I wait for 1 Seconds
    #And I click on "VT=Save"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I click on avatar
    #And I click on "VT=Logout" button
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "LI=databases"
    #And I wait for 1 Seconds
    #And I refresh the page
    #And I enter "PH=search by title" as "New Abac"
    #And I click on "VT=New Abac"
    #And I refresh the page
    #And I click on "NZS=edit" icon from "VT=Saikumar"
    #And I enter "LABEL3=Age" as "25"
    #And I click on "VT=Submit" button
    #Then I see ToolTip as "Access restricted! You are not authorized to update this resource."
    #
    #And I wait for 3 Seconds
    #
     
    