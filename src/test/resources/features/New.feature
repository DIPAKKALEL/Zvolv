@Zvolv1
Feature: Zvolv Regression Testing
  Whole regression suite
  Background: 
        Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When login into the zvolv application with below credentials
      |dragon_1|saikumaroffice786@gmail.com|Saik@123|
   # And I click on "VT=Login"
    Then I see "VT=Zapps" and "VT=Create zapp" web element
    

	@Dashboard
	Scenario: User is on Homepage, Verification of user can create Dashboard
	Given I click on "VT=End to End"
	And I wait for "5000" milli seconds
	And I reload the page
	And I click on "DI=plus"
	Then I see "VT=Add Dashboard" web element
	And I wait for "5000" milli seconds
	Then User see the labels "Title", "View Permissions", "Edit Permissions", and "Child Dashboards"
	And User see the samll muted text "Users in selected roles can view this dashboard","Users in selected roles can edit this dashboard","Please remember the dashboard ID", and checkbox text "Hide this dashboard"
	And I enter "PH=Title" as "Dashboard_00022"
	And I click on "VT=Select roles"
	And I click on "VT=All Org Users"
	And I click on "VT=Linked Users"
	And I click on "VT=System Admin"
	And I wait for "2000" milli seconds
	And I clicked on cursor
	And I click on Edit Permission "VT=Select roles" Dropdown
	And User selects the "VT=System Admin"
	And User clicked on edit permissin cursor
  And I wait for "1000" milli seconds
	And I click on "VT=Save" button

@Deep @DASHBOARD_0001_ActionCard
Scenario: Widget Action Card Creation
Given I click on "VT=End to End"
And I click on "VT=Dashboard_0001"
And I wait for "5000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for "1000" milli seconds
And User click on "VT=Action Card" widget
And I enter "PH=Title" dropdown value as "Place a Order"
And I enter "LABEL2=Description" as "PLACE A ORDER AT YOUR FINGERTIPS__NEW_SUBMISSION"
#And I click on "VT=Data Points"
#And I click on "VT=New Form Framework"
#And User click on "VT=Add" Button
#Then User see the labels "Label", "Data", "Formula", "Choose Form", "Choose Field" and "Data point" 
#And I click on "LABEL=Choose Form" dropdown
#When I enter "LABEL1=Choose Form" as "dash"
#And I click on "VT=Dashboard_0001" DD Option
#And I click on "LABEL=Choose Field" dropdown
#And I wait for "1000" milli seconds
#When I enter "LABEL1=Choose field" as "pur"
#And I click on "VT=Purchase Order_1"
#Then User clicks on "Done" button in Form footer
And I wait for "1000" milli seconds
And I click on "VT=Action Card Setting"
And I click on "VT= New Submission "
And I click on "LABEL= New Submission" dropdown Value
And I wait for "1000" milli seconds
And I click on "VT=select Form"
When I enter "LABEL1=select Form" as "Dashboard_0001"
And I click on "VT=Add Default Fields" button
And I wait for "1000" milli seconds
Then User see the lables "Set Default Value for Fields", "Choose Field", 
And I click on "DI=close" button
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

#And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for "1000" milli seconds
And User click on "VT=Action Card" widget
And I enter "PH=Title" dropdown value as "Place a Order"
And I enter "LABEL2=Description" as "PLACE A ORDER AT YOUR FINGERTIPS__EXTERNAL_LINK"
And I wait for "1000" milli seconds
And I click on "VT=Action Card Setting"
And I click on "VT= New Submission "
And I wait for "1000" milli seconds
And I click on "VT=External Link" from dropdown
And I wait for "1000" milli seconds
And User see the "External Link" Webelement
When I enter "LABEL1=External Link" as "http://app.zvolv.in"
And I wait for "2000" milli seconds
And I click on "VT=Advanced Settings"
And I click on "VT=Select roles"
And I wait for "1000" milli seconds
And I click on "VT=System Admin"
And I wait for "1000" milli seconds
#And I click on "DI=close-circle"
And I wait for "1000" milli seconds
And I click on Body
And I click on "VT= End to End "
And I wait for "1000" milli seconds
When I enter "LABEL1= End to End " as "Demo"
#And I wait for "5000" milli seconds
#And User click on "VT=Demo" form dropdown crosszapp datasource
And I wait for "2000" milli seconds 
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on "VT=Done" button


