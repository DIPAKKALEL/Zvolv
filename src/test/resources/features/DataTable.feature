@ZvolvDashboards @RERUN
    Feature: Card List, Data Table and DataTable-ChildTable
    
    Background:
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I wait for 5 Seconds
    And I take Screenshot
    And I wait for 2 Seconds
    And I refresh the page
    And I wait for 1 Seconds
   
    @CardList
    Scenario: Validating Card List Widget Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
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
    
    And I click on dashboard
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I wait for 1 Seconds
    And I click on "VT=Add widget" button
    And I click on "VT=Card List"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Card List"
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=New Form Framework"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Card List Database"
   # And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Employee Name"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Card List Database"
    #And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Employee ID"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Card List Database"
    #And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Department"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Card Config"
    And I click on "VT=Configure" button from "VT=Card Config"
    And I click on "NZPH=Select data point" of "VT=Card title"
    And I click on "VT=Employee Name" from dropdown
    And I click on "NZPH=Select data point" of "VT=Card subtitle"
     And I wait for 1 Seconds
    And I click on "VT=Employee Name" from dropdown
    And I click on "NZPH=Select data point" of "VT=Card description"
     And I wait for 1 Seconds
    And I click on "VT=Employee Name" from dropdown
    And I click on "NZPH=Select data point" of "VT=Card status"
     And I wait for 1 Seconds
    And I click on "VT=Employee Name" from dropdown
    And I click on "NZPH=Select data point" of "VT=Card label"
     And I wait for 1 Seconds
    And I click on "VT=Employee Name" from dropdown
    And I click on "NZPH=Select data point" of "VT=Card content"
     And I wait for 1 Seconds
    And I click on "VT=Department" from dropdown
    And I wait for 1 Seconds
    And I click on Body
    And I click on "NZPH=Select data point" of "VT=Card Tags"
     And I wait for 1 Seconds
    And I click on "VT=Employee ID" from dropdown
    And I wait for 1 Seconds
    And I click on Body
    And I click on "NZPH=Select data point" of "VT=Select Action"
     And I wait for 1 Seconds
    And I click on "VT=Open Form Submission" from dropdown
    And I click on "NZPH=Select data point" of "VT=Map data point"
     And I wait for 1 Seconds
    And I click on "VT=Employee Name" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Save" button
    And I refresh the page
  
    And I wait for 5 Seconds
       
    @DataTable
    Scenario: Validating DataTable Widget Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
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
    And I wait for 1 Seconds    
    And I click on "VT=Add widget" button
    And I click on "VT=data table"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Data Table"
    And I click on "VT=Data Points"
    And I wait for 2 Seconds
    And I click on "VT=New Form Framework"
    And I wait for 2 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    #And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Category"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    #And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=First Name"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    
    And I click on "VT=Registration Form"
    #And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Last Name"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    #And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Age"
    And I click on "VT= Done "
    And I wait for 1 Seconds
     And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    #And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Gender"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
     #And I click on "VT=Add" button from "VT=Data Points"
    #And I click on "LABEL=Choose Form" dropdown
    #And I click on "VT=Registration Form"
   # And I wait for 1 Seconds
    #And I click on "LABEL=Choose Field" dropdown
    #And I click on "VT=Department"
    #And I click on "VT= Done "
    #And I wait for 1 Seconds
    #And I click on "VT=Add" button from "VT=Data Points"
    #And I click on "LABEL=Choose Form" dropdown
    #And I click on "VT=Registration Form"
    #And I wait for 1 Seconds
    #And I click on "LABEL=Choose Field" dropdown
    #And I click on "VT=Age"
    #And I click on "VT= Done "
    #And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Mobile"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
     And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Email"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Start Date"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=End Date"
    And I click on "VT= Done "
    And I wait for 1 Seconds
     And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Start Time"
    And I click on "VT= Done "
    And I wait for 1 Seconds
     And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Date&Time"
    And I click on "VT= Done "
    And I wait for 1 Seconds
     And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=File Upload"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=URL"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Currency"
    And I click on "VT= Done "
    And I wait for 1 Seconds  
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Tag"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Form Search"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Assignee"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Comments"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Created At"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Modified At"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Created By"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Modified By"
    And I click on "VT= Done "
    And I wait for 2 Seconds 
    And I click on "VT=Columns"
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Category" from dropdown 
    And I enter "PH=Column header" as "Category"
    And I click on "NZPH=Select column type" dropdown
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=First Name" from dropdown 
    And I enter "PH=Column header" as "First Name"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Last Name" from dropdown
    And I enter "PH=Column header" as "Last Name"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Age" from dropdown 
    And I enter "PH=Column header" as "Age"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Numeric" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Gender" from dropdown 
    And I wait for 1 Seconds
    And I enter "PH=Column header" as "Gender"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Mobile" from dropdown 
    And I enter "PH=Column header" as "Mobile Number"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds   
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Email" from dropdown
    And I enter "PH=Column header" as "Email"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Start Date" from dropdown
    And I enter "PH=Column header" as "Start Date"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Date" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=End Date" from dropdown
    And I enter "PH=Column header" as "End Date"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Date" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Start Time" from dropdown
    And I enter "PH=Column header" as "Time"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Date&Time" from dropdown
    And I wait for 1 Seconds
    And I enter "PH=Column header" as "Date&Time"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=File Upload" from dropdown
    And I enter "PH=Column header" as "File Upload"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Image Thumbnail / File Download" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Currency" from dropdown
    And I enter "PH=Column header" as "Currency"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I click on "VT=Numeric" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=URL" from dropdown
    And I enter "PH=Column header" as "URL"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=External Link" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Tag" from dropdown
    And I wait for 1 Seconds
    And I enter "PH=Column header" as "Tag"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Form Search" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    
    
    @USERSearchDataTable 
    Scenario: Verification of User Serach field with Data Table Dashboard
    And I wait for 1 Seconds
