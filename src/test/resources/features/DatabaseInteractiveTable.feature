@ZvolvDashboards
 Feature: Zvolv Dashboards-DatabaseInteractiveTable,Date&TimeFormat,ScatterPlot,Raw-HTML-Widget
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
    
    @DatabaseInteractiveTable
    Scenario: Validating Create Dashboard Functionality
    
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
    When I click on "VT=Add widget" button
    And I click on "VT=Database Interactive Table"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Database Interactive Table"
    And I enter "LABEL3=Description" as "This is Database interactive table widget"
    And I wait for 1 Seconds
    And I click on "VT=Data Source"
    And I wait for 1 Seconds
    And I enter "LI=Skip rows" as "2"
    And I enter "LI=Limit rows" as "3"
    And I click on "VT=Add" button from "VT=Data Source"
    And I click on "NZPH=Select a Form" dropdown
    And I click on "VT=Sql Employee" from dropdown
    And I click on "VT=Edit form Submission"
    And I click on "VT=Row Selection"
    And I click on "VT=Inplace Editing"
    And I click on "VT=Export"
    And I click on "VT=Add row"
    And I click on "VT=Show All Columns"
    And I click on "VT=Allow Inplace Editing for All Columns"
    And I click on "VT=Done" from "VT=Data Source"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I refresh the page
    And I wait for 3 Seconds
    
    @DatabaseIntercativeTable-ChildTable
    Scenario: Validating Datbase Interactive Table Child Table 
    And I wait for 2 Seconds
    When I click on dashboard
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I wait for 1 Seconds
    And I click on "NZ=setting" icon from "VT=Database Interactive Table"
    And I wait for 1 Seconds
    And I click on "VT=Child Table"
		And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Child Table"
    And I wait for 1 Seconds
    And I click on "VT=Data Source" from "VT=Child Database Table"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT1=Child Database Table"
    And I click on "NZPH=Select a Form" dropdown
    And I click on "VT=Sql Dep" from dropdown
    And I click on "VT=Edit form Submission"
    And I click on "VT=Row Selection"
    And I click on "VT=Inplace Editing"
    And I click on "VT=Export"
    And I click on "VT=Add row"
    And I click on "VT=Show All Columns"
    And I click on "VT=Allow Inplace Editing for All Columns"
    And I click on "VT=Done" from "VT=Data Source"
    And I click on "VT=Save" button from "VT1=Child Database Table"
    And I click on "VT=Add" button from "VT1=Series"
    And I click on "NZPH=Select data point" of "VT=Parent data point"[1]
    And I click on "VT=DEPTNO" from dropdown
    And I click on "NZPH=Select data point" of "VT=Parent data point"[2]
    And I click on "VT=DEPTNO" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Save" button
    And I wait for 3 Seconds
    
    @DatabaseInteractiveTableAccess
    Scenario: Validating Database Interactive Table Access
    When I click on dashboard
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I wait for 1 Seconds
    And I click on "NZ=setting" icon from "VT=Database Interactive Table"
    And I wait for 1 Seconds
    And I click on "VT=Advanced Settings"
    And I click on "NZPH=Select roles" dropdown
    And I click on "VT=System Admin"
    And I click on "VT=Manager"
    And I click on Body
    And I enter "LI=Sequence number" as "2"
    And I click on "VT=Hide widget from Android/iOS app"
    And I click on "VT=Refresh Dashboard"
    And I click on "VT=Disable data export"
    And I click on "VT=Save" button
    And I refresh the page
    And I wait for 1 Seconds
    #And I take screenshot of "Dashboard"
    And I wait for 2 Seconds
    And I click on avatar
    And I click on "VT=Logout" button
     And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "Manager@zvolv.com"
    And I enter "PH=Enter password" as "Saik@123"
    And I click on "VT=Login"
    Then I see "VT=Zapps" web element
    And I click on "VT=End to End"
    And I click on dashboard
    And I wait for 3 Seconds
    
    
    
    #And I click on "NZS=filter" icon from "VT=Department"
    #And I click on "VT=Add Filter" button
    #And I click on "VT=Value is"
    #And I click on "VT=Is" from dropdown
    #And I enter "PH=Value" as "IT"
   # And I wait for 3 Seconds
    #And I click on "VT=Done" from "VT=Department" 
   # And I wait for 3 Seconds
    #And I click on "VT= Done "
    #And I wait for 1 Seconds
    #And I click on "VT=Data Preview" button
    #And I see "VT=Data Preview" web element
    #And I click on "NZ=close"
    #And I wait for 1 Seconds
    #And I click on "VT=Child Table"
    #And I click on "VT=Add" button from "VT=Child Table"
    #And I enter "PH=Title" as "Employee Form"
    #And I click on "VT=Data Source" from "VT=Child Database Table"
    #And I enter "LI=Skip rows" as "2" 
    #And I enter "LI=Limit rows" as "3"
    #And I click on "VT=Add" button from "VT=Data Source"
    #And I click on "NZPH=Select a Form" dropdown
    #And I click on "VT=Employee Master" from dropdown
    #And I click on "VT=Edit form Submission"
    #And I click on "VT=Row Selection"
    #And I click on "VT=Inplace Editing"
    #And I click on "VT=Export"
    #And I click on "VT=Add row"
    #And I click on "VT=Show All Columns"
    #And I click on "VT=Allow Inplace Editing for All Columns"
    #And I click on "NZS=filter" icon from "VT=Department"
    #And I click on "VT=Add Filter" button
    #And I click on "VT=Value is"
    #And I click on "VT=Is" from dropdown
    #And I enter "PH=Value" as "IT"
    #And I click on "VT=Done" from "VT=Department" 
    #And I click on "VT= Done "
    #And I click on "VT=Save" button
    #And I click on "VT=OK" button
    #And I click on "VT=Save" button
    #And I wait for 3 Seconds
    
    @Date&TimeFormat
    Scenario: Validating Date&Time Format Functionality
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
    When I click on "VT=Add widget" button
    And I click on "VT=Data Table"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Data Table widget"
    And I enter "LABEL3=Description" as "This is Data Table widget"
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=New Form Framework"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Date and Time Format Table"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Name"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Date and Time Format Table"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Date&Time"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "VT=Formula"
    And I click on "VT=Add Operator"
    And I click on "PH=Choose operator type"
    And I click on "VT=Date format"
    And I click on "PH=Type here..."
    And I click on "VT=Date&Time" from "VT=Data point"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mmm"
    And I enter "PH=Enter label" as "Format"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    
    And I click on "VT=Columns"
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Name" from dropdown 
    And I enter "PH=Column header" as "Name"
    And I click on "NZPH=Select column type" dropdown
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
     And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Date&Time" from dropdown 
    And I enter "PH=Column header" as "Date&Time"
    And I click on "NZPH=Select column type" dropdown
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Format" from dropdown
    And I enter "PH=Column header" as "Format"
    And I click on "NZPH=Select column type" dropdown
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I click on "DI=setting"[2]
    
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mmm-yy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=Apr-24"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mmm-yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-Apr-2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=02-04-24"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=02-04-2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mm-dd-yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=04-02-2024"
    And I take Screenshot
    
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=hh"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=01"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=HH"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=01"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=01:05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mmm-yyyy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-Apr-2024 01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mmm-yyyy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-Apr-2024 01:05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=02-04-24 01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yyyy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=02-04-2024 01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=02-04-24 01:05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yyyy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=02-4-2024 01:05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mmm.yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.Apr.2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.24"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mm.dd.yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=4.2.2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.24 01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yyyy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.2024 01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.24 01:05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yyyy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.2024 01:05"
    And I take Screenshot
    And I wait for 3 Seconds
    
    @Date&TimeFormat-WithPivot   
    Scenario: Validating Date&Time Format Functionality
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
    When I click on "VT=Add widget" button
    And I click on "VT=Data Table"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Data Table widget"
    And I enter "LABEL3=Description" as "This is Data Table widget"
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=New Form Framework"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Date and Time Format Table"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Name"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Date and Time Format Table"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Date&Time"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "VT=Formula"
    And I click on "VT=Add Operator"
    And I click on "PH=Choose operator type"
    And I click on "VT=Date format"
    And I click on "PH=Type here..."
    And I click on "VT=Date&Time" from "VT=Data point"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mmm"
    And I enter "PH=Enter label" as "Format"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    
    And I click on "VT=Pivot" from configuration
    And I wait for 1 Seconds
    And I click on "VT=Configure" button
    And I click on "VT=ADD" button from "VT=Row grouping"
    And I wait for 1 Seconds
    And I click on "VT=Format" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=ADD" button from "VT=Summarize by"
    And I click on "VT=Name" from dropdown
    And I click on "VT=Name" from "VT=Summarize by"
    And I enter "LABEL1=Summarize by" as "Name Count"
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=COUNT" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=Done" from "VT=Pivot"
    
    And I click on "VT=Columns"
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Format" from dropdown 
    And I enter "PH=Column header" as "Format"
    And I click on "NZPH=Select column type" dropdown
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
     And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I click on "VT=Name Count" from dropdown 
    And I enter "PH=Column header" as "Count"
    And I click on "NZPH=Select column type" dropdown
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    #And I click on "VT=Add" button from "VT=Columns"
    #And I click on "NZPH=Select data point" dropdown
    #And I click on "VT=Format" from dropdown
    #And I enter "PH=Column header" as "Format"
    #And I click on "NZPH=Select column type" dropdown
    #And I click on "VT=Generic" from dropdown
    #And I click on "VT=OK" button
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I click on "DI=setting"[2]
    
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mmm-yy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=Apr-24"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mmm-yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-Apr-2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-4-2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-4-2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mm-dd-yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=4-2-2024"
    And I take Screenshot
    
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=hh"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=01"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=HH"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=01"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=01:10"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mmm-yyyy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-Apr-2024 01:05 AM" 
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mmm-yyyy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-Apr-2024 01:05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-4-2024 01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yyyy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-4-2024 01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-4-2024 01:05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd-mm-yyyy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2-4-2024 01:05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mmm.yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.Apr.2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=mm.dd.yyyy"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=4.2.2024"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.2024 01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yyyy hh:mm a"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.2024 01:05 AM"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.2024 01:05"
    And I take Screenshot
    
    And I click on "VT=Format" from "VT=Data Points"
    And I click on "PH=Select date format"
    And I click on "VTEQ=dd.mm.yyyy HH:mm"
    And I click on "VT=Done "
    And I wait for 1 Seconds
    Then I see "VT=2.4.2024 01:05"
    And I take Screenshot
    And I wait for 3 Seconds
     
    
    
    @ScatterPlot
    Scenario: Validating Scatter Plot Widget Functionality
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
    When I click on "VT=Add widget" button
    And I click on "VT=Scatter Plot"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Scatter plot widget"
    And I enter "LABEL3=Description" as "This is Scatter plot widget"
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=New Form Framework"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Taxi Type"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Payment Type"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Total Fare"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    
    And I click on "VT=Pivot" from configuration
    And I wait for 1 Seconds
    And I click on "VT=Configure" button
    And I click on "VT=ADD" button from "VT=Row grouping"
    And I wait for 1 Seconds
    And I click on "VT=Taxi Type" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=ADD" button from "VT=Row grouping"
    And I wait for 1 Seconds
    And I click on "VT=Payment Type" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=ADD" button from "VT=Summarize by"
    And I click on "VT=Total Fare" from dropdown
    And I click on "VT=Total Fare" from "VT=Summarize by"
    And I enter "LABEL1=Summarize by" as "Total Amount"
    And I wait for 1 Seconds
    And I click on "VT=Done" from "VT=Pivot"
    
    And I click on "VT=Serieses"
    And I click on "VT=Add" button from "VT=Serieses"
    And I enter "PH=Name" as "Taxi Type-Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select argument field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Value Format" of "VT=Select value Format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Add" button from "VT=Serieses"
    And I enter "PH=Name" as "Payment Type-Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select argument field"
    And I click on "VT=Payment Type" from dropdown
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Value Format" of "VT=Select value Format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    And I wait for 2 Seconds
    
    And I click on "VT=Tooltip Config"
    And I wait for 2 Seconds
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Taxi Type"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Payment Type"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I click on "VT=Payment Type" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Customize Axis"
    And I click on "VT=Customize X-Axis"
    And I enter "PH=Title"[2] as "Taxi & Payment Type"
    And I click on "VT=Select Value Format" from "VT=Value Format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Customize Y-Axis"
    And I enter "PH=Title"[2] as "Total Amount"
    And I click on "VT=Select Value Format" from "VT=Value Format"
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Legends"
    And I click on "VT=Show labels"
    And I click on "VT=Show legends"
    And I click on "VT=Horizontal alignment"
    And I click on "VT=Right" from dropdown
    And I click on "VT=Vertical alignment"
    And I click on "VT=Top" from dropdown
    
    And I wait for 1 Seconds
    And I click on "VT=Filters" from "VT=Details"
    And I click on "VT=Add" button from "VT=Filters"
    And I enter "PH=label" as "Taxi Type"
    And I click on "PH=Choose form"
    And I click on "VT=Database For Charts"
    And I click on "PH=Choose field"
    And I click on "VT=Taxi Type" from "LABEL=Choose Field"
    And I click on "VT= Done"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Filters"
    And I enter "PH=label" as "Payment Type"
    And I click on "PH=Choose form"
    And I click on "VT=Database For Charts"
    And I click on "PH=Choose field"
    And I click on "VT=Payment Type" from "LABEL=Choose Field"
    And I click on "VT= Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I click on "DI=setting"[2]
    And I click on "VT=Pivot" from configuration
    And I wait for 1 Seconds
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MIN"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MAX"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=AVERAGE"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=COUNT"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=UNIQUE COUNT"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MEDIAN"
    And I click on "VT= Done"
    And I take Screenshot
    And I click on "VT=Save" button
    And I wait for 1 Seconds
    And I refresh the page
    
    And I click on "DI=filter"
    And I click on "DI=down" from "VT=Taxi Type"
    And I click on "VT=Cool Cab" from dropdown
    And I click on Body_1
    And I click on "DI=down" from "VT=Payment Type"
    And I click on "VT=Card" from dropdown
    And I click on Body_1
    And I wait for 1 Seconds
    And I take Screenshot
    And I refresh the page
    And I click on "DI=ellipsis"
    #And I click on "VT=Add new" button
    And I click on "VT=Field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "VT=Condition"
    And I click on "VT=in" from dropdown
    And I click on "DI=down"[3] from "VT=Advanced filters"
    And I click on "VT=Cool Cab" from dropdown
    And I click on Body_1
    And I click on "VT=Add new" button
    And I click on "DI=down"[5] from "VT=Advanced filters"
    And I click on "VT=Payment Type" from dropdown
    And I click on "DI=down"[6] from "VT=Advanced filters"
    And I click on "VT=in" from dropdown
    And I click on "DI=down"[7] from "VT=Advanced filters"
    And I click on "VT=Card" from dropdown
    And I click on Body_1
    And I wait for 5 Seconds
   
    @DoughnutChart
    Scenario: Validating Doughnut Chart Widget Functionality
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
    When I click on "VT=Add widget" button
    And I click on "VT=Doughnut Chart"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Doughnut Chart widget"
    And I enter "LABEL3=Description" as "This is Doughnut Chart widget"
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=New Form Framework"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Taxi Type"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Payment Type"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Total Fare"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    
    And I click on "VT=Pivot" from configuration
    And I wait for 1 Seconds
    And I click on "VT=Configure" button
    And I click on "VT=ADD" button from "VT=Row grouping"
    And I wait for 1 Seconds
    And I click on "VT=Taxi Type" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=ADD" button from "VT=Row grouping"
    And I wait for 1 Seconds
    And I click on "VT=Payment Type" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=ADD" button from "VT=Summarize by"
    And I click on "VT=Total Fare" from dropdown
    And I click on "VT=Total Fare" from "VT=Summarize by"
    And I enter "LABEL1=Summarize by" as "Total Amount"
    And I wait for 1 Seconds
    And I click on "VT=Done" from "VT=Pivot"
    
    And I click on "VT=Serieses"
    And I click on "VT=Add" button from "VT=Serieses"
    And I enter "PH=Name" as "Taxi Type-Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select argument field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Value Format" of "VT=Select value Format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Add" button from "VT=Serieses"
    And I enter "PH=Name" as "Payment Type-Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select argument field"
    And I click on "VT=Payment Type" from dropdown
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Value Format" of "VT=Select value Format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I wait for "1000" milli seconds
    And I click on "VT=Tooltip Config"
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Taxi Type"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Payment Type"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I click on "VT=Payment Type" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    #And I click on "VT=Customize Axis"
    #And I click on "VT=Customize X-Axis"
    #And I enter "PH=Title"[2] as "Taxi & Payment Type"
    #And I click on "VT=Select Value Format" from "VT=Value Format"
    #And I click on "VT=String" from dropdown
    #And I click on "VT=OK" button
    #And I click on "VT=Customize Y-Axis"
    #And I enter "PH=Title"[2] as "Total Amount"
    #And I click on "VT=Select Value Format" from "VT=Value Format"
    #And I click on "VT=Number" from dropdown
    #And I click on "VT=OK" button
    #
    And I click on "VT=Legends"
    And I click on "VT=Show labels"
    And I click on "VT=Show legends"
    And I click on "VT=Horizontal alignment"
    And I click on "VT=Right" from dropdown
    And I click on "VT=Vertical alignment"
    And I click on "VT=Top" from dropdown
    
    And I wait for 1 Seconds
    And I click on "VT=Filters" from "VT=Details"
    And I click on "VT=Add" button from "VT=Filters"
    And I enter "PH=label" as "Taxi Type"
    And I click on "PH=Choose form"
    And I click on "VT=Database For Charts"
    And I click on "PH=Choose field"
    And I click on "VT=Taxi Type" from "LABEL=Choose Field"
    And I click on "VT= Done"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Filters"
    And I enter "PH=label" as "Payment Type"
    And I click on "PH=Choose form"
    And I click on "VT=Database For Charts"
    And I click on "PH=Choose field"
    And I click on "VT=Payment Type" from "LABEL=Choose Field"
    And I click on "VT= Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I click on "DI=setting"[2]
    And I click on "VT=Pivot" from configuration
    And I wait for 1 Seconds
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MIN"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MAX"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=AVERAGE"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=COUNT"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=UNIQUE COUNT"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MEDIAN"
    And I click on "VT= Done"
    And I take Screenshot
    And I click on "VT=Save" button
    And I wait for 1 Seconds
    And I refresh the page
    
    And I click on "DI=filter"
    And I click on "DI=down" from "VT=Taxi Type"
    And I click on "VT=Cool Cab" from dropdown
    And I click on Body_1
    And I click on "DI=down" from "VT=Payment Type"
    And I click on "VT=Card" from dropdown
    And I click on Body_1
    And I wait for 1 Seconds
    And I take Screenshot
    And I refresh the page
    And I click on "DI=ellipsis"
    #And I click on "VT=Add new" button
    And I click on "VT=Field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "VT=Condition"
    And I click on "VT=in" from dropdown
    And I click on "DI=down"[3] from "VT=Advanced filters"
    And I click on "VT=Cool Cab" from dropdown
    And I click on Body_1
    And I click on "VT=Add new" button
    And I click on "DI=down"[5] from "VT=Advanced filters"
    And I click on "VT=Payment Type" from dropdown
    And I click on "DI=down"[6] from "VT=Advanced filters"
    And I click on "VT=in" from dropdown
    And I click on "DI=down"[7] from "VT=Advanced filters"
    And I click on "VT=Card" from dropdown
    And I click on Body_1
    
    
    And I wait for 5 Seconds
    
    @BarChart
    Scenario: Validating Barchart Widget Functionality
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
    When I click on "VT=Add widget" button
    And I click on "VT=Bar Chart"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Bar Chart widget"
    And I enter "LABEL3=Description" as "This is Bar Chart widget"
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=New Form Framework"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Taxi Type"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Payment Type"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Total Fare"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    
    And I click on "VT=Pivot" from configuration
    And I wait for 1 Seconds
    And I click on "VT=Configure" button
    And I click on "VT=ADD" button from "VT=Row grouping"
    And I wait for 1 Seconds
    And I click on "VT=Taxi Type" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=ADD" button from "VT=Row grouping"
    And I wait for 1 Seconds
    And I click on "VT=Payment Type" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=ADD" button from "VT=Summarize by"
    And I click on "VT=Total Fare" from dropdown
    And I click on "VT=Total Fare" from "VT=Summarize by"
    And I enter "LABEL1=Summarize by" as "Total Amount"
    And I wait for 1 Seconds
    And I click on "VT=Done" from "VT=Pivot"
    
    And I click on "VT=Serieses"
    And I click on "VT=Add" button from "VT=Serieses"
    And I enter "PH=Name" as "Taxi Type-Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select argument field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Value Format" of "VT=Select value Format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Add" button from "VT=Serieses"
    And I enter "PH=Name" as "Payment Type-Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select argument field"
    And I click on "VT=Payment Type" from dropdown
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Value Format" of "VT=Select value Format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    And I wait for 3 Seconds
    
    
    And I click on "VT=Tooltip Config"
    And I wait for 2 Seconds
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Taxi Type"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Payment Type"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I click on "VT=Payment Type" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Customize Axis"
    And I click on "VT=Customize X-Axis"
    And I enter "PH=Title"[2] as "Taxi & Payment Type"
    And I click on "VT=Select Value Format" from "VT=Value Format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Customize Y-Axis"
    And I enter "PH=Title"[2] as "Total Amount"
    And I click on "VT=Select Value Format" from "VT=Value Format"
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Legends"
    And I click on "VT=Show labels"
    And I click on "VT=Show legends"
    And I click on "VT=Horizontal alignment"
    And I click on "VT=Right" from dropdown
    And I click on "VT=Vertical alignment"
    And I click on "VT=Top" from dropdown
    
    And I wait for 1 Seconds
    And I click on "VT=Filters" from "VT=Details"
    And I click on "VT=Add" button from "VT=Filters"
    And I enter "PH=label" as "Taxi Type"
    And I click on "PH=Choose form"
    And I click on "VT=Database For Charts"
    And I click on "PH=Choose field"
    And I click on "VT=Taxi Type" from "LABEL=Choose Field"
    And I click on "VT= Done"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Filters"
    And I enter "PH=label" as "Payment Type"
    And I click on "PH=Choose form"
    And I click on "VT=Database For Charts"
    And I click on "PH=Choose field"
    And I click on "VT=Payment Type" from "LABEL=Choose Field"
    And I click on "VT= Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I wait for 1 Seconds
    And I click on "DI=setting"[2]
    And I wait for 1 Seconds
    And I click on "VT=Pivot" from configuration
    And I wait for 1 Seconds
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MIN"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MAX"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button 
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=AVERAGE"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=COUNT"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=UNIQUE COUNT"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MEDIAN"
    And I click on "VT= Done"
    And I take Screenshot
    And I click on "VT=Save" button
    And I wait for 1 Seconds
    And I refresh the page
    
    And I click on "DI=filter"
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Taxi Type"
    And I click on "VT=Cool Cab" from dropdown
    And I click on Body_1
    And I click on "DI=down" from "VT=Payment Type"
    And I click on "VT=Card" from dropdown
    And I click on Body_1
    And I wait for 1 Seconds
    And I take Screenshot
    And I refresh the page
    And I click on "DI=ellipsis"
    #And I click on "VT=Add new" button
    And I click on "VT=Field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "VT=Condition"
    And I click on "VT=in" from dropdown
    And I click on "DI=down"[3] from "VT=Advanced filters"
    And I click on "VT=Cool Cab" from dropdown
    And I click on Body_1
    And I click on "VT=Add new" button
    And I click on "DI=down"[5] from "VT=Advanced filters"
    And I click on "VT=Payment Type" from dropdown
    And I click on "DI=down"[6] from "VT=Advanced filters"
    And I click on "VT=in" from dropdown
    And I click on "DI=down"[7] from "VT=Advanced filters"
    And I click on "VT=Card" from dropdown
    And I click on Body_1
    
    
    And I wait for 5 Seconds
    
    @LineChart
    Scenario: Validating Line chart Widget Functionality
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
    When I click on "VT=Add widget" button
    And I click on "VT=Line Chart"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "Line Chart widget"
    And I enter "LABEL3=Description" as "This is Line Chart widget"
    And I click on "VT=Data Points"
    And I wait for 1 Seconds
    And I click on "VT=New Form Framework"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Taxi Type"
    And I click on "VT= Done " 
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Payment Type"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Data Points"
    And I click on "LABEL=Choose Form" dropdown
    And I click on "VT=Database For Charts"
    And I wait for 1 Seconds
    And I click on "LABEL=Choose Field" dropdown
    And I click on "VT=Total Fare"
    And I click on "VT= Done "
    And I wait for 1 Seconds
    
    And I click on "VT=Pivot" from configuration
    And I wait for 1 Seconds
    And I click on "VT=Configure" button
    And I click on "VT=ADD" button from "VT=Row grouping"
    And I wait for 1 Seconds
    And I click on "VT=Taxi Type" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=ADD" button from "VT=Row grouping"
    And I wait for 1 Seconds
    And I click on "VT=Payment Type" from dropdown
    And I wait for 1 Seconds
    And I click on "VT=ADD" button from "VT=Summarize by"
    And I click on "VT=Total Fare" from dropdown
    And I click on "VT=Total Fare" from "VT=Summarize by"
    And I enter "LABEL1=Summarize by" as "Total Amount"
    And I wait for 1 Seconds
    And I click on "VT=Done" from "VT=Pivot"
    
    And I click on "VT=Serieses"
    And I click on "VT=Add" button from "VT=Serieses"
    And I enter "PH=Name" as "Taxi Type-Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select argument field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Value Format" of "VT=Select value Format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Add" button from "VT=Serieses"
    And I enter "PH=Name" as "Payment Type-Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select argument field"
    And I click on "VT=Payment Type" from dropdown
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Value Format" of "VT=Select value Format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    And I wait for 3 Seconds
    
    
    And I click on "VT=Tooltip Config"
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Taxi Type"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Payment Type"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I click on "VT=Payment Type" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Add" button from "VT=Tooltip Config"
    And I enter "PH=Label" as "Total Amount"
    And I click on "NZPH=Select data point" of "VT=Select value field"
    And I wait for 1 Seconds
    And I click on "VT=Total Amount" from dropdown
    And I click on "NZPH=Select Value Format" of "VT=Select value format"
    And I wait for 1 Seconds
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Customize Axis"
    And I click on "VT=Customize X-Axis"
    And I enter "PH=Title"[2] as "Taxi & Payment Type"
    And I click on "VT=Select Value Format" from "VT=Value Format"
    And I click on "VT=String" from dropdown
    And I click on "VT=OK" button
    And I click on "VT=Customize Y-Axis"
    And I enter "PH=Title"[2] as "Total Amount"
    And I click on "VT=Select Value Format" from "VT=Value Format"
    And I click on "VT=Number" from dropdown
    And I click on "VT=OK" button
    
    And I click on "VT=Legends"
    And I click on "VT=Show labels"
    And I click on "VT=Show legends"
    And I click on "VT=Horizontal alignment"
    And I click on "VT=Right" from dropdown
    And I click on "VT=Vertical alignment"
    And I click on "VT=Top" from dropdown
    
    And I wait for 1 Seconds
    And I click on "VT=Filters" from "VT=Details"
    And I click on "VT=Add" button from "VT=Filters"
    And I enter "PH=label" as "Taxi Type"
    And I click on "PH=Choose form"
    And I click on "VT=Database For Charts"
    And I click on "PH=Choose field"
    And I click on "VT=Taxi Type" from "LABEL=Choose Field"
    And I click on "VT= Done"
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Filters"
    And I enter "PH=label" as "Payment Type"
    And I click on "PH=Choose form"
    And I click on "VT=Database For Charts"
    And I click on "PH=Choose field"
    And I click on "VT=Payment Type" from "LABEL=Choose Field"
    And I click on "VT= Done"
    And I wait for 1 Seconds
    And I click on "VT=Save" button
    
    And I refresh the page
    And I wait for 1 Seconds
    And I click on "VT=Edit" button
    And I click on "DI=setting"[2]
    And I click on "VT=Pivot" from configuration
    And I wait for 1 Seconds
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MIN"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MAX"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=AVERAGE"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=COUNT"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=UNIQUE COUNT"
    And I click on "VT= Done"
    And I take Screenshot
    And I wait for 1 Seconds
    
    And I click on "VT=Configure" button
    And I wait for 1 Seconds
    And I click on "DI=down" from "VT=Summarize by"
    And I click on "VT=MEDIAN"
    And I click on "VT= Done"
    And I take Screenshot
    And I click on "VT=Save" button
    And I wait for 1 Seconds
    And I refresh the page
    
    And I click on "DI=filter"
    And I click on "DI=down" from "VT=Taxi Type"
    And I click on "VT=Cool Cab" from dropdown
    And I click on Body_1
    And I click on "DI=down" from "VT=Payment Type"
    And I click on "VT=Card" from dropdown
    And I click on Body_1
    And I wait for 1 Seconds
    And I take Screenshot
    And I refresh the page
    And I click on "DI=ellipsis"
    #And I click on "VT=Add new" button
    And I click on "VT=Field"
    And I click on "VT=Taxi Type" from dropdown
    And I click on "VT=Condition"
    And I click on "VT=in" from dropdown
    And I click on "DI=down"[3] from "VT=Advanced filters"
    And I click on "VT=Cool Cab" from dropdown
    And I click on Body_1
    And I click on "VT=Add new" button
    And I click on "DI=down"[5] from "VT=Advanced filters"
    And I click on "VT=Payment Type" from dropdown
    And I click on "DI=down"[6] from "VT=Advanced filters"
    And I click on "VT=in" from dropdown
    And I click on "DI=down"[7] from "VT=Advanced filters"
    And I click on "VT=Card" from dropdown
    And I click on Body_1
    
    And I wait for 5 Seconds
    
    @Iframe
    Scenario: Validating I-frame Widget Functionality
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
    When I click on "VT=Add widget" button
    And I click on "VT=I-frame"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "I-frame widget"
    And I enter "LABEL3=Description" as "This is I-frame widget"
    And I click on "VT=Media"
    And I enter "PH=url" as "http://dragon_1.zvolv.in/"
    And I click on "VT=Save" button
    And I refresh the page
    
    
    And I wait for 3 Seconds
    
    
    @Raw-HTML-Widget
    Scenario: Validating Raw HTML Widget Functionality
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
    When I click on "VT=Add widget" button
    And I click on "VT=Raw HTML Editor"
    And I wait for 1 Seconds
    And I enter "PH=Title" as "HTML Viewer"
    #And I enter "LABEL3=Description" as "This is Raw HTML widget"
    And I enter "VT=HTML Viewer" Script
    And I wait for 2 Seconds
    And I click on "VT=Save" button
    And I wait for 1 Seconds
  #  And I click on "VT=Save" button
    And I refresh the page
    And I wait for 1 Seconds
    And I take Screenshot
    And I click on "VT=Booking Details"
    And I refresh the page
    And I click on "VT=Create Submission"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on "VT=Edit Submission"
    And I wait for 5 Seconds
    
    
    