@Deep @DASHBOARD_0001_DataValidationAction_card
Scenario: Verification of data added from Action card with database

Given I click on "VT=End to End"
And I click on "VT=Dashboard_0001"
And I wait for "1000" milli seconds
And I click on "VT=Place a Order"
And I wait for "1000" milli seconds
When I enter "LABEL3=Purchase Order" as "22-03-2024"
And I wait for "1000" milli seconds
And I click on "LABEL1=Daily PO"
And I wait for "1000" milli seconds
And I click on "VT=PO_1"
And I wait for "1000" milli seconds
And I click on "LABEL1=Sell Invoice"
And I click on "VT=Invoice_2"
And I wait for "1000" milli seconds
And I click on "VT=Submit" button
And I wait for "1000" milli seconds
And User clicks on Databases from side bar
And I wait for "1000" milli seconds
And I click on "VT=Dashboard_0001DB"



@DASHBOARD_00022_Calender_DB

Scenario: Creation of Calender Events in Databse
Given I click on "VT=End to End"
And User clicks on Databases from side bar
And I wait for "2000" milli seconds
And I click on "VT=Dash_00022_Calender_Test-DB"
And I click on "VT=Add" button

And User enter the events data as below
| Title | Description | Start Date | End Date | Start Time | End Time | Invitee | Cancel | Reason for Cancellation | Formatting | ICON |
|ROHIT Birthday|Party at Hotel Baner|28/03/2024|28/03/2024|08:00 PM|10:00 PM|admin|No| Rohit is sick|            |       | 


And I enter "LABEL3=Title" as "Rohit Birthday"
And I enter "LABEL3=Title" as "Party at Hotel Baner"
And I enter "LABEL1= Start Date " as "28/03/2024"












@Deep @DASHBOARD_00022_Calender
Scenario: Addition of Calender Widget

Given I click on "VT=End to End"
And I click on "VT= Dashboard_00022 "
And I wait for "1000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for "1000" milli seconds
And User click on "VT=Calendar" widget
And I wait for "1000" milli seconds
#And I click on "DI2=down"
#And I wait for "1000" milli seconds
#Then I see Dropdown of Calender Time Zone
#And I wait for "1000" milli seconds
#And I click on "DI2=down"
And I wait for "1000" milli seconds
#And I see "VT= Calendar " web element
#And I see "VT= (UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi " web element
#And I see "VT=Day" web element
#And I see "VT=Week" web element
#And I see "VT=Month" web element
#And I see "VT=Timeline Day" web element

#Then I see "VT= Calendar ", "VT= (UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi ","VT=Day","VT=Week","VT=Month","VT=Timeline Day" web element
And I enter "PH=Title" as "CALENDAR_04"
And I2 enter "LABEL=Description" as "Cal_04"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
And I click on "VT=Data Source"
And I wait for "1000" milli seconds
And User click on "VT=Add" Button
And I wait for "1000" milli seconds
And I click on "VT=Select a Form"
And I wait for "2000" milli seconds
And I click on "VT= Dash_00022_Calender_Test-DB"
And I wait for "2000" milli seconds
And User click on "LABEL=Title" and "VT=Select data point"
And I click on "VT= Title"
And User click on "LABEL=Description" and "VT=Select data point"
And I wait for "1000" milli seconds
And User click on "VT=Description" dropdown option
And I wait for "1000" milli seconds
And User click on "LABEL=Start Date" and "VT=Select data point"
And I wait for "1000" milli seconds
And User click on "VT=Start Date" dropdown option
And I wait for "1000" milli seconds
And User click on "LABEL=End Date" and "VT=Select data point"
And I wait for "1000" milli seconds
And User click on "VT=End Date" dropdown option
And I wait for "1000" milli seconds
And User click on "LABEL=Start Time" and "VT=Select data point"
And I wait for "1000" milli seconds
And User click on "VT=Start Time" dropdown option
And I wait for "1000" milli seconds
And User click on "LABEL=End Time" and "VT=Select data point"
And I wait for "1000" milli seconds
And User click on "VT=End Time" dropdown option
#And I wait for "1000" milli seconds
#And User click on "LABEL=Invitee" and "VT=Select data point"
#And I wait for "1000" milli seconds
#And User click on "VT=Invitee" dropdown option
#And I wait for "1000" milli seconds
#And User click on "LABEL=Cancel" and "VT=Select data point"
#And I wait for "1000" milli seconds
#And User click on "VT=Cancel" dropdown option
#And I wait for "1000" milli seconds

