@ZvolvDashboards
Feature: Pivot Grid Dashboard Widget
Pivot grid dashboard widget testing  
  Background: 
Given I navigate to web application
Then I should see page title as "Zvolv"
And I see "VT=Login" web element
When login into the zvolv application with below credentials
  |dragon_1|saikumaroffice786@gmail.com|Saik@123|
#And I click on "VT=Login"
Then I see "VT=Zapps" and "VT=Create zapp" web element
    

@PivotGrid
Scenario: Adding pivot grid to dashboard

Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
#//new dashboard
And I wait for 5 Seconds
And I click on "DI=plus"[1] Button
And User enters the "PvotGrid" dashboard title
And I click on "VT=Select roles"
And I click on "VT=All Org Users"
And I click on "VT=Linked Users"
And I click on "VT=System Admin"
And I wait for 1 Seconds
And I click on Tab 
And I wait for 1 Seconds
And I click on Edit Permission "VT=Select roles" Dropdown
And I wait for 1 Seconds
And User selects the "VT=System Admin"
And I click on Tab 
And I wait for 1 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on new Created dashboard
And I wait for 2 Seconds
#And I click on "VT=Pivot Grid"
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for 2 Seconds
And User click on "VT=Pivot-Grid" widget
And I enter "PH=Title" dropdown value as "Pivot-Grid"
And I enter "LABEL2=Description" as "Pivot Grid_0"
And I wait for 2 Seconds
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
And I click on "VT=Data Points"
#And I click on "VT=New Form Framework"
And I wait for 2 Seconds
And I click on "VT=Add"[2] button
And I wait for 2 Seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "Pivot Grid"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "NAME"
And I enter "LABEL1=Label" as "NAME"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And I click on "VT=Data Preview" button
And I wait for 2 Seconds
And I click on "VT=Add"[2] button
And I wait for 2 Seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "Pivot Grid"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "SUBJECT"
And I enter "LABEL1=Label" as "Subjects"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds

And I click on "VT=Add"[2] button
And I wait for 2 Seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "Pivot Grid"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Marks"
And I enter "LABEL1=Label" as "Marks"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And I click on "VT=Add"[2] button
And I wait for 2 Seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "Pivot Grid"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Result"
And I enter "LABEL1=Label" as "Result"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds

And I click on "VT=Fields"
And I wait for 2 Seconds
And I click on "VT=Add"[5] button
And I enter "LABEL1=Field header" as "Name"
And User click on "LABEL=Map data point" and "VT=Select data point"
And I wait for 2 Seconds
And User click on mapping data for field "VT=NAME"
And User click on "LABEL=Select field location" and "VT=Select field location"
And I wait for 2 Seconds
And User click on mapping data for field "VT=Row"
And User click on "LABEL=Data Type" and "VT=Select data type"
And I wait for 2 Seconds
And User click on mapping data for field "VT=String"
And I click on "VT=OK" button

And I click on "VT=Add"[5] button
And I enter "LABEL1=Field header" as "Subjects"
And User click on "LABEL=Map data point" and "VT=Select data point"
And I wait for 2 Seconds
And User click on mapping data for field "VT=Subjects"
And User click on "LABEL=Select field location" and "VT=Select field location"
And I wait for 2 Seconds
And User click on mapping data for field "VT=Column"
And User click on "LABEL=Data Type" and "VT=Select data type"
And I wait for 2 Seconds
And User click on mapping data for field "VT=String"
And I click on "VT=OK" button

And I click on "VT=Add"[5] button
And I enter "LABEL1=Field header" as "Marks"
And User click on "LABEL=Map data point" and "VT=Select data point"
And I wait for 2 Seconds
And User click on mapping data for field "VT=Marks"
And User click on "LABEL=Select field location" and "VT=Select field location"
And I wait for 2 Seconds
And User click on mapping data for field "VT=Data"
And User click on "LABEL=Data Type" and "VT=Select data type"
And I wait for 2 Seconds
And User click on mapping data for field "VT=Numeric"
Then I see "VT=Data summary" web element
And User click on "LABEL=Data summary" and "VT=Select summary operation"
And User click on mapping data for field "VT=Sum"
And I click on "VT=OK" button
And I click on "VT=Save" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
Then User see 3 name column data as "VT=DIPAK","VT=ROHIT" and "VT=SAI"
Then User see 4 subject column data as "VT=English","VT=Hindi","VT=Marathi" and "VT=Tamil"