#    And I click on "VT=DashBoard-9032"
    And I click on dashboard
    And I wait for 1 Seconds
    And I wait for 2 Seconds
		And I click on "VT=Edit" button	
		And I wait for 1 Seconds
		And I click on "VT=Data Table" setting button
    And I wait for 1 Seconds
    And I click on "VT=Columns"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Assignee" from dropdown
    And I enter "PH=Column header" as "UserSearch"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=User Search" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Form Search" from dropdown
    And I wait for 1 Seconds
    And I enter "PH=Column header" as "FormSearch"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Form Search" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Comments" from dropdown
    And I wait for 1 Seconds
    And I enter "PH=Column header" as "Comments"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=View Nested Form" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Created By" from dropdown
    And I enter "PH=Column header" as "Created By"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=User Search" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I wait for 1 Seconds
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Created At" from dropdown
    And I enter "PH=Column header" as "Created At"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Modified By" from dropdown
    And I enter "PH=Column header" as "Modified By"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=User Search" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Modified At" from dropdown
    And I enter "PH=Column header" as "Modified At"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I refresh the page
    And I wait for 1 Seconds
    Then I see "VT=Saikumar_1" WebElement
    Then I see "VT=Sharath" WebElement
    Then I see "VT=Public User" WebElement
    Then I see "VT=Dipak kalel" WebElement
    And I take Screenshot
    
    @DataTableFilter
    Scenario: Verification of dashboard filter of data table
    And I wait for 1 Seconds
  # And I click on "VT=DashBoard-8072"
    And I click on dashboard
    And I wait for 1 Seconds
    And I click on "ID=dx-col-1" of  dashboard filter
    And I wait for 1 Seconds
    And I click on "VTEQ=Government"
    And I click on "VTEQ=OK" button
    And I wait for 2 Seconds
    Then I see "VT=Government" WebElement
    Then I see "VT=Saikumar_1" WebElement
    Then Webelement "VT=General" is Not Visible
    Then Webelement "VT=Dipak kalel" is Not Visible
    And I take Screenshot
    And I wait for 1 Seconds
    And I click on "ID=dx-col-1" of  dashboard filter
    And I wait for 1 Seconds
    And I click on "VTEQ=Government"
    And I click on "VTEQ=OK" button
    And I wait for 1 Seconds
    Then I see "VT=Government" WebElement
    Then I see "VT=Private"[1] web element
    Then I see "VT=Private"[2] web element
    Then I see "VT=General"[1] web element
    Then I see "VTEQ= Public " web element
    And I take Screenshot
    
    @DataTableSearch
    Scenario: Verification of dashboard data table search filter of data table
    And I wait for 1 Seconds
  #	And I click on "VT= DashBoard-9864"
    And I click on dashboard
    And I wait for 1 Seconds
    And I click on "data_dx_PH=Search"
    And I enter "data_dx_PH=Search" as "Ganesh"
    And I wait for 1 Seconds
    Then I see "VT=Ganesh" WebElement
    Then I see "VT=ganesh" WebElement
    Then Webelement "VT=Vithika" is Not Visible
    Then Webelement "VT=Veera" is Not Visible
    And I take Screenshot
    And I click on "CLASS=dx-icon dx-icon-clear" [1]
    Then I see "VT=Ganesh" WebElement
    Then I see "VT=Vithika" WebElement
    Then I see "VT=Veera" WebElement
    And I take Screenshot
    And I click on "data_dx_PH=Search"
    And I enter "data_dx_PH=Search" as "+917866546677"
    Then I see "VT=+917866546677" web element
    Then Webelement "VT=+917855498766" is Not Visible
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "CLASS=dx-icon dx-icon-clear" [1]
		Then I see "VT=+917866546677" web element
		Then I see "VT=+917855498766" web element
		And I take Screenshot
    
    @DataTable-ChildTable 
    Scenario: Validating Data Table-Child Table
    And I wait for 1 Seconds
 #   And I click on "VT=DashBoard-2089" 
    When I click on dashboard
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I wait for 2 Seconds
    And I click on "NZ=setting" icon from "VT=Data Table"
    And I wait for 1 Seconds
    And I click on "VT=Child Tables"
    And I click on "VT1=Add" button from "VT=Child Tables"
    And I wait for 1 Seconds
    And I click on "VT=Data Points"[2]
    And I wait for 1 Seconds
    And I click on "VT=New Form Framework"[2]
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"[2]
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Category" from "VT=Data point"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Data Points"[2]
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=First Name" from "VT=Data point"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Data Points"[2]
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Assignee" from "VT=Data point"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Data Points"[2]
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Form Search" from "VT=Data point"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Data Points"[2]
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Gender" from "VT=Data point"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Data Points"[2]
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Currency" from "VT=Data point"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Data Points"[2]
    And I click on "LABEL=Choose Form" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Registration Form"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Age" from "VT=Data point"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    
    And I wait for 2 Seconds 
    And I click on "VT=Columns"[2]
    
    And I click on "VT=Add" button from "VT=Columns"[2]
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Category" from dropdown 
    And I enter "PH=Column header" as "Category"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Columns"[2]
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=First Name" from dropdown 
    And I enter "PH=Column header" as "First Name"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Columns"[2]
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Age" from dropdown 
    And I wait for 1 Seconds
    And I enter "PH=Column header" as "Age"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Columns"[2]
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Form Search" from dropdown 
    And I enter "PH=Column header" as "Form Search"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Form Search" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Columns"[2]
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Assignee" from dropdown 
    And I enter "PH=Column header" as "User"
    And I wait for 1 Seconds
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=User Search" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Columns"[2]
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Currency" from dropdown 
    And I wait for 1 Seconds
    And I enter "PH=Column header" as "Currency"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Numeric" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Columns"[2]
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Gender" from dropdown 
    And I wait for 1 Seconds
    And I enter "PH=Column header" as "Gender"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Save" button from "VT1=Child Table"
    And I click on "VT=Add" button from "VT1=Series"
    And I click on "NZPH=Select data point" of "VT=Parent data point"[1]
    And I click on "VT=Category" from dropdown
    And I click on "NZPH=Select data point" of "VT=Parent data point"[2]
    And I wait for 1 Seconds
    And I click on "VT=Category" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Save" button
    And I wait for 1 Seconds
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    And I wait for 5 Seconds
    #
    
    #@DataPointsFiletrs
    #Scenario: Validating DataPoints Filters on datatable functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "VT=Employee"
    #And I wait for 1 Seconds
    #And I click on "VT=Edit" button
    #And I click on "NZ=setting" icon from "VT=Employee Table"
    #And I wait for 1 Seconds
    #And I click on "VT=Data Points"
    #And I click on "VT=Category" from "VT=Data Points"
    #And I click on "VT=Filter" from "VT=Data point"
    #And I click on "VT=Add filter"
    #And I click on "PH=Choose condition"
    #And I click on "VT=Text is exactly"
    #And I click on "PH=Value"
    #And I enter "LABEL1=Value" as "Battle of Government"
    #And I click on "VT=Done" from "VT=Data point"
    #Then I see "VT=Battle of Government" web element
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Edit" button
    #And I click on "NZ=setting" icon from "VT=Employee Table"
    #And I wait for 1 Seconds
    #And I click on "VT=Data Points"
    #And I click on "VT=Category" from "VT=Data Points"
    #And I click on "VT=Filter" from "VT=Data point"
    #And I click on "title=Clear all" of "VT=Choose condition"
    #And I click on "PH=Choose condition" 
    #And I click on "VT=Text in"
    #And I click on "title=Clear all" of "VT=Value"
    #And I enter "LABEL1=Value" as "Battle of cities"
    #And I click on "VT=Done" from "VT=Data point"
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Category" from "VT=Data Points"
    #And I click on "VT=Filter" from "VT=Data point"
    #And I click on "title=Clear all" of "VT=Choose condition"
    #And I click on "PH=Choose condition" 
    #And I click on "VT=Text not in"
    #And I click on "title=Clear all" of "VT=Value"
    #And I enter "LABEL1=Value" as "Battle of cities"
    #And I click on "VT=Done" from "VT=Data point"
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Category" from "VT=Data Points"
    #And I click on "VT=Filter" from "VT=Data point"
    #And I click on "title=Clear all" of "VT=Choose condition"
    #And I click on "PH=Choose condition" 
    #And I click on "VT=Is empty"
    #And I click on "title=Clear all" of "VT=Value"
    #And I enter "LABEL1=Value" as "Battle of cities"
    #And I click on "VT=Done" from "VT=Data point"
    #And I wait for 2 Seconds
    #
    #And I click on "VT=Category" from "VT=Data Points"
    #And I click on "VT=Filter" from "VT=Data point"
    #And I click on "title=Clear all" of "VT=Choose condition"
    #And I click on "PH=Choose condition" 
    #And I click on "VT=Is not empty"
    #And I click on "title=Clear all" of "VT=Value"
    #And I enter "LABEL1=Value" as "Battle of cities"
    #And I click on "VT=Done" from "VT=Data point"
    #And I wait for 1 Seconds
    #
    #And I click on "VT=Category" from "VT=Data Points"
    #And I click on "VT=Filter" from "VT=Data point"
    #And I click on "title=Clear all" of "VT=Choose condition"
    #And I click on "PH=Choose condition" 
    #And I click on "VT=Text starts with"
    #And I click on "title=Clear all" of "VT=Value"
    #And I enter "LABEL1=Value" as "Battle"
    #And I click on "VT=Done" from "VT=Data point"
    #And I wait for 1 Seconds
    #
    #And I wait for 3 Seconds
    #

    
    #@DataTableFilters
    #Scenario: Validating datatable filters Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "VT=Employee"
    #And I wait for 1 Seconds
    #And I click on "VT=Edit" button
    #Then I see "VT=Employee Table" web element
    #
    #When I click on "VT=Category" filter
    #And I click on "VT=Battle of Government" from filter
    #And I click on "VT=OK" 
    #Then I see "Catrgory" as "Battle of Government"
    #When I click on "VT=Category" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All" 
    #And I click on "VT=OK" 
    #
     #When I click on "VT=First Name" filter
    #And I click on "VT=Anil" from filter
    #And I click on "VT=OK" 
    #Then I see "First Name" as "Anil"
    #When I click on "VT=First Name" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All"
    #And I click on "VT=OK" 
    #
     #When I click on "VT=Last Name" filter
    #And I click on "VT=Nani" from filter
    #And I click on "VT=OK" 
    #Then I see "Last Name" as "Nani"
    #When I click on "VT=Last Name" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All" 
    #And I click on "VT=OK" 
    #
    #When I click on "VT=Age" filter
    #And I click on "VT=23" from filter
    #And I click on "VT=OK" 
    #Then I see "Age" as "23"
    #When I click on "VT=Age" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All" 
    #And I click on "VT=OK" 
    #
     #When I click on "VT=Gender" filter
    #And I click on "VT=Female" from filter
    #And I click on "VT=OK" 
    #Then I see "Gender" as "Female"
    #When I click on "VT=Gender" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All" 
    #And I click on "VT=OK" 
        #
    #And I wait for 3 Seconds
    #

    #
    #@DataTableFilters
    #Scenario: Validating datatable filters Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "VT=Employee"
    #And I wait for 1 Seconds
    #And I click on "VT=Edit" button
    #Then I see "VT=Employee Table" web element
    #
    #When I click on "VT=Category" filter
    #And I click on "VT=Battle of Government" from filter
    #And I click on "VT=OK" 
    #Then I see "Catrgory" as "Battle of Government"
    #When I click on "VT=Category" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All" 
    #And I click on "VT=OK" 
    #
     #When I click on "VT=First Name" filter
    #And I click on "VT=Anil" from filter
    #And I click on "VT=OK" 
    #Then I see "First Name" as "Anil"
    #When I click on "VT=First Name" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All"
    #And I click on "VT=OK" 
    #
     #When I click on "VT=Last Name" filter
    #And I click on "VT=Nani" from filter
    #And I click on "VT=OK" 
    #Then I see "Last Name" as "Nani"
    #When I click on "VT=Last Name" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All" 
    #And I click on "VT=OK" 
    #
     #When I click on "VT=Age" filter
    #And I click on "VT=23" from filter
    #And I click on "VT=OK" 
    #Then I see "Age" as "23"
    #When I click on "VT=Age" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All" 
    #And I click on "VT=OK" 
    #
     #When I click on "VT=Gender" filter
    #And I click on "VT=Female" from filter
    #And I click on "VT=OK" 
    #Then I see "Gender" as "Female"
    #When I click on "VT=Gender" filter
    #And I wait for 1 Seconds
    #And I click on "VT=Select All" 
    #And I click on "VT=OK" 
        #
    #And I wait for 3 Seconds
    #

    #@DataPointsTextFormating-Styles
    #Scenario: Validating Text Format Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "VT=Employee"
    #And I wait for 1 Seconds
    #And I click on "VT=Edit" button
    #And I click on "NZ=setting" icon from "VT=Employee Table"
    #And I wait for 1 Seconds
    #And I click on "VT=Data Points"
    #And I click on "VT=Gender" from "VT=Data Points"
    #And I click on "VT=Text Formatting" from "VT=Data point"
    #And I click on "VT=Add rule"
    #And I click on "VT=Add condition"
    #And I click on "PH=Choose column"
    #And I click on "VT=Gender" from "VT=Data point"
    #And I click on "PH=Choose condition"
    #And I click on "VT=Text is exactly"
    #And I click on "PH=Value"
    #And I enter "LABEL1=Value" as "Male"
    #And I click on "CS=ft-bold" from "VT=Data point"
    #And I click on "CS=ft-italic" from "VT=Data point"
    #And I click on "CS=ft-underline" from "VT=Data point"
    #And I click on "CS=ft-type" from "VT=Data point"
    #And I click on "VT=Done" from "VT=Data point"
    #
    #
   # And I wait for 3 Seconds
    #
    #
    #@DataPointsTextFormating-Hide
    #Scenario: Validating Text Format Functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "VT=Employee"
    #And I wait for 1 Seconds
    #And I click on "VT=Edit" button
    #And I click on "NZ=setting" icon from "VT=Employee Table"
    #And I wait for 1 Seconds
    #And I click on "VT=Data Points"
    #And I click on "VT=Gender" from "VT=Data Points"
    #And I click on "VT=Text Formatting" from "VT=Data point"
    #And I click on "VT=Add rule"
    #And I click on "VT=Add condition"
    #And I click on "PH=Choose column"
    #And I click on "VT=Gender" from "VT=Data point"
    #And I click on "PH=Choose condition"
    #And I click on "VT=Text is exactly"
    #And I click on "PH=Value"
    #And I enter "LABEL1=Value" as "Male"
    #And I click on "CS=ft-bold" from "VT=Data point"
    #And I click on "CS=ft-italic" from "VT=Data point"
    #And I click on "CS=ft-underline" from "VT=Data point"
    #And I click on "CS=ft-type" from "VT=Data point"
    #And I click on "VT= Hide" 
    #And I click on "VT=Done" from "VT=Data point"
    #
    #
    #And I wait for 3 Seconds
    #
    #
   #@DataTable-Formula
   #Scenario: Validating DataTable formula functionality
   #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "VT=Employee"
    #And I wait for 1 Seconds
    #And I click on "VT=Edit" button
    #And I click on "NZ=setting" icon from "VT=Employee Table"
    #And I wait for 1 Seconds
    #And I click on "VT=Data Points"
    #And I wait for 1 Seconds
    #And I click on "VT=Add" from "VT=Data Points"
    #And I wait for 1 Seconds
    #And I click on "VT=Formula"
    #And I enter "PH=Enter label" as "Addition"
    #And I click on "VT=Add Operator"
    #And I click on "VT=Choose operator type"
    #And I click on "VT=Sum of two numbers"
    #And I click on "PH=Type here..."
    #And I click on "VT=Age" from "VT=Data point"
    #And I click on "PH=Type here..."
    #And I click on "VT=Rating" from "VT=Data point"
    #And I click on "VT=Done"
    #
    #And I wait for 3 Seconds
    #@Pivot
    #Scenario: Validating Data Table Pivot Functionlaity
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "VT=Employee"
    #And I wait for 1 Seconds
    #And I click on "VT=Edit" button
    #And I click on "NZ=setting" icon from "VT=Employee Table"
    #And I click on "VT=Pivot"
    #And I click on "VT=Configure" button
    #And I wait for 1 Seconds
    #And I click on "Esc" On KeyBoard
    #And I click on "VT=ADD" button from "VT=Row grouping"
    #And I click on "VT=Category" from dropdown
    #And I wait for 1 Seconds
    #And I click on "VT=ADD" button from "VT=Summarize by"
    #And I click on "VT=Department" from dropdown
    #And I click on "VT=Department" from "VT=Summarize by"
     #
    #@DataManippulation
    #Scenario: Validating Data Manippulation on datatable functionality
    #Given I navigate to web application
    #Then I should see page title as "Zvolv"
    #And I see "VT=Login" web element
    #When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
    #And I enter "PH=Enter password" as "Saik@123"
    #And I click on "VT=Login"
    #Then I see "VT=Zapps" web element
    #And I click on "VT=End to End"
    #And I click on "VT=Employee"
    #And I wait for 1 Seconds
    #And I click on "VT=Edit" button
    #And I click on "NZ=setting" icon from "VT=Employee Table"
    #And I click on "VT=Data Manipulation"
    #And I click on "VT=Add" button from "VT=Data Manipulation"
    #And I click on "NZPH=Select data point" dropdown
    #And I click on "VT=Age" from dropdown
    #And I click on "NZPH=Select operation" dropdown
    #And I click on "VT=Average" from dropdown
    #And I click on "VT= OK " button
    #And I refresh the page
    #And I wait for 3 Seconds