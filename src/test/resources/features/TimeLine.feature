@ZvolvDashboards
Feature: Timeline Dashboard Widget
 	Timeline widget testing  
Background: 
Given I navigate to web application
Then I should see page title as "Zvolv"
And I see "VT=Login" web element
When login into the zvolv application with below credentials
   |dragon_1|saikumaroffice786@gmail.com|Saik@123|
#And I click on "VT=Login"
Then I see "VT=Zapps" and "VT=Create zapp" web element

@TimelineWidget
Scenario: User able to Creat Timeline widget

Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
#//new dashboard
And I wait for 1 Seconds
And I click on "DI=plus"[1] Button
And User enters the "Timeline" dashboard title
And I click on "VT=Select roles"
And I click on "VT=All Org Users"
And I click on "VT=Linked Users"
And I click on "VT=System Admin"
And I wait for 1 Seconds
And I click on Tab 
And I click on Edit Permission "VT=Select roles" Dropdown
And I wait for 1 Seconds
And User selects the "VT=System Admin"
And I click on Tab 
And I wait for 1 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on new Created dashboard
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for 2 Seconds
And User click on "VT=Timeline" widget
And I wait for 2 Seconds
And I enter "PH=Title" as "TIMELINE"
And I2 enter "LABEL=Description" as "TIMELINE WIDGET TESTING"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
And I click on "VT=Data Points"
And I wait for 2 Seconds
And I click on "VT=Add" button from "VT=Data Points"
And I wait for 2 Seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "TIMELINE_01 _DB"
And I click on "LABEL=Choose field" dropdown
Then User able to see created forms column same as "EMP NAME","TASK","START Date","END Date","Status"[1] values in dropdown
And I enter "LABEL1=Choose field" as "EMP NAME"
And I enter "LABEL1=Label" as "EMP NAME"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And I click on "VT=Data Preview" button
Then I see "VT=ROHIT" web element
And I wait for 2 Seconds
And I click on "DI2=close"[3]
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "TIMELINE_01 _DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose Form" as "TIMELINE_01 _DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "TASK"
And I enter "LABEL1=Label" as "TASK"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "TIMELINE_01 _DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose Form" as "TIMELINE_01 _DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "START Date"
And I enter "LABEL1=Label" as "START Date"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "TIMELINE_01 _DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose Form" as "TIMELINE_01 _DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "END Date"
And I enter "LABEL1=Label" as "END Date"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "TIMELINE_01 _DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose Form" as "TIMELINE_01 _DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Status"
And I enter "LABEL1=Label" as "Status"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And I click on "VT=Timeline Config"
And I wait for 2 Seconds
And I click on "VT=Configure"[2] button
And I wait for 2 Seconds
And I click on "LABEL=Select project title" and "VT=Select data point"
And I wait for 2 Seconds
Then User able to see created forms column same as "EMP NAME","TASK","START Date","END Date","Status"[2] values in dropdown
And I click on "VT=TASK"[2]
And I wait for 2 Seconds
And User click on "LABEL=Select task title" and "VT=Select data point"
And I wait for 2 Seconds
Then User able to see created forms column same as "EMP NAME","TASK","START Date","END Date","Status"[2] values in dropdown
And I click on "VT=EMP NAME"[2]
And I wait for 2 Seconds
And User click on "LABEL=Select task status" and "VT=Select data point"
And I wait for 2 Seconds
Then User able to see created forms column same as "EMP NAME","TASK","START Date","END Date","Status"[2] values in dropdown
And I click on "VT=Status"[2]
And I wait for 2 Seconds
And User click on "LABEL=Select end date" and "VT=Select data point"
And I wait for 2 Seconds
Then User able to see created forms column same as "EMP NAME","TASK","START Date","END Date","Status"[2] values in dropdown
And I click on "VT=END Date"[2]
And I click on "VT=OK" button
And I wait for 2 Seconds
And I click on "VT=Save" button
And I click on "VT=Done" button
#//UI Verification
#@DashboardWidget @VerificationOfTimelineData
#Scenario: Verification of UI data with form old
#Given I click on "VT=End to End"
And I wait for 2 Seconds
And User clicks on Databases from side bar
And I wait for 2 Seconds
And I click on "VT=TIMELINE_01 _DB"
And I wait for 2 Seconds
Then User see the column "VT=EMP NAME" and data in it "VT=ROHIT"
Then User see the column "VT=EMP NAME" and data in it "VT=DIPAK"
And I click on "DI=close"
And I wait for 2 Seconds
And User click on Dashboard from side bar
And I click on new Created dashboard
#And I click on "VT= Dashboard_00023 "
And I wait for 2 Seconds
And I take Screenshot
And I see "VT=Testing"[1] web element
And I see "VT=ROHIT"[1] web element
And I see "VT=ROHIT"[2] web element
And I see "VT=Pending" web element
And I see "VT=10 Apr 24"[1] web element
And I see "VT=10 Apr 24"[2] web element