#And User click on "LABEL=Reason of Cancellation" and "VT=Select data point"
#And I wait for "1000" milli seconds

#And User click on "VT= Reason for Cancellation" dropdown option
#And I wait for "1000" milli seconds
#And User click on "LABEL=Formatting" and "VT=Select data point"
#And I wait for "1000" milli seconds
#And User click on "VT=Title" dropdown option
#And I wait for "1000" milli seconds

#And User click on "LABEL=Icons" and "VT=Select data point"
#And I wait for "1000" milli seconds
#And User click on "VT=ICON" dropdown option
#And I wait for "1000" milli seconds

And I Scroll down the page to "VT=Done" WebElement
And I wait for "2000" milli seconds
And User click on "VT=Done" btn
And I wait for "2000" milli seconds
And I click on "VT=Calendar Config"
And I wait for "1000" milli seconds
And User click on "LABEL= Start day hour" and "VT=Select Time"
And I wait for "1000" milli seconds
And I click on "VT=1" Dropdown
And User click on "LABEL=End day hour" and "VT=Select Time"
And I wait for "1000" milli seconds
And I click on "VT=24" Dropdown
And User click on "LABEL=Default view" and "VT=Select Default view"
And I wait for "1000" milli seconds
And I click on "VT=month" Dropdown
And I enter "PH=Enter height" as "550"
And User click on "LABEL=Time duration (minutes)" and "VT=Select duration"
And I wait for "1000" milli seconds
And I click on "VT=30" Dropdown
And I wait for "1000" milli seconds
And I click on "VT=Save" button
#//Addition of calnder event btn from calendar config


Then I see "VT=CALENDAR_04" web element
And I click on "VT=CALENDAR_04" setting button
And I wait for "1000" milli seconds
And I click on "VT=Calendar Config"
And I wait for "1000" milli seconds
And User click on "LABEL=Select" and "VT=Select Form"
And I click on "VT= Dash_00022_Calender_Test-DB"
And I enter "PH=Enter button tittle" as "CREAT EVENT"
And I click on "VT=Save" button
And I click on "VT=Done" button
And I wait for "1000" milli seconds
Then I see "VT=CREAT EVENT" web element
#//Crating event from creat event btn
And I click on "VT=CREAT EVENT" button
And I wait for "1000" milli seconds
And I enter "LABEL3=Title" as "AUTOMATION TESTER"
And I enter "LABEL3=Description" as "DIPAK"
And I click "LABEL1= Start Date "
And I enter Date as "30/Mar/2020"
And I wait for "1000" milli seconds
And I click "LABEL1= End Date "
And I enter Date as "30/Mar/2020"
And I wait for "1000" milli seconds
And I enter time "VT=Start Time" as "10:30 am"
And I wait for "1000" milli seconds
And I enter time "VT=End Time" as "12:30 pm"
And I wait for "1000" milli seconds
And I click on "VT=Submit" button
#And I click on the "VT=Start Date" input field
#And I click on the "VT=Start Date" input field






@Delete_calendar_Widget
Scenario: Delet non required calendar from Dashboard
Given I click on "VT=End to End"
And I click on "VT= Dashboard_00022 "
And I wait for "1000" milli seconds
And I click on "VT=Edit" button
And I click on "ICON=delete" delete of calendar
And I wait for "1000" milli seconds
And I click on "VT=Delete" button






@Deep @VerificationOfCalendarDATA
Scenario: Verification of Calendar Data
Given I click on "VT=End to End"
And I click on "VT= Dashboard_00022 "
And I wait for "1000" milli seconds
And I click on "DI2=down"
And I wait for "1000" milli seconds
Then I see Dropdown of Calender Time Zone
And I wait for "1000" milli seconds
And I click on "DI2=down"
#And I Click on Month and Year
#And Again I Click on Month and Year
#And Again I click on Year
#And Again I click on year combination
#And I click on Previous arrow till year equals "VT=1000"
And I click on "VT=1000"
And I click on "VT=1000"
And I click on "VT=Jan"

