And I click on "VT=Edit" button
And I click on "VT=Pivot-Grid" setting button
And I wait for 2 Seconds
And I click on "VT=Pivot Grid Settings" button
And I wait for 2 Seconds
And I click on "LABEL1=Show Grand Total"
And I click on "VT=Advanced Settings" button
And I wait for 2 Seconds
And User click on "LABEL=View Permissions" and "VT=Select roles"
And I click on "VT=System Admin"
And I wait for 1 Seconds
And I click on Tab 
And I wait for 1 Seconds
And I click on "VT=Save" button
And I click on "VT=Done" button
#And I refresh the page
And I wait for 2 Seconds
Then I see "VT=Grand Total" web element
Then I see "VT=150.00" web element
Then I see "VT=290.00" web element
#//removing of Pivot grid Setting
And I click on "VT=Edit" button
And I click on "VT=Pivot-Grid" setting button
And I wait for 2 Seconds
And I click on "VT=Pivot Grid Settings" button
And I wait for 2 Seconds
And I click on "LABEL1=Show Grand Total"
And I click on "VT=Save" button
And I click on "VT=Done" button
#//Adding 4th mapping data
And I click on "VT=Edit" button
And I click on "VT=Pivot-Grid" setting button
And I wait for 2 Seconds
And I click on "VT=Fields"
And I wait for 2 Seconds
And I click on "VT=Add"[5] button
And I enter "LABEL1=Field header" as "Result"
And User click on "LABEL=Map data point" and "VT=Select data point"
And I wait for 2 Seconds
And User click on mapping data for field "VT=Result"
And User click on "LABEL=Select field location" and "VT=Select field location"
And I wait for 2 Seconds
And User click on mapping data for field "VT=Data"
And User click on "LABEL=Data Type" and "VT=Select data type"
And I wait for 2 Seconds
And User click on mapping data for field "VT=String"
And I click on "VT=OK" button
And I click on "VT=Save" button
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I take Screenshot
Then I see "VT=Result"[1] web element
Then I see "VT=Result"[2] web element
Then I see "VT=Result"[3] web element
Then I see "VT=Result"[4] web element
#// Addition of 2nd Column functinality
And I click on "VT=Edit" button
And I click on "VT=Pivot-Grid" setting button
And I wait for 2 Seconds
And I click on "VT=Fields"
And I wait for 2 Seconds
And I click on "VT=Result" from fields
And I wait for "1000" milli seconds
And User click on "LABEL=Select field location" and "VT=Data"
And I wait for 2 Seconds
And User click on mapping data for field "VT=Column"
And I wait for 1 Seconds
And I click on "VT=OK" button
And I click on "VT=Save" button
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I take Screenshot
When I click on "VT=English"
And I wait for 2 Seconds
Then I see "VT=Pass" web element
And I click on "VT=English"
When I click on "VT=Hindi"
And I wait for 2 Seconds
Then I see "VT=Pass" web element
Then I see "VT=Fail" web element
And I click on "VT=Hindi"
When I click on "VT=Marathi"
And I wait for 2 Seconds
Then I see "VT=Pass" web element
And I click on "VT=Marathi"
When I click on "VT=Tamil"
And I wait for 2 Seconds
Then I see "VT=Pass" web element
#Then I see "VT=Fail" web element
And I click on "VT=Tamil"

