@Zvolv
   Feature: ABAC(Attribute Based Access Control) Functionality
   @SubmissionLevelABAC-View
    Scenario Outline: Validating Submission Level ABAC With Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=View Attribute"[1] as "<View Attribute>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value>"
    And I click on Body
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field          |View Attribute |Key             |Value            |
    |VT=Department  |Department     |Department      |IT               |
    |VT=Name        |Name           |Name            |Sayali           |
    |VT=Age         |Age            |Age             |27               |
    |VT=Salary      |Salary         |Salary          |29000            |
    |VT=Designation |Designation    |Designation     |Tester           |
    |VT=Email       |Email          |Email           |sharath@gmail.com|
    |VT=Short Text  |Short Text     |Short Text      |Kalki            |
    |VT=Phone       |Phone          |Phone           |+918888888888    |
    |VT=URL         |URL            |URL             |https://facebook.com|
    |VT=Percent     |Percent        |Percent         |96               |
    |VT=Gender      |Gender         |Gender          |Female           |
    |VT=Indian      |Indian         |Indian          |false            |
    |VT=Tag         |Tag            |Tag             |normal leave     |
    |VT=Date-Picker |Date-Picker    |Date-Picker     |16-05-2024       | 
    |VT=Time-Picker |Time-Picker    |Time-Picker     |01:43 pm         |
    |VT=AutoNumber  |AutoNumber     |AutoNumber      |2          |
    |VT=Date&Time-Picker|Date&Time-Picker |Date&Time-Picker      |16-05-2024 02:02 am         |
  
   @SubmissionLevelABAC-User-View
    Scenario Outline: Validating Submission Level ABAC With Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=View Attribute"[1] as "<View Attribute>"
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=" from dropdown
    #And I click on "VT=AND"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field          |View Attribute |Key             |Value            |
    |VT=Assignee    |Assignee       |Assignee        |Sharath          |
    
      
    @SubmissionLevelABAC-Edit
    Scenario Outline: Validating Submission Level ABAC With Only Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=Edit Attribute"[1] as "<View Attribute>"
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=" from dropdown
    #And I click on "VT=AND"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value>"
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I refresh the page
    #And I click on Edit icon
    #And I click on "DI=edit" of "VT=IT"
    #And I wait for 1 Seconds
    #And I enter "LABELSPAN=Age" as "27"
    #And I click on "VT=Submit" button
    #Then I see ToolTip as "Submission updated successfully"
    #And I wait for 1 Seconds
    #And I click on "DI=edit" of "VT=Testing"
    #And I wait for 1 Seconds
    #And I enter "LABELSPAN=Age" as "27"
    #And I click on "VT=Submit" button
    #Then I see ToolTip as "Submission updated successfully"
    #And I wait for 1 Seconds
    And I wait for 2 Seconds
    
     Examples:
    |Field          |View Attribute |Key             |Value            |
    |VT=Department  |Department     |Department      |IT               |
    |VT=Name        |Name           |Name            |Sayali           |
    |VT=Age         |Age            |Age             |27               |
    |VT=Salary      |Salary         |Salary          |29000            |
    |VT=Designation |Designation    |Designation     |Tester           |
    |VT=Email       |Email          |Email           |sharath@gmail.com|
    |VT=Short Text  |Short Text     |Short Text      |Kalki            |
    |VT=Phone       |Phone          |Phone           |+918888888888    |
    |VT=URL         |URL            |URL             |https://facebook.com|
    |VT=Percent     |Percent        |Percent         |96               |
    |VT=Gender      |Gender         |Gender          |Female           |
    |VT=Indian      |Indian         |Indian          |false            |
    |VT=Tag         |Tag            |Tag             |normal leave     |
    |VT=Date-Picker |Date-Picker    |Date-Picker     |16-05-2024       | 
    |VT=Time-Picker |Time-Picker    |Time-Picker     |01:43 pm         |
    |VT=AutoNumber  |AutoNumber     |AutoNumber      |2          |
    |VT=Date&Time-Picker|Date&Time-Picker |Date&Time-Picker      |16-05-2024 02:02 am         |
    
    @SubmissionLevelABAC-Edit-User
    Scenario Outline: Validating Submission Level ABAC With Only Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=Edit Attribute"[1] as "<View Attribute>"
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=" from dropdown
    #And I click on "VT=AND"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I refresh the page
    #And I click on Edit icon
    #And I click on "DI=edit" of "VT=IT"
    #And I wait for 1 Seconds
    #And I enter "LABELSPAN=Age" as "27"
    #And I click on "VT=Submit" button
    #Then I see ToolTip as "Submission updated successfully"
    #And I wait for 1 Seconds
    #And I click on "DI=edit" of "VT=Testing"
    #And I wait for 1 Seconds
    #And I enter "LABELSPAN=Age" as "27"
    #And I click on "VT=Submit" button
    #Then I see ToolTip as "Submission updated successfully"
    #And I wait for 1 Seconds
    And I wait for 2 Seconds
    
    Examples:
    |Field          |View Attribute |Key             |Value            |
    |VT=Assignee    |Assignee       |Assignee        |Sharath          |
    
    @SubmissionLevelABAC-View-Edit
    Scenario Outline: Validating Submission Level ABAC With Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute>"
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=" from dropdown
    And I enter "PH=Edit Attribute"[1] as "<Attribute>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value>"
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field          |Attribute      |Key             |Value            |
    |VT=Department  |Department     |Department      |IT               |
    |VT=Name        |Name           |Name            |Sayali           |
    |VT=Age         |Age            |Age             |27               |
    |VT=Salary      |Salary         |Salary          |29000            |
    |VT=Designation |Designation    |Designation     |Tester           |
    |VT=Email       |Email          |Email           |sharath@gmail.com|
    |VT=Short Text  |Short Text     |Short Text      |Kalki            |
    |VT=Phone       |Phone          |Phone           |+918888888888    |
    |VT=URL         |URL            |URL             |https://facebook.com|
    |VT=Percent     |Percent        |Percent         |96               |
    |VT=Gender      |Gender         |Gender          |Female           |
    |VT=Indian      |Indian         |Indian          |false            |
    |VT=Tag         |Tag            |Tag             |normal leave     |
    |VT=Date-Picker |Date-Picker    |Date-Picker     |16-05-2024       | 
    |VT=Time-Picker |Time-Picker    |Time-Picker     |01:43 pm         |
    |VT=AutoNumber  |AutoNumber     |AutoNumber      |2          |
    |VT=Date&Time-Picker|Date&Time-Picker |Date&Time-Picker      |16-05-2024 02:02 am         |
    
    @SubmissionLevelABAC-View-Edit
    Scenario Outline: Validating Submission Level ABAC With Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute>"
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=" from dropdown
    And I enter "PH=Edit Attribute"[1] as "<Attribute>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field          |Attribute      |Key             |Value            |
    |VT=Assignee       |Assignee       |Assignee        |Sharath          |
    
    @SubmissionlevelABAC-View-Multiple-OR
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions & Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[1]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
   Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
   @SubmissionlevelABAC-View-Multiple-OR-UserSearch
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions & Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[1]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key2>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value2>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Department  |Department  |VT=Assignee        |Assignee    |Department |IT               |Assignee   |Sharath             |
    |VT=Tag         |Tag         |VT=Assignee        |Assignee    |Tag        |casual leave     |Assignee   |Sharath             |
    
    
   @SubmissionlevelABAC-View-Multiple-AND
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions & Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[1]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
   
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
    @SubmissionlevelABAC-View-Multiple-AND
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions & Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[1]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key2>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value2>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
   
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Department  |Department  |VT=Assignee        |Assignee    |Department |IT               |Assignee   |Sharath             |
    |VT=Tag         |Tag         |VT=Assignee        |Assignee    |Tag        |casual leave     |Assignee   |Sharath             |
    
    @SubmissionlevelABAC-Edit-Multiple-OR
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions & Only Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
    @SubmissionlevelABAC-Edit-Multiple-OR
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions & Only Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key2>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value2>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Department  |Department  |VT=Assignee        |Assignee    |Department |IT               |Assignee   |Sharath             |
    |VT=Tag         |Tag         |VT=Assignee        |Assignee    |Tag        |casual leave     |Assignee   |Sharath             |
    
    
    @SubmissionlevelABAC-Edit-Multiple-AND
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions & Only Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "VT=Department" from dropdown
    And I enter "PH=Edit Attribute"[1] as "Department"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "VT=Designation" from dropdown
    And I enter "PH=Edit Attribute"[2] as "Designation"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "Department"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "IT"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "Designation"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "Tester"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
   @SubmissionlevelABAC-Edit-Multiple-AND
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions & Only Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "VT=Department" from dropdown
    And I enter "PH=Edit Attribute"[1] as "Department"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "VT=Designation" from dropdown
    And I enter "PH=Edit Attribute"[2] as "Designation"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "Department"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "IT"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key2>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value2>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Department  |Department  |VT=Assignee        |Assignee    |Department |IT               |Assignee   |Sharath             |
    |VT=Tag         |Tag         |VT=Assignee        |Assignee    |Tag        |casual leave     |Assignee   |Sharath             |
    
    
    @SubmissionlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[1]
    And I click on "VT=OR"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
   
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
     @SubmissionlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[1]
    And I click on "VT=OR"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key2>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value2>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Department  |Department  |VT=Assignee        |Assignee    |Department |IT               |Assignee   |Sharath             |
    |VT=Tag         |Tag         |VT=Assignee        |Assignee    |Tag        |casual leave     |Assignee   |Sharath             |
    
    
   
   @SubmissionlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[1]
    And I click on "VT=AND"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
   @SubmissionlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[1]
    And I click on "VT=AND"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key2>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value2>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Department  |Department  |VT=Assignee        |Assignee    |Department |IT               |Assignee   |Sharath             |
    |VT=Tag         |Tag         |VT=Assignee        |Assignee    |Tag        |casual leave     |Assignee   |Sharath             |
    
   
   @SubmissionlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[1]
    And I click on "VT=AND"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
   
   Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
   @SubmissionlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[1]
    And I click on "VT=AND"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key2>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value2>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
     
     Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Department  |Department  |VT=Assignee        |Assignee    |Department |IT               |Assignee   |Sharath             |
    |VT=Tag         |Tag         |VT=Assignee        |Assignee    |Tag        |casual leave     |Assignee   |Sharath             |
    
    
   
   @SubmissionlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[1]
    And I click on "VT=OR"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
    @SubmissionlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Submission Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[1]
    And I click on "VT=OR"[2]
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key2>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value2>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Department  |Department  |VT=Assignee        |Assignee    |Department |IT               |Assignee   |Sharath             |
    |VT=Tag         |Tag         |VT=Assignee        |Assignee    |Tag        |casual leave     |Assignee   |Sharath             |
    
    
   @FieldlevelABAC-View
    Scenario Outline: Validating Field Level ABAC With Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute>"
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value>"
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field          |Attribute      |Key             |Value            |
    |VT=Department  |Department     |Department      |IT               |
    |VT=Name        |Name           |Name            |Sayali           |
    |VT=Age         |Age            |Age             |27               |
    |VT=Salary      |Salary         |Salary          |29000            |
    |VT=Designation |Designation    |Designation     |Tester           |
    |VT=Email       |Email          |Email           |sharath@gmail.com|
    |VT=Short Text  |Short Text     |Short Text      |Kalki            |
    |VT=Phone       |Phone          |Phone           |+918888888888    |
    |VT=URL         |URL            |URL             |https://facebook.com|
    |VT=Percent     |Percent        |Percent         |96               |
    |VT=Gender      |Gender         |Gender          |Female           |
    |VT=Indian      |Indian         |Indian          |false            |
    |VT=Tag         |Tag            |Tag             |normal leave     |
    |VT=Date-Picker |Date-Picker    |Date-Picker     |16-05-2024       | 
    |VT=Time-Picker |Time-Picker    |Time-Picker     |01:43 pm         |
    |VT=AutoNumber  |AutoNumber     |AutoNumber      |2          |
    |VT=Date&Time-Picker|Date&Time-Picker |Date&Time-Picker      |16-05-2024 02:02 am         |
    
     @FieldlevelABAC-View
    Scenario Outline: Validating Field Level ABAC With Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute>"
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "TY=checkbox" of "PH=Enter Key"
    #And I click on "VT=Enter value" dropdown
    And I enter Attributes value as "<Value>"
    #And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field          |Attribute      |Key             |Value            |
    |VT=Assignee       |Assignee       |Assignee        |Sharath          |
    
    
   @FieldlevelABAC-Edit
    Scenario Outline: Validating Field Level ABAC With Only Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    #And I click on "VT=Add"
    #And I click on "NZPH=Select Element"[2]
    #And I click on "VT=" from dropdown
    #And I click on "VT=AND"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=Edit Attribute"[1] as "<Attribute>"
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value>"
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I refresh the page
    #And I click on Edit icon
    #And I click on "DI=edit" of "VT=IT"
    #And I wait for 1 Seconds
    #And I enter "LABELSPAN=Age" as "27"
    #And I click on "VT=Submit" button
    #Then I see ToolTip as "Submission updated successfully"
    #And I wait for 1 Seconds
    #And I click on "DI=edit" of "VT=Testing"
    #And I wait for 1 Seconds
    #And I enter "LABELSPAN=Age" as "27"
    #And I click on "VT=Submit" button
    #Then I see ToolTip as "Submission updated successfully"
    #And I wait for 1 Seconds
    And I wait for 2 Seconds
    
    Examples:
    |Field          |Attribute      |Key             |Value            |
    |VT=Department  |Department     |Department      |IT               |
    |VT=Name        |Name           |Name            |Sayali           |
    |VT=Age         |Age            |Age             |27               |
    |VT=Salary      |Salary         |Salary          |29000            |
    |VT=Designation |Designation    |Designation     |Tester           |
    |VT=Email       |Email          |Email           |sharath@gmail.com|
    |VT=Short Text  |Short Text     |Short Text      |Kalki            |
    |VT=Phone       |Phone          |Phone           |+918888888888    |
    |VT=URL         |URL            |URL             |https://facebook.com|
    |VT=Percent     |Percent        |Percent         |96               |
    |VT=Gender      |Gender         |Gender          |Female           |
    |VT=Indian      |Indian         |Indian          |false            |
    |VT=Tag         |Tag            |Tag             |normal leave     |
    |VT=Date-Picker |Date-Picker    |Date-Picker     |16-05-2024       | 
    |VT=Time-Picker |Time-Picker    |Time-Picker     |01:43 pm         |
    |VT=AutoNumber  |AutoNumber     |AutoNumber      |2          |
    |VT=Date&Time-Picker|Date&Time-Picker |Date&Time-Picker      |16-05-2024 02:02 am         |
    
    @FieldlevelABAC-View-Edit
    Scenario Outline: Validating Field Level ABAC With Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute>"
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value>"
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field          |Attribute      |Key             |Value            |
    |VT=Department  |Department     |Department      |IT               |
    |VT=Name        |Name           |Name            |Sayali           |
    |VT=Age         |Age            |Age             |27               |
    |VT=Salary      |Salary         |Salary          |29000            |
    |VT=Designation |Designation    |Designation     |Tester           |
    |VT=Email       |Email          |Email           |sharath@gmail.com|
    |VT=Short Text  |Short Text     |Short Text      |Kalki            |
    |VT=Phone       |Phone          |Phone           |+918888888888    |
    |VT=URL         |URL            |URL             |https://facebook.com|
    |VT=Percent     |Percent        |Percent         |96               |
    |VT=Gender      |Gender         |Gender          |Female           |
    |VT=Indian      |Indian         |Indian          |false            |
    |VT=Tag         |Tag            |Tag             |normal leave     |
    |VT=Date-Picker |Date-Picker    |Date-Picker     |16-05-2024       | 
    |VT=Time-Picker |Time-Picker    |Time-Picker     |01:43 pm         |
    |VT=AutoNumber  |AutoNumber     |AutoNumber      |2          |
    |VT=Date&Time-Picker|Date&Time-Picker |Date&Time-Picker      |16-05-2024 02:02 am         |
    
    @FieldlevelABAC-View-Multiple-OR
    Scenario Outline: Validating Field Level ABAC With Multiple Submissions & Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    #And I click on Close Icon
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute1>"
    And I click on "VT=OR"[1]
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds 
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    #And I click on close icon of Attributes[1]
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
   
   @FieldlevelABAC-View-Multiple-AND
   Scenario Outline: Validating Field Level ABAC With Multiple Submissions & Only View Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[1]
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds 
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
   
   Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
    @FieldlevelABAC-Edit-Multiple-OR
    Scenario Outline: Validating Field Level ABAC With Multiple Submissions & Only Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon 
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[2]
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds 
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
    @FieldlevelABAC-Edit-Multiple-AND
    Scenario Outline: Validating Field Level ABAC With Multiple Submissions & Only Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon 
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[2]
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds 
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    
     Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm         |Date&Time  |16-05-2024 02:02 am |
   
    @FieldlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Field Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon 
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[1]
    And I click on "VT=OR"[2]
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds 
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
   
     Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
   @FieldlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Field Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon 
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=OR"[1]
    And I click on "VT=AND"[2]
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds 
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
   
 Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
   @FieldlevelABAC-View&Edit-Multiple
    Scenario Outline: Validating Field Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I wait for 1 Seconds
    And I click on "VT=Save"[3]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon 
    And I click on "VT=Add" from "VT=Access Control"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[1]
    And I click on "VT=AND"[2]
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds 
    And I click on "VT=Save"
    #And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
   
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
   @FieldlevelABAC-View-AND&Edit-OR-Multiple
    Scenario Outline: Validating Field Level ABAC With Multiple Submissions-View&Edit Attribute
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
    And I enter "PH=search by title" as "New Abac"
    And I wait for 1 Seconds
    And I click on "VT=New Abac"
    And I click on "DI=edit"
    And I click on "VT=Edit Columns"
    And I wait for 2 Seconds
    And I click on Three Dots at Data Points
    And I click on "VT=Form Settings"
    Then I see "VT=Form Properties"
    And I click on "VT=Access Control"
    And I click on Close Icon
    And I wait for 1 Seconds
    And I click on "VT=Save"[2]
    And I wait for 1 Seconds
    And I click on "VT=Name"
    And I click on "VT=Access Control"
    And I click on Close Icon 
    And I click on "VT=Add"
    And I click on "NZPH=Select Element" dropdown
    And I click on "<Field1>" from dropdown
    And I enter "PH=View Attribute"[1] as "<Attribute1>"
    And I enter "PH=Edit Attribute"[1] as "<Attribute1>"
    And I click on "VT=Add"
    And I click on "NZPH=Select Element"[2]
    And I click on "<Field2>" from dropdown
    And I enter "PH=View Attribute"[2] as "<Attribute2>"
    And I enter "PH=Edit Attribute"[2] as "<Attribute2>"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=AND"[1]
    And I click on "VT=OR"[2]
    And I wait for 1 Seconds
    And I click on "VT=Done"
    And I wait for 1 Seconds 
    And I click on "VT=Save"
    ##And I click on "VT=Retrofit Form?"
    And I click on "VT=OK"
    And I wait for 2 Seconds
    And I refresh the page
    And I click on Administration
    And I click on "VT=Members"
    And I click on Three dots of "phani@gmail.com"
    And I click on close icon of Attributes
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key" as "<Key1>"
    And I click on "NZPH=Enter value" dropdown
    And I enter Enter value[1] as "<Value1>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    And I click on "VT=Add another" button
    And I enter "PH=Enter Key"[2] as "<Key2>"
    And I click on "NZPH=Enter value"[2]
    And I enter Enter value[2] as "<Value2>"
    And I wait for 1 Seconds
    And I click on Body
    And I wait for 1 Seconds
    #And I click on "VT=Add another" button
    #And I enter "PH=Enter Key"[2] as "City"
    #And I click on "NZPH=Enter value"[2]
    #And I enter Enter value[2] as "Pune"
    #And I click on Body 
    #And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Save"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    When I enter "PH=Enter email / phone" as "phani@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
     And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=ABAC Test"
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "LI=databases"
    And I wait for 2 Seconds
    And I refresh the page
    And I enter "PH=search by title" as "New Abac"
    And I click on "VT=New Abac"
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
   
    Examples:
    |Field1         |Attribute1  |Field2             |Attribute2  |Key1       |Value1           |Key2       |Value2              |
    |VT=Name        |Name        |VT=Age             |Age         |Name       |Dipak            |Age        |29                 |
    |VT=Indian      |Indian      |VT=Designation     |Designation |Indian     |true             |Designation|Tester              |
    |VT=Gender      |Gender      |VT=Designation     |Designation |Gender     |Male             |Designation|Tester              |
    |VT=Department  |Department  |VT=Tag             |Tag         |Department |IT               |Tag        |casual leave        |
    |VT=Percent     |Percent     |VT=Salary          |Salary      |Salary     |28000            |Percent    |98                  |
    |VT=Phone       |Phone       |VT=Age             |Age         |Age        |28               |Phone      |+918888888888       |
    |VT=Name        |Name        |VT=Short Text      |Short Text  |Name       |Dipak            |Short Text |Kalki               |
    |VT=Email       |Email       |VT=URL             |URL         |Email      |sharath@gmail.com|URL        |https://facebook.com|
    |VT=Name        |Name        |VT=Date-Picker     |Date        |Name       |Dipak            |Date       |16-05-2024          |
    |VT=Date-Picker |Date        |VT=Time-Picker     |Time        |Date       |16-05-2024       |Time       |12:19 pm            |
    |VT=Date-Picker |Date        |VT=Date&Time-Picker|Date&Time   |Date       |16-05-2024       |Date&Time  |16-05-2024 02:02 am |
    |VT=Time-Picker |Time        |VT=Date&Time-Picker|Date&Time   |Time       |12:19 pm        |Date&Time  |16-05-2024 02:02 am |
   
    