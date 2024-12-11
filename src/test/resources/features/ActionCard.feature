@ZvolvDashboards
Feature: Action Card Dashboard Widget
	Action Card widget testing
  Background: 
Given I navigate to web application
Then I should see page title as "Zvolv"
And I see "VT=Login" web element
When login into the zvolv application with below credentials
|dragon_1|saikumaroffice786@gmail.com|Saik@123|
#And I click on "VT=Login"
 Then I see "VT=Zapps" and "VT=Create zapp" web element
    
@ActionCard
Scenario: Action card configuration - New Submission and External Link, dashboard Copy 

Given I click on "VT=End to End"
And I wait for "2000" milli seconds
And I refresh the page
#//new dashboard
And I wait for "2000" milli seconds
And I click on "DI=plus"[1] Button
And I wait for "2000" milli seconds
And User enters the "ActionCard" dashboard title
And I click on "VT=Select roles"
And I click on "VT=All Org Users"
And I click on "VT=Linked Users"
And I click on "VT=System Admin"
And I wait for 1 Seconds
And I click on Tab 
And I click on Edit Permission "VT=Select roles" Dropdown
And I wait for 1 Seconds
And User selects the "VT=System Admin"
And I wait for 1 Seconds
And I click on Tab 
And I click on "VT=Save" button
And I wait for 1 Seconds
And I click on new Created dashboard
And I wait for 1 Seconds

And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for 1 Seconds
And User click on "VT=Action Card" widget
And I enter "PH=Title" dropdown value as "Place a Order"
And I enter "LABEL2=Description" as "PLACE A ORDER AT YOUR FINGERTIPS__NEW_SUBMISSION"
And I wait for 1 Seconds
#//New submission
And I click on "VT=Action Card Setting"
And I click on "VT= New Submission "
And I click on "LABEL= New Submission" dropdown Value
And I wait for 1 Seconds
And I click on "VT=select Form"
When I enter "LABEL1=select Form" as "Dashboard_0001"
And I click on "VT=Add Default Fields" button
And I wait for 1 Seconds
Then User see the lables "Set Default Value for Fields", "Choose Field", 
And I click on "VT=Set Default Value for Fields" "DI=close" button
And I wait for "3000" milli seconds
And User clicks Background Color and selects the color
And I wait for "2000" milli seconds 
And I click on Body_1
And I click on Body
And User clicks on Text Color and Selects the text color
And I wait for "2000" milli seconds 
And User clicks on Icon Color ans Selects the Icon color
And I wait for "2000" milli seconds 
And I click on "VT=Save" button
And I wait for "2000" milli seconds
#//New From Extrnal Link
And I click on "VT=Add widget" button
And I wait for "2000" milli seconds
And User click on "VT=Action Card" widget
And I enter "PH=Title" dropdown value as "Place a Order"
And I enter "LABEL2=Description" as "PLACE A ORDER AT YOUR FINGERTIPS__EXTERNAL_LINK"
And I wait for "2000" milli seconds
And I click on "VT=Action Card Setting"
And I click on "VT= New Submission "
And I wait for "2000" milli seconds
And I click on "VT=External Link" from dropdown
And I wait for "2000" milli seconds
And User see the "External Link" Webelement
When I enter "LABEL1=External Link" as "http://app.zvolv.in"
And I wait for "2000" milli seconds
And I click on "VT=Advanced Settings"
And I click on "VT=Select roles"
And I wait for "2000" milli seconds
And I click on "VT=System Admin"
And I wait for "2000" milli seconds
And I wait for "2000" milli seconds
And I click on Body
And I click on "VT= End to End "
And I wait for "2000" milli seconds
When I enter "LABEL1= End to End " as "Demo"
And I wait for "2000" milli seconds 
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on "VT=Done" button
And I refresh the page
And I wait for 2 Seconds
#//verification of new submission of action card with database
And I click on "VT=NEW_SUBMISSION" Button
And I wait for 2 Seconds
And I enter "LABEL2=Purchase Order" as "Action Card New Submission"
And I click on "LABEL1JS=Daily PO"
And I click on "VT=PO_1" from dropdown
And I click on "LABEL1=Sell Invoice"
And I click on "VT=Invoice_1" from dropdown
And I click on "LABEL1=Purchase Order_1"
And I click on "VT=5 Ltr" from dropdown
And I click on "LABEL1=Name"
And I click on "VT=Royale_GLitz" from dropdown
And I click on "LABEL1=job"
And I click on "VT=1" from dropdown
And I wait for 1 Seconds
And I click on "VT=Submit" Button
And I wait for 2 Seconds
#//Verification with master
And User clicks on Databases from side bar
And I wait for 2 Seconds
And I click on "VT=Dashboard_0001DB"
And I wait for 2 Seconds
Then I see "VT=Action Card New Submission" web element
Then I see "VT=PO_1" web element
Then I see "VT=Invoice_1" web element
Then I see "VT=5 Ltr" web element
Then I see "VT=Royale_GLitz" web element
Then I see "VT=Purchase Order" column "VT=Action Card New Submission" added submission
Then I see "VT=Daily PO" column "VT=PO_1" added submission
Then I see "VT=Sell Invoice" column "VT=Invoice_1" added submission
Then I see "VT=Purchase Order_1" column "VT=5 Ltr" added submission
Then I see "VT=Name" column "VT=Royale_GLitz" added submission
Then I see "VT=job" column "VT=1" added submission
And I wait for 1 Seconds
And I click on Checkbox
And I wait for 1 Seconds
And I click on "DI=delete" Button
And I wait for 1 Seconds
And I click on "VT=Delete" button from "VT2=Are you sure you want to delete selected rows?"
#And I click on "VT=Delete" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "DI=close"
And I wait for 1 Seconds
#//Duplicate Dashboard
And User click on Dashboard from side bar
And I wait for 1 Seconds
And I click on new Created dashboard
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "DI=copy"
And I wait for 1 Seconds
Then I see "VT=Duplicate Dashboard" web element
And I click on "VT=OK" button
And I wait for 2 Seconds
Then I refresh the page
And I wait for 2 Seconds
Then I see "VT=Copy" of copied dashboard



#@DASHBOARD_0001_DataValidationAction_card
#Scenario: Verification of data added from Action card with database
#
#Given I click on "VT=End to End"
#And I click on "VT=Dashboard_0001"
#And I wait for "2000" milli seconds
#And I click on "VT=Place a Order"
#And I wait for "2000" milli seconds
#When I enter "LABEL3=Purchase Order" as "22-03-2024"
#And I wait for "2000" milli seconds
#And I click on "LABEL1=Daily PO"
#And I wait for "2000" milli seconds
#And I click on "VT=PO_1"
#And I wait for "2000" milli seconds
#And I click on "LABEL1=Sell Invoice"
#And I click on "VT=Invoice_2"
#And I wait for "2000" milli seconds
#And I click on "VT=Submit" button
#And I wait for "2000" milli seconds
#And User clicks on Databases from side bar
#And I wait for "2000" milli seconds
#And I click on "VT=Dashboard_0001DB"