#//Filter from Data Points
And I click on "VT=Edit" button
And I click on "VT=Pivot-Grid" setting button
And I wait for 2 Seconds
And I click on "VT=Data Points"
And I wait for 2 Seconds
And I click on "VT=NAME"
And I wait for 2 Seconds
And I click on "VT=Filter" from tablist of data point
And I wait for 2 Seconds
And I click on "VT=Add filter"
And I wait for 2 Seconds
And I click on "PH=Choose condition"
And I wait for 2 Seconds
And I click on "VT=Text is exactly"
And I wait for 2 Seconds
And I click on "VT=Value" Button
When I enter "LABEL1=Value" as "DIPAK"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds

Then User see 1 name column data as "VT=DIPAK" and "VT=ROHIT","VT=SAI" hides
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I click on "VT=Pivot-Grid" setting button
And I wait for 2 Seconds
And I click on "VT=Data Points"
And I wait for 2 Seconds
And I click on "VT=NAME"
And I wait for 2 Seconds
And I click on "VT=Filter" from tablist of data point
And I click on "VT=Text is exactly" Button
#And I click on "PH=Choose condition"
And I wait for 2 Seconds
And I click on "VT=Text not in"
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds

Then User see 2 name column data as "VT=ROHIT", "VT=SAI" and "VT=DIPAK" get hides
#//removal of Name Filter
And I click on "VT=Edit" button
And I click on "VT=Pivot-Grid" setting button
And I wait for 2 Seconds
And I click on "VT=Data Points"
And I wait for 2 Seconds
And I click on "VT=NAME"[1]
And I wait for 2 Seconds
And I click on "VT=Filter" from tablist of data point
And I wait for 1 Seconds
And I click on "VT=Remove filter"
And User accepts the Delete alert
And I click on "VT=Done"[2]
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button

#//'Less Than' Form Filter
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I click on "VT=Pivot-Grid" setting button
And I wait for 2 Seconds
And I click on "VT=Data Points"
And I wait for 2 Seconds
And I click on "VT=Marks"
And I wait for 2 Seconds
And I click on "VT=Filter" from tablist of data point
#And I click on "VT=Filter"[2] from tablist of data points
And I click on "VT=Add filter"
And I click on "PH=Choose condition"
And I wait for 2 Seconds
And I click on "VT=Less than"
And I wait for 2 Seconds
And I click on "VT=Value" Button
When I enter "LABEL1=Value" as "100"
And I click on "VT=Done"[2]
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
Then Pivot Grid displays only "Filter=Less than", 100 marks

#//'Greater Than' Form Filter-

#And I wait for "200" milli seconds
#And I click on "VT=Edit" button
#And I click on "VT=Pivot-Grid" setting button
#And I wait for "2000" milli seconds
#And I click on "VT=Data Points"
#And I wait for "100" milli seconds
#And I click on "VT=Marks"
#And I wait for "200" milli seconds
#And I click on "VT=Filter"[2]
#And I click on "VT=Add filter"
#And I click on "PH=Choose condition"
#And I wait for "200" milli seconds
#And I click on "VT=Less than"
#And I wait for "2000" milli seconds
#And I click on "VT=Value" Button
#When I enter "LABEL1=Value" as "100"
#And I click on "VT=Done"[2]
#And I click on "VT=Save" button
#And I wait for "2000" milli seconds
#And I click on "VT=Done" button
#And I wait for "2000" milli seconds
#Then Pivot Grid displays only "Filter=Less than", 100 marks


#@DBPivotGrid
#Scenario: old master database for pivot Grid
#
#Given I click on "VT=End to End"
#And User clicks on Databases from side bar
#And I click on "VT=Create database" button
#And Created database with following details
      #|Name         | Description                       |Avator Color Index|Avator index| DatabaseType | Form Type   | 
      #|Pivot Grid -   | Pivot Grid Wiget testing Database | 8                |8           | Public       | Legacy Form |    
