@ZvolvDashboards
Feature: Activity Feed Dashboard Widget
Activity Feed Dashboard widget testing
  Background: 
Given I navigate to web application
Then I should see page title as "Zvolv"
And I see "VT=Login" web element
When login into the zvolv application with below credentials
  |dragon_1|saikumaroffice786@gmail.com|Saik@123|
#And I click on "VT=Login"
Then I see "VT=Zapps" and "VT=Create zapp" web element

@ActivityFeed
Scenario: Adding activity feed widget  to dashboard

Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
#//new dashboard
And I wait for 1 Seconds
And I click on "DI=plus"[1] Button
And I wait for "2000" milli seconds
And User enters the "ActivityFeed" dashboard title
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
And I wait for 1 Seconds
And I click on Tab 
And I wait for 1 Seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on new Created dashboard
And I wait for "2000" milli seconds
And I wait for "5000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for "2000" milli seconds
And User click on "VT=Activity Feed" widget
And I enter "PH=Title" dropdown value as "Activity Feed"
And I enter "LABEL2=Description" as "Activity Feed_01"
And I wait for "2000" milli seconds
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
And I click on "VT=Data Points"
#And I click on "VT=New Form Framework"
And I wait for "2000" milli seconds
And I click on "VT=Add"[2] button
And I wait for "2000" milli seconds
And I click on "LABEL=Choose Form" dropdown
And I wait for "2000" milli seconds
And I enter "LABEL1=Choose Form" as "ACTIVITY FEED"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "NAME"
And I enter "LABEL1=Label" as "NAME"
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "2000" milli seconds
And I click on "VT=Data Preview" button
And I click on "VT=Save" button
And I wait for "1000" milli seconds
And I click on "VT=Done" button
And I wait for "1000" milli seconds
And I refresh the page
And I wait for 1 Seconds
And I take Screenshot