#And I click on "LABEL=Name" dropdown
#And I click on "VT=Delete"
#And User accepts the Delete alert
#And I click on "VT=Field"
#And I enter "LABEL1=Field Label" as "NAME"  
#And I click on "VT=Text Edit"
#And I click on "VT=Dropdown List"
#And I enter "PH=Add option" dropdown value as "SAI" 
#And I enter "LABEL1=Add option" as "DIPAK"
#And I enter "LABEL1=Add option" as "ROHIT"
#And I click on "VT=Done"
#And I wait for "2000" milli seconds
#
#And I click on "VT=Field"
#And I enter "LABEL1=Field Label" as "SUBJECT"  
#And I click on "VT=Text Edit"
#And I click on "VT=Dropdown List"
#And I enter "PH=Add option" dropdown value as "English" 
#And I enter "LABEL1=Add option" as "Hindi"
#And I enter "LABEL1=Add option" as "Marathi"
#And I enter "LABEL1=Add option" as "Tamil"
#And I click on "VT=Done"
#And I wait for "2000" milli seconds
#
#And I click on "VT=Field"
#And I enter "LABEL1=Field Label" as "Marks"  
#And I click on "VT=Done"
#And I wait for "2000" milli seconds
#
#And I click on "VT=Field"
#And I enter "LABEL1=Field Label" as "Result"  
#And I click on "VT=Text Edit"
#And I click on "VT=Dropdown List"
#And I enter "PH=Add option" dropdown value as "Pass" 
#And I enter "LABEL1=Add option" as "Fail"
#And I click on "VT=Done"
#And I wait for "2000" milli seconds
#
#And I click on "VT=Save"
#And I wait for "100" milli seconds
#And I click on "LABEL1=Retrofit Form?"
#And I click on "VT=OK"
#
#And User clicks on Databases from side bar
#And User Enter the database name on searchbox
#And User click on the displayed database
#And I click on "VT=Add" button
#
#And I click on "LABEL=NAME"[2]
#And I click on "VT=SAI"
#And I click on "LABEL=SUBJECT"[2]
#And I click on "VT=English"
#And I enter "LABEL3=Marks" as '80'
#And I click on "LABEL=Result"[2]
#And I click on "VT=Pass"
#And I click on "VT=Submit" button
#
#And I wait for "100" milli seconds
#And I click on "VT=Add" button
#And I wait for "100" milli seconds
#And I click on "LABEL=NAME"[2]
#And I click on "VT=SAI"[2]
#And I click on "LABEL=SUBJECT"[2]
#And I click on "VT=Marathi"
#And I enter "LABEL3=Marks" as '70'
#And I click on "LABEL=Result"[2]
#And I click on "VT=Pass"[2]
#And I click on "VT=Submit" button
#
#And I click on "VT=Add" button
#And I click on "LABEL=NAME"[2]
#And I wait for "100" milli seconds
#And I click on "VT=SAI"[3]
#And I click on "LABEL=SUBJECT"[2]
#And I click on "VT=Tamil"
#And I enter "LABEL3=Marks" as '75'
#And I click on "LABEL=Result"[2]
#And I click on "VT=Pass"[3]
#And I click on "VT=Submit" button
#
#And I click on "VT=Add" button
#And I click on "LABEL=NAME"[2]
#And I wait for "100" milli seconds
#And I click on "VT=DIPAK"
#And I click on "LABEL=SUBJECT"[2]
#And I click on "VT=English"[2]
#And I enter "LABEL3=Marks" as '70'
#And I click on "LABEL=Result"[2]
#And I click on "VT=Pass"[4]
#And I click on "VT=Submit" button
#
#And I click on "VT=Add" button
#And I click on "LABEL=NAME"[2]
#And I wait for "100" milli seconds
#And I click on "VT=DIPAK"[2]
#And I click on "LABEL=SUBJECT"[2]
#And I click on "VT=Marathi"[2]
#And I enter "LABEL3=Marks" as '85'
#And I click on "LABEL=Result"[2]
#And I click on "VT=Pass"[5]
#And I click on "VT=Submit" button
#
#And I click on "VT=Add" button
#And I click on "LABEL=NAME"[2]
#And I wait for "100" milli seconds
#And I click on "VT=DIPAK"[3]
#And I click on "LABEL=SUBJECT"[2]
#And I click on "VT=Hindi"
#And I enter "LABEL3=Marks" as '30'
#And I click on "LABEL=Result"[2]
#And I click on "VT=Fail"
#And I click on "VT=Submit" button     
#
#And I click on "VT=Add" button
#And I click on "LABEL=NAME"[2]
#And I wait for "100" milli seconds
#And I click on "VT=ROHIT"
#And I click on "LABEL=SUBJECT"[2]
#And I click on "VT=Hindi"[2]
#And I enter "LABEL3=Marks" as '75'
#And I click on "LABEL=Result"[2]
#And I click on "VT=Pass"[6]
#And I click on "VT=Submit" button     
#
#And I click on "VT=Add" button
#And I click on "LABEL=NAME"[2]
#And I wait for "100" milli seconds
#And I click on "VT=ROHIT"[2]
#And I click on "LABEL=SUBJECT"[2]
#And I click on "VT=Marathi"[3]
#And I enter "LABEL3=Marks" as '70'
#And I click on "LABEL=Result"[2]
#And I click on "VT=Pass"[7]
#And I click on "VT=Submit" button     
#
#And I click on "VT=Add" button
#And I click on "LABEL=NAME"[2]
#And I wait for "100" milli seconds
#And I click on "VT=ROHIT"[3]
#And I click on "LABEL=SUBJECT"[2]
#And I click on "VT=Tamil"[2]
#And I enter "LABEL3=Marks" as '30'
#And I click on "LABEL=Result"[2]
#And I click on "VT=Fail"[2]
#And I click on "VT=Submit" button      
#
#And I click on "DI=close"
#And I wait for "2000" milli seconds
#//Creation of New Dashboard
#And User click on Dashboard from side bar
#And I refresh the page
#And I wait for "2000" milli seconds
#And I click on "DI=plus"
#And User enters the dashboard title
#And I click on "VT=Select roles"
#And I click on "VT=All Org Users"
#And I click on "VT=Linked Users"
#And I click on "VT=System Admin"
#And I wait for "2000" milli seconds
#And User clicked on cursor
#And I click on Edit Permission "VT=Select roles" Dropdown
#And User selects the "VT=System Admin"
#And User clicked on edit permissin cursor
#And I wait for "2000" milli seconds
#And I click on "VT=Save" button
#And I wait for "2000" milli seconds
#And I click created dashboard
#And I wait for "2000" milli seconds
#//Adding new Widget
#And I click on "VT=Edit" button
#And I click on "VT=Add widget" button
#And I wait for "2000" milli seconds
#And User click on "VT=Pivot-Grid" widget
#Then User see the labels "Details", "Title", "Description", "Highlight color", "Border color" and "Background color"
#And I enter "PH=Title" dropdown value as "Pivot-Grid"
#And I enter "LABEL2=Description" as "Pivot Grid_0"
#And I wait for "2000" milli seconds
#Then User clicks on "Highlight color" color picker 
#And User selects "#FF6900" color 
#Then User clicks on "Border color" color picker 
#And User selects "#FCB900" color 
#Then User clicks on "Background color" color picker 
#And User selects "#7BDCB5" color
#And I click on "VT=Details"
#And I click on "VT=Data Points"
#And I wait for "2000" milli seconds
#And I click on "VT=Add"[2] button
#And I wait for "2000" milli seconds
#And I click on "LABEL=Choose Form" dropdown
#And I wait for "2000" milli seconds
#And I enter "LABEL1=Choose Form" as "Pivot Grid -dft-auto-"
#And I click on "LABEL=Choose field" dropdown
#And I enter "LABEL1=Choose field" as "EMP NAME"
#And I enter "LABEL1=Label" as "EMP NAME"
#And I wait for "2000" milli seconds
#And I click on "VT=Done"[2]
#And I wait for "2000" milli seconds
#And I click on "VT=Data Preview" button
#And I click on "VT=Save" button





















