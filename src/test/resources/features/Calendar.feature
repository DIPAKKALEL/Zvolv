@ZvolvDashboards @CALENDARDEEP
Feature: Calendar Dashboard Widget
  Calendar widget Testing
  Background: 
  Given I navigate to web application
  Then I should see page title as "Zvolv"
  And I see "VT=Login" web element
  When login into the zvolv application with below credentials
      |dragon_1|saikumaroffice786@gmail.com|Saik@123|
   # And I click on "VT=Login"
  Then I see "VT=Zapps" and "VT=Create zapp" web element
    
#@CaledarDataSource
#Scenario: Configuuration & Verification of Calender Widget - New form
#
#Given I click on "VT=End to End"
#And I wait for "2000" milli seconds
#And I refresh the page
#//Creating new Dashboard
#And I wait for "2000" milli seconds
#And I click on "DI=plus"[1] Button
#And I wait for "2000" milli seconds
#And User enters the "Calendar" dashboard title
#And I click on "VT=Select roles"
#And I click on "VT=All Org Users"
#And I click on "VT=Linked Users"
#And I click on "VT=System Admin"
#And I wait for 1 Seconds
#And I click on Tab 
#And I wait for 1 Seconds
#And I click on Edit Permission "VT=Select roles" Dropdown
#And I wait for 1 Seconds
#And User selects the "VT=System Admin"
#And User clicked on edit permissin cursor
#And I wait for "2000" milli seconds
#And I click on "VT=Save" button
#And I wait for "2000" milli seconds
#And I click on new caledar dashboard
#And I wait for "2000" milli seconds
#And I click on "VT=Edit" button
#And I wait for "2000" milli seconds
#And I click on "VT=Add widget" button
#And I wait for "2000" milli seconds
#And User click on "VT=Calendar" widget
#And I wait for "2000" milli seconds
#And I see "VT= Calendar " web element
#And I see "VT= (UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi " web element
#And I see "VT=Day" web element
#And I see "VT=Week" web element
#And I see "VT=Month" web element
#And I see "VT=Timeline Day" web element
#Then I see "VT= Calendar ", "VT= (UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi ","VT=Day","VT=Week","VT=Month","VT=Timeline Day" web element
#And I enter "PH=Title" as "CALENDAR"
#And I2 enter "LABEL=Description" as "Calendar Testing"
#Then User clicks on "Highlight color" color picker 
#And User selects "#FF6900" color 
#Then User clicks on "Border color" color picker 
#And User selects "#FCB900" color 
#Then User clicks on "Background color" color picker 
#And User selects "#7BDCB5" color
#And I click on "VT=Details"
#And I click on "VT=Data Source"
#And I wait for "2000" milli seconds
#And User click on "VT=Add" Button
#And I wait for "2000" milli seconds
#Then User see the labels "Choose Form", "Title", "Description", "Start Date", "End Date" and "Invitee"
#And I click on "VT=Select a Form"
#And I wait for "2000" milli seconds
#And I click on "VT= Dash_00022_Calender_Test-DB"
#And I wait for "2000" milli seconds
#And User click on "LABEL=Title" and "VT=Select data point"
#And I click on "VT= Title"
#And User click on "LABEL=Description" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT=Description" dropdown option
#And I wait for "2000" milli seconds
#And User click on "LABEL=Start Date" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT=Start Date" dropdown option
#And I wait for "2000" milli seconds
#And User click on "LABEL=End Date" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT=End Date" dropdown option
#And I wait for "2000" milli seconds
#And User click on "LABEL=Start Time" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT=Start Time" dropdown option
#And I wait for "2000" milli seconds
#And User click on "LABEL=End Time" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT=End Time" dropdown option
#And I wait for "2000" milli seconds
#And User click on "LABEL=Invitee" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT=Invitee" dropdown option
#And I wait for "2000" milli seconds
#And User click on "LABEL=Cancel" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT=Cancel" dropdown option
#And I wait for "2000" milli seconds
#And User click on "LABEL=Reason of Cancellation" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT= Reason for Cancellation" dropdown option
#And I wait for "2000" milli seconds
#And User click on "LABEL=Formatting" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT=Title" dropdown option
#And I wait for "2000" milli seconds
#And User click on "LABEL=Icons" and "VT=Select data point"
#And I wait for "2000" milli seconds
#And User click on "VT=ICON" dropdown option
#And I wait for "2000" milli seconds
#And I Scroll down the page to "VT=Done" WebElement
#And I wait for "2000" milli seconds
#And User click on "VT=Done" btn
#And I wait for "2000" milli seconds
#And I click on "VT=Calendar Config"
#And I wait for "2000" milli seconds
#And User click on "LABEL= Start day hour" and "VT=Select Time"
#And I wait for "2000" milli seconds
#And I click on "VT=1" Dropdown
#And User click on "LABEL=End day hour" and "VT=Select Time"
#And I wait for "2000" milli seconds
#And I click on "VT=24" Dropdown
#And User click on "LABEL=Default view" and "VT=Select Default view"
#And I wait for "2000" milli seconds
#And I click on "VT=month" Dropdown
#And I wait for "2000" milli seconds
#Then I see "VT=Month" as a default calendar view
#And I wait for "100" milli seconds
#And I see "VTEQ=June 2024" web element
#And User click on "LABEL=Default view" and "VT=month"
#And I click on "VT=day" Dropdown
#And I wait for "2000" milli seconds
#Then I see "VT=Day" as a default calendar view
#And I enter "PH=Enter height" as "550"
#And User click on "LABEL=Time duration (minutes)" and "VT=Select duration"
#And I wait for "2000" milli seconds
#And I click on "VT=15" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=15"
#And I click on "VT=30" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=30"
#And I click on "VT=60" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=60"
#And I click on "VT=90" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=90"
#And I click on "VT=120" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Default view" and "VT=day"
#And I click on "VT=week" Dropdown
#And I wait for "2000" milli seconds
#Then I see "VT=Week" as a default calendar view
#And I enter "PH=Enter height" as "550"
#And User click on "LABEL=Time duration (minutes)" and "VT=120 min"
#And I wait for "2000" milli seconds
#And I click on "VT=15" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=15"
#And I click on "VT=30" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=30"
#And I click on "VT=60" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=60"
#And I click on "VT=90" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=90"
#And I click on "VT=120" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Default view" and "VT=week"
#And I click on "VT=timelineDay" Dropdown
#And I wait for "2000" milli seconds
#Then I see "VT=Timeline Day" as a default calendar view
#And I enter "PH=Enter height" as "550"
#And User click on "LABEL=Time duration (minutes)" and "VT=120 min"
#And I wait for "2000" milli seconds
#And I click on "VT=15" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=15"
#And I click on "VT=30" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=30"
#And I click on "VT=60" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=60"
#And I click on "VT=90" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Time duration (minutes)" and "VT=90"
#And I click on "VT=120" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Default view" and "VT=timelineDay"
#And I wait for "2000" milli seconds
#And I click on "VT=month" Dropdown
#And I wait for "2000" milli seconds
#And I click on "VT=Save" button
#//Addition of calnder event btn from calendar config
#Then I see "VT=CALENDAR" web element
#And I click on "VT=CALENDAR" setting button
#And I wait for "2000" milli seconds
#And I click on "VT=Calendar Config"
#And I wait for "2000" milli seconds
#And User click on "LABEL=Select" and "VT=Select Form"
#And I click on "VT= Dash_00022_Calender_Test-DB"
#And I enter "PH=Enter button tittle" as "CREAT EVENT"
#And I click on "VT=Save" button
#And I click on "VT=Done" button
#And I wait for "2000" milli seconds
#Then I see "VT=CREAT EVENT" web element
#//Crating event from creat event btn
#And I click on "VT=CREAT EVENT" button
#And I wait for "2000" milli seconds
#Then User see the labels "Title", "Description", "Start Date", "End Date", "Start Time" and "End Time"
#And I enter "LABEL3=Title" as "AUTOMATION TESTER"
#And I enter "LABEL3=Description" as "DIPAK"
#And I click "LABEL1= Start Date "
#And I click on "VT=Today"
#And I wait for "2000" milli seconds
#And I click "LABEL1= End Date "
#And I click on "VT=Today"
#And I wait for "2000" milli seconds
#And I enter time "VT=Start Time" as "10:30 am"
#And I click on Body
#And I wait for "2000" milli seconds
#And I enter time "VT=End Time" as "12:30 pm"
#And I click on Body
#And I wait for "2000" milli seconds
#And I click on "VT=Submit" button
#And I wait for "2000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I see "VT=AUTOMATION TESTER" web element
#And I click on "VT=Edit" button
#And I wait for "2000" milli seconds
#And I click on "ICON=delete" delete of calendar
#And I wait for "2000" milli seconds
#And I click on "VT=Delete" button
#And I wait for "2000" milli seconds
#And I click on "VT=Done" button
#And I wait for "2000" milli seconds
#And User clicks on Databases from side bar
#And I wait for "2000" milli seconds
#And I click on "VT=Dash_00022_Calender_Test-DB" 
#And I wait for "2000" milli seconds
#And I see "VT=AUTOMATION TESTER" web element
#And I see "VT=DIPAK" web element
#And I see todays date web element
#And I see "VT=10:30 am" web element
#And I see "VT=12:30 pm" web element
#And I click on Checkbox
#And I wait for "2000" milli seconds
#And I click on "DI2=delete" button
#And I wait for "2000" milli seconds
#And I click on "VT=Delete" button
#And I wait for "2000" milli seconds
#And I refresh the page
#And I wait for "2000" milli seconds
#And I click on "DI=close" 
#And I wait for "2000" milli seconds

#@VerificationOfCalendarDATA
#Scenario: Verification of Calendar Data new form - Leaf Year Non-Leaf Year, Weekdays, Todays Date
#Given I click on "VT=End to End"
#//Creating new Dashboard
#And I wait for "2000" milli seconds
#And I refresh the page
#And I wait for "2000" milli seconds
#And I click on "DI=plus"[1] Button
#And User enters the "Calendar" dashboard title
#And I click on "VT=Select roles"
#And I click on "VT=All Org Users"
#And I click on "VT=Linked Users"
#And I click on "VT=System Admin"
#And I wait for 1 Seconds
#And I click on Tab 
#And I wait for 1 Seconds
#And I click on Edit Permission "VT=Select roles" Dropdown
#And I wait for 1 Seconds
#And User selects the "VT=System Admin"
#And I wait for 1 Seconds
#And I click on Tab 
#And I click on "VT=Save" button
#And I wait for "2000" milli seconds
#And I click on new caledar dashboard
#And I wait for "2000" milli seconds
#And I click on "VT=Edit" button
#And I click on "VT=Add widget" button
#And I wait for "2000" milli seconds
#And User click on "VT=Calendar" widget
#And I wait for "2000" milli seconds
#And I enter "PH=Title" as "CALENDAR"
#And I2 enter "LABEL=Description" as "Backend configuration data Verification"
#And I wait for "2000" milli seconds
#And I click on "VT=Calendar Config"
#And I wait for "2000" milli seconds
#And User click on "LABEL=Default view" and "VT=Select Default view"
#And I wait for "2000" milli seconds
#And I click on "VT=month" Dropdown
#And I wait for "100" milli seconds
#And I click on "VT=Save" button
#And I click on "VT=Done" button
#And I wait for "2000" milli seconds
#And Uset click on caledar time zone dropdown icon
#And I wait for "100" milli seconds
#Then I see Dropdown of Calender Time Zone
#And I wait for "100" milli seconds
#And Uset click on caledar time zone dropdown icon
#Then User verifies the WeekDays of the Calendar
#And I wait for "2000" milli seconds
#Then i print the Date
#Then User verifies the current date of calendar
#And I wait for "2000" milli seconds
#Then User checks for the Leaf Year Feb month days
#And I click on Calendar Body
#Then User checks for the Non Leaf Year Feb month days
#And I click on Calendar Body
#And I click on "VT=Edit" button
#And I wait for "2000" milli seconds
#And I click on "VT=CALENDAR" setting button
#And I wait for 2 Seconds
#And I click on "VT=Calendar Config" from configuration
#And I wait for "2000" milli seconds
#And I click on "DI3=close-circle"[1]
#And I wait for "1000" milli seconds
#And User click on "LABEL=Default view" and "VT=Select Default view" button
#And I wait for "2000" milli seconds
#And I click on "VT=timelineDay" Dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL= Start day hour" and "VT=Select Time"
#And I wait for "2000" milli seconds
#Then User Verifies "LABEL=Start day hour" dropdown options
#And I wait for "2000" milli seconds
#And User click on "LABEL= Start day hour" and "VT=24"
#And I click on "VT=1" Dropdown
#And User click on "LABEL=End day hour" and "VT=Select Time"
#And I wait for "2000" milli seconds
#And I click on "VT=24" Dropdown
#And User click on "LABEL=Default view" and "VT=timelineDay"
#And I wait for "2000" milli seconds
#And I click on "VT=month" Dropdown
#And I wait for "2000" milli seconds
#//UI verification
#And User clicks on "Show TimeZone" checkbox
#And I wait for "2000" milli seconds
#Then WebElement by "VT=UTC+05:30"[2] disappears from UI
#And I wait for "1000" milli seconds
#And User clicks on "Show TimeZone" checkbox
#Then I see "VT=CALENDAR" time zone box element
#And I wait for "1000" milli seconds




@CalnedarOldForm-MonthViewEvent
Scenario: Configuration of Caledar widget - old form Data Points-Month View Event Verification
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//delete event
And I wait for 2 Seconds
And User clicks on Databases from side bar
And I wait for 1 Seconds
And I click on "VT=Calendar old Form"
And I wait for 1 Seconds
When User click on edit icon
And I wait for 1 Seconds
And I click on "VT=Truncate"
And I wait for 1 Seconds
And I click on "VT=Delete All"
And I click on "VT=Submit"
And I click on "VT=OK"
And I wait for 1 Seconds
And I take Screenshot
And I refresh the page
And I wait for 1 Seconds
And I click on "DI=close"[1]
And I wait for 2 Seconds
And User click on Dashboard from side bar
And I wait for 2 Seconds
#//Creating new Dashboard
And I click on "DI=plus"[1] Button
And I wait for 2 Seconds
And User enters the "Calendar Old Form" dashboard title
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
And I wait for 2 Seconds
And I click on new caledar dashboard
And I wait for 2 Seconds
#And I click on "VT=Calendar Old Form-DashBoard-8834"
#And I wait for "2000" milli seconds
#//Widget adding
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I wait for 2 Seconds
#And I click on "VT=CALENDAR Old Form" setting button
#And I wait for "2000" milli seconds
And I click on "VT=Add widget" button
And I wait for 2 Seconds
And User click on "VT=Calendar" widget
And I wait for 2 Seconds
And I enter "PH=Title" as "CALENDAR Old Form"
And I2 enter "LABEL=Description" as "Calendar Configuration Old Form Testing"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
#//Data Points Field Mapping
And I click on "VT=Data Points"
And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Calendar old Form"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Task Title"
And I wait for 2 Seconds
And I enter "LABEL1=Label" as "Task Title"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Calendar old Form"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Description"
And I wait for 1 Seconds
And I enter "LABEL1=Label" as "Description"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Calendar old Form"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Start Date"
And I wait for 1 Seconds
And I enter "LABEL1=Label" as "Start Date"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Calendar old Form"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "End Date"
And I wait for 1 Seconds
And I enter "LABEL1=Label" as "End Date"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Calendar old Form"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Task Link"
And I wait for 1 Seconds
And I enter "LABEL1=Label" as "Task Link"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Calendar old Form"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Invitee"
And I wait for 1 Seconds
And I enter "LABEL1=Label" as "Invitee"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds
And I click on "VT=Data Points"
And I wait for 1 Seconds
#// Calendar Config
And I click on "VT=Calendar Config" from configuration
And I wait for 1 Seconds
And I click on "VT=Configure"[2] button
And I wait for 1 Seconds
And User click on "LABEL=Select task title" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Task Title" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select task description" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Description" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select start date" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Start Date" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select end date" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=End Date" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select task link" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Task Link" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select Invitee" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Invitee" from dropdown
And I wait for 1 Seconds
And I click on "VT=OK" button
And I wait for 2 Seconds

And User click on "LABEL=Default view" and "VT=Select Default view"
And I wait for 2 Seconds
And I click on "VT=month" Dropdown
And I wait for 2 Seconds
#And User click on "LABEL= Start day hour" and "VT=Select Time"

#//UI verification
#Then User Verifies "LABEL=Start day hour" dropdown options
#And I wait for 1 Seconds
#And User click on "LABEL= Start day hour" and "VT=24"
#And I click on "VT=1" Dropdown
#And User click on "LABEL=End day hour" and "VT=Select Time"
#And I wait for 1 Seconds
#And I click on "VT=24" Dropdown
#And User click on "LABEL=Default view" and "VT=timelineDay"
#And I wait for 1 Seconds
#And I click on "VT=month" Dropdown
#And I wait for 1 Seconds
#//UI verification
And I wait for 2 Seconds
And User clicks on "Show TimeZone" checkbox
And I wait for 1 Seconds
Then WebElement by "VT=UTC+05:30"[2] disappears from UI
And I wait for 1 Seconds
And User clicks on "Show TimeZone" checkbox
Then I see "VT=CALENDAR Old Form" time zone box element
And I wait for 1 Seconds
#And User click on "LABEL= Start day hour" and "VT=0"
#And User click on "LABEL=End day hour" and "VT=Select Time"
#Then User Verifies "LABEL=End day hour" dropdown options
And I click on "VT=Calendar Config"[3]
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 1 Seconds
Then I see "VT=Month" as a default calendar view
And I wait for 1 Seconds
#//Adding data/Creating Event
And User clicks on Databases from side bar
And I wait for 1 Seconds
And I click on "VT=Calendar old Form"
And I wait for 1 Seconds
And I click on "VT=Add" button
And I wait for 1 Seconds
And I enter "LABEL2=Task Title"[2] as "Event Testing" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Event Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for "1000" milli seconds
And I click on "VT=Now"
And I wait for "1000" milli seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for "1000" milli seconds
And I click on "LABEL2=Invitee"[2]
And I wait for "1000" milli seconds
And I click on "VTEQ=admin" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for "1000" milli seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "DI=close"[1]
And I wait for 2 Seconds
And User click on Dashboard from side bar
And I wait for 1 Seconds
And I click on new Created dashboard
And I wait for 1 Seconds
And I refresh the page
And I wait for 2 Seconds
#//Event Verification on UI
And I see "VT=Event Testing" web element
Then I click on "VT=Event Testing"
And I wait for 2 Seconds
Then I see "VT=Event Testing By Automation" web element
Then I see "VT=http://dragon_1.zvolv.in/databases/7127" web element
And I take Screenshot

@CalnedarOldForm-DayViewEvent
Scenario: Configuration of Caledar widget - old form Data Points- Day View Event Verification
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on new caledar dashboard
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "VTEQ=Day"
And I wait for 1 Seconds
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=Event Testing" WebElement
And I see "VT=Event Testing" WebElement
And I click on "VT=Cancel"
#Then I click on "VT=Event Testing"
And I take Screenshot

@CalnedarOldForm-TimeLineViewEvent
Scenario: Configuration of Caledar widget - old form Data Points- Timeline View Event Verification
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on new caledar dashboard
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
#Then I see "VT=Event Testing By Automation" web element
#Then I see "VT=http://dragon_1.zvolv.in/databases/7127" WebElement
And I wait for 1 Seconds
And I click on "VTEQ=Timeline Day"
And I wait for 1 Seconds
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_RIGHT" of keyboard 50 times to see the "VT=Event Testing" WebElement
And I take Screenshot
And I click on "VT=Cancel"

@CalnedarOldForm-WeekViewEvent
Scenario: Configuration of Caledar widget - old form Data Points- Week View Event Verification
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on new caledar dashboard
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "VTEQ=Week"
And I wait for 2 Seconds
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 30 times to see the "VT=Event Testing" WebElement
And I take Screenshot
And I click on "VT=Cancel"
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I refresh the page


@CalnedarOldForm-UserInFilterAdmin
Scenario: Old Form -Calendar Configuration for Invitee and User In Filter- Admin Login
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 1 Seconds
#//User in Event creation
And User clicks on Databases from side bar
And I wait for 1 Seconds
And I click on "VT=Calendar old Form"
And I wait for 1 Seconds
And I click on all select checkbox
And I wait for 2 Seconds
And I click on "DI=delete" Button
And I wait for 2 Seconds
And I click on "VT=Delete" button from "VT2=Are you sure you want to delete selected rows?"
#And I click on "VT=Delete" button
And I wait for 2 Seconds
And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-1" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-1 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=sai" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 2 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-2" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-2 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=sai" from dropdown
And I click on Body[1]
And I wait for 1 Seconds
And I click on "VT=Submit" button
And I wait for 1 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-3" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-3 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=Dipak kalel" from dropdown
And I wait for "1000" milli seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 2 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-4" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-4 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=Dipak kalel" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 2 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-5" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-5 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=rohit" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 1 Seconds

And I click on "VT=Add" button
And I wait for 1 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-6" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-6 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=rohit" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "DI=close"[1]
And I wait for 2 Seconds
And User click on Dashboard from side bar
And I wait for 1 Seconds
And I click on new Created dashboard
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds

#//Filter Userin data points
And I click on "VT=Edit" button
And I click on "VT=CALENDAR Old Form" setting button
And I wait for 1 Seconds
And I click on "VT=Data Points"
And I wait for 1 Seconds
And I click on "VT=Invitee"
And I wait for 1 Seconds
And I click on "VT=Filter" from tablist of data point
And I wait for 1 Seconds
And I click on "VT=Add filter"
And I wait for 1 Seconds
And I click on "VT=Choose condition" Button
And I wait for 1 Seconds
And I click on "VT=User in"
And I wait for 1 Seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds
And I click on "VT=Save" button
And I wait for 1 Seconds
And I click on "VT=Done" button
And I refresh the page
And I wait for 1 Seconds
And I click on "VTEQ=Day"
And I wait for 1 Seconds
#//UI verification
Then I see "VTEQ=admin" web element
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=Event Testing" WebElement

@CalnedarOldForm-UserInFilterEndUser-1
Scenario: Old Form -Calendar Configuration for Invitee and User In Filter- End user-1
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 1 Seconds
#//log in with diifernt user log in 
And I click on "VT=User" button
And I click on "VT=Logout" button
And I wait for 2 Seconds
And I login with Users credentials
|  manager@zvolv.com   |Saik@123|
And I wait for 1 Seconds
Given I click on "VT=End to End"
And I wait for 1 Seconds
And I click on new caledar dashboard
And I wait for 2 Seconds
And I click on "VTEQ=Day"
And I wait for "1000" milli seconds
#//User UI verification Sai
Then I see "VTEQ=sai" web element
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=Task-1" WebElement
And I take Screenshot


@CalnedarOldForm-UserInFilterEndUser-2
Scenario: Old Form -Calendar Configuration for Invitee and User In Filter- End user-2
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 1 Seconds
#//log in with diifernt user log in 
And I wait for 2 Seconds
And I click on "VT=User" button
And I click on "VT=Logout" button
And I wait for 2 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
And I wait for 1 Seconds
Given I click on "VT=End to End"
And I wait for 1 Seconds
And I click on new caledar dashboard
And I wait for 2 Seconds
And I click on "VTEQ=Day"
And I wait for 1 Seconds
#//User UI verification Sai
Then I see "VTEQ=Dipak kalel" web element
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=Task-3" WebElement
And I take Screenshot

@CalnedarOldForm-UserInFilterEndUser-3
Scenario: Old Form -Calendar Configuration for Invitee and User In Filter- End user-3
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 1 Seconds

#//log in with diifernt user log in 
And I wait for 2 Seconds
And I click on "VT=User" button
And I click on "VT=Logout" button
And I wait for 1 Seconds
And I login with Users credentials
|rohit@zvolv.com|Rohit@123|
And I wait for 1 Seconds
Given I click on "VT=End to End"
And I wait for 1 Seconds
And I click on new caledar dashboard
And I wait for 2 Seconds
And I click on "VTEQ=Day"
And I wait for 1 Seconds
#//User UI verification Sai
Then I see "VTEQ=rohit" web element
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=Task-5" WebElement
And I take Screenshot
And I wait for "1000" milli seconds
And I click on "VT=Cancel"
#//delete event
#And I wait for 2 Seconds
#And User clicks on Databases from side bar
#And I wait for 1 Seconds
#And I click on "VT=Calendar old Form"
#And I wait for 1 Seconds
#And I click on all select checkbox
#And I wait for 2 Seconds
#And I click on "DI=delete" Button
#And I wait for 2 Seconds
#And I click on "VT=Delete" button from "VT2=Are you sure you want to delete selected rows?"
#And I click on "VT=Delete" button
#And I wait for 2 Seconds


@CalendarNewForm-MonthViewEvent
Scenario: Configuration of Caledar widget -Data Points New Form-Month View Event Verification
    
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//delete event
And I wait for 2 Seconds
And User clicks on Databases from side bar
And I wait for 1 Seconds
And I click on "VT=Dash_00022_Calender_Test-DB"
And I wait for 1 Seconds
When User click on edit icon
And I wait for 1 Seconds
And I click on "VT=Truncate"
And I wait for 1 Seconds
And I click on "VT=Delete All"
And I click on "VT=Submit"
And I click on "VT=OK"
And I wait for 1 Seconds
And I take Screenshot
And I refresh the page
And I wait for 1 Seconds
And I click on "DI=close"[1]
And I wait for 2 Seconds
And User click on Dashboard from side bar
And I wait for 2 Seconds

#//Creating new Dashboard
And I click on "DI=plus"[1] Button
And I wait for 2 Seconds
And User enters the "Calendar DataPointsNewForm" dashboard title
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
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on new caledar dashboard
#And I wait for "2000" milli seconds
#And I click on "VT=Calendar Old Form-DashBoard-8834"
#And I wait for "2000" milli seconds
#//Widget adding
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I wait for 2 Seconds
#And I click on "VT=CALENDAR Old Form" setting button
#And I wait for "2000" milli seconds
And I click on "VT=Add widget" button
And I wait for 2 Seconds
And User click on "VT=Calendar" widget
And I wait for 2 Seconds
And I enter "PH=Title" as "CALENDAR New Form"
And I2 enter "LABEL=Description" as "Calendar Configuration Data Points New Form"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
And I wait for 2 Seconds
#//Data Points Field Mapping
And I click on "VT=Data Points" from configuration
And I wait for 2 Seconds
And I click on "VT=New Form Framework"
And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I enter "LABEL1=Choose Form" as "Dash_00022_Calender_Test-DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Title"
And I click on "VT=Done"[2]
And I wait for 2 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I enter "LABEL1=Choose Form" as "Dash_00022_Calender_Test-DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Description"
And I click on "VT=Done"[2]
And I wait for 2 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I enter "LABEL1=Choose Form" as "Dash_00022_Calender_Test-DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Start Date"
And I click on "VT=Done"[2]
And I wait for 2 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I enter "LABEL1=Choose Form" as "Dash_00022_Calender_Test-DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "End Date"
And I click on "VT=Done"[2]
And I wait for 2 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I enter "LABEL1=Choose Form" as "Dash_00022_Calender_Test-DB"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Invitee"
And I click on "VT=Done"[2]
And I wait for 1 Seconds
And I click on "JS=Data Points"
And I wait for 1 Seconds
#// Calendar Config
And I click on "VT=Calendar Config" from configuration
And I wait for 1 Seconds
And I click on "LABEL1=Show Invitee Filter" 
And I wait for 1 Seconds
And I click on "VT=Configure"[2] button
And I wait for 1 Seconds
And User click on "LABEL=Select task title" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=Title" from dropdown
And I wait for 1 Seconds
And User click on "LABEL=Select task description" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Description" from dropdown
And I wait for 1 Seconds
And User click on "LABEL=Select start date" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Start Date" from dropdown
And I wait for 1 Seconds
And User click on "LABEL=Select end date" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=End Date" from dropdown
#And I wait for "2000" milli seconds
#And User click on "LABEL=Select task link" and "VT=Select data point"
#And I wait for "100" milli seconds
#And I click on "VT=Task Link" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select Invitee" and "VT=Select data point"
And I click on "VT=Invitee" from dropdown
And I wait for 1 Seconds
And I click on "VT=OK" button
And I wait for 1 Seconds
And User click on "LABEL=Select" and "VT=Select Form"
And I wait for 1 Seconds
And I click on "VT= Dash_00022_Calender_Test-DB"
And I wait for 1 Seconds
And I enter "PH=Enter button tittle" as "CREAT EVENT"
And I wait for 1 Seconds
And User click on "LABEL=Default view" and "VT=Select Default view"
And I wait for 1 Seconds
And I click on "VT=month" Dropdown
And I wait for 1 Seconds
And I click on "VT=Save" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
#//Crating event from creat event btn
And I click on "VT=CREAT EVENT" button
And I wait for 1 Seconds
And I enter "LABEL3=Title" as "AUTOMATION TESTER"
And I enter "LABEL3=Description" as "DIPAK"
And I click "LABEL1= Start Date "
And I click on "VT= Now"
And I wait for 1 Seconds
And I click "LABEL1= End Date "
And I click on "VT= Select time"
And I click on "VT=20" from dropdown
And I click on "VT= Ok " button
And I wait for 1 Seconds
#And I enter time "VT=Start Time" as "10:30 am"
#And I click on Body
#And I wait for 2 Seconds
#And I enter time "VT=End Time" as "12:30 pm"
#And I click on Body
#And I wait for 2 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=admin" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I see "VT=AUTOMATION TESTER" web element
#And I click on "VT=Edit" button
#And I wait for "2000" milli seconds
#And I click on "ICON=delete" delete of calendar
#And I wait for "2000" milli seconds
#And I click on "VT=Delete" button
#And I wait for "2000" milli seconds
#And I click on "VT=Done" button
#And I wait for "2000" milli seconds


@CalendarNewForm-DayViewEvent
Scenario: Configuration of Caledar widget -Data Points New Form- Day View Event Verification
    
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on new caledar dashboard
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "VTEQ=Day"
And I wait for 1 Seconds
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=AUTOMATION TESTER" WebElement
And I click on "VT=Cancel"
#Then I click on "VT=Event Testing"
And I take Screenshot

@CalnedarNewForm-TimeLineViewEvent
Scenario: Configuration of Caledar widget - New form Data Points- Timeline View Event Verification
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on new caledar dashboard
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
#Then I see "VT=Event Testing By Automation" web element
#Then I see "VT=http://dragon_1.zvolv.in/databases/7127" WebElement
And I wait for 1 Seconds
And I click on "VTEQ=Timeline Day"
And I wait for 1 Seconds
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_RIGHT" of keyboard 50 times to see the "VT=AUTOMATION TESTER" WebElement
And I take Screenshot
And I click on "VT=Cancel"

@CalnedarNewForm-WeekViewEvent
Scenario: Configuration of Caledar widget - New form Data Points- Week View Event Verification
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on new caledar dashboard
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "VTEQ=Week"
And I wait for 2 Seconds
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 30 times to see the "VT=AUTOMATION TESTER" WebElement
And I take Screenshot
And I click on "VT=Cancel"
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I refresh the page
And User clicks on Databases from side bar
And I wait for 2 Seconds
And I click on "VT=Dash_00022_Calender_Test-DB" 
And I wait for 2 Seconds
And I see "VT=AUTOMATION TESTER" web element
And I see "VT=DIPAK" web element
And I see todays date web element
And I see "VT=10:30 am" web element
And I see "VT=12:30 pm" web element


@CalendarNewForm-MonthSlotClick 
Scenario: Verification Event creation after click on Month Slot
And I click on "VTEQ=End to End"
And I wait for 1 Seconds
#And I click on "VT=calender"
And I click on new Created dashboard
And I wait for 2 Seconds
And I click on 1 slot of calendar
And I take Screenshot
And I enter "LABEL2=Title" as "Slot Event Month Test"
And I enter "LABEL2=Des" as "Slot date and time Verification"
And I wait for 1 Seconds
And I click on "LABEL22JS=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQJS=admin"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "VT=Submit" button
And I wait for 2 Seconds

@CalendarNewForm-DAYSlotClick 
Scenario: Verificatin of Day view slot click
Given I click on "VTEQ=End to End"
And I wait for 1 Seconds
#And I click on "VT=DashBoard-2606"
And I click on new Created dashboard
And I wait for 2 Seconds
And I click on "VTEQ=Day"
And I wait for 2 Seconds
And I click on 1 slot of Day view of calendar
And I take Screenshot
And I enter "LABEL2=Title" as "Slot Event DAY View Test"
And I enter "LABEL2=Des" as "Slot date and time Verification"
And I click on "LABEL22JS=Invitee"[2]
And I wait for 2 Seconds
And I click on "VTEQJS=admin"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "VT=Submit" button
And I wait for 2 Seconds


@CalendarNewForm-WeekSlotClick 
Scenario: Verificatin of Week view slot click
Given I click on "VTEQ=End to End"
And I wait for 1 Seconds
#And I click on "VT=DashBoard-2308"
And I click on new Created dashboard
And I wait for 2 Seconds
And I click on "VTEQ=Week"
And I wait for 2 Seconds
And I click on 1 slot of Week view of calendar
And I take Screenshot
And I enter "LABEL2=Title" as "Slot Event Week View Test"
And I enter "LABEL2=Des" as "Slot date and time Verification"
And I click on "LABEL22JS=Invitee"[2]
And I wait for 2 Seconds
And I click on "VTEQJS=admin"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "VT=Submit" button
And I wait for 2 Seconds

@CalendarNewForm-TimeLineSlotClick
Scenario: Verificatin of Week view slot click
Given I click on "VTEQ=End to End"
And I wait for 1 Seconds
#And I click on "VT=DashBoard-5553"
And I click on new Created dashboard
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "VTEQ=Timeline Day"
And I wait for 1 Seconds
And I click on 1 slot of Timeline view of calendar
And I take Screenshot
And I enter "LABEL2=Title" as "Slot Event TimeLine View Test"
And I enter "LABEL2=Des" as "Slot date and time Verification"
And I click on "LABEL22JS=Invitee"[2]
And I wait for 2 Seconds
And I click on "VTEQJS=admin"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "VT=Submit" button
And I wait for 2 Seconds


@CalendarNewForm-MonthSlotClickNewUI 
Scenario: Verification Event creation after click on Month Slot old UI
And I click on "VTEQ=End to End"
And I wait for 1 Seconds
#And I click on "VT=calender"
And I click on new Created dashboard
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "VT=User" button
And I wait for 1 Seconds
And I click on "VT=Try new UI (beta)" button
And I wait for 2 Seconds
And I switched to new browser tab
And I wait for 1 Seconds
And I click on 1 slot of calendar
And I take Screenshot
And I enter "LABEL2=Title" as "Slot Event Month Test"
And I enter "LABEL2=Des" as "Slot date and time Verification"
And I click on "LABEL22JS=Invitee"[3]
And I wait for 1 Seconds
And I click on "VTEQJS=admin"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "VT=Submit" button
And I wait for 1 Seconds

@CalendarNewForm-DAYSlotClickNewUI 
Scenario: Verificatin of Day view slot click old UI
Given I click on "VTEQ=End to End"
And I wait for 1 Seconds
#And I click on "VT=calender"
And I click on new Created dashboard
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "VT=User" button
And I wait for 1 Seconds
And I click on "VT=Try new UI (beta)" button
And I wait for 2 Seconds
And I switched to new browser tab
And I wait for 2 Seconds
And I click on "VTEQ=Day"
And I wait for 1 Seconds
And I click on 1 slot of Day view of calendar
And I enter "LABEL2=Title" as "Slot Event DAY View Test"
And I enter "LABEL2=Des" as "Slot date and time Verification"
And I click on "LABEL22=Invitee"[3]
And I wait for 1 Seconds
And I click on "VTEQJS=admin"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "VT=Submit" button
And I wait for 1 Seconds

@CalendarNewForm-WeekSlotClickNewUI 
Scenario: Verificatin of Week view slot click Old UI
Given I click on "VTEQ=End to End"
And I wait for 1 Seconds
#And I click on "VT=DashBoard-5553"
And I click on new Created dashboard
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "VT=User" button
And I wait for 1 Seconds
And I click on "VT=Try new UI (beta)" button
And I switched to new browser tab
And I wait for 1 Seconds
And I click on "VTEQ=Week"
And I wait for 1 Seconds
And I click on 1 slot of Week view of calendar
And I enter "LABEL2=Title" as "Slot Event Week View Test"
And I enter "LABEL2=Des" as "Slot date and time Verification"
And I wait for 2 Seconds
And I click on "LABEL22=Invitee"[3]
And I wait for 2 Seconds
And I click on "VTEQJS=admin"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "VT=Submit" button
And I wait for 2 Seconds
 
@CalendarNewForm-TimeLineSlotClickNewUI 
Scenario: Verificatin of Week view slot click old UI
Given I click on "VTEQ=End to End"
And I wait for 1 Seconds
And I refresh the page
And I wait for 2 Seconds
#And I click on "VT=calender"
And I click on new Created dashboard
And I wait for 2 Seconds
And I click on "VT=User" button
And I wait for 1 Seconds
And I click on "VT=Try new UI (beta)" button
And I wait for 2 Seconds
And I switched to new browser tab
And I wait for 1 Seconds
And I click on "VTEQ=Timeline Day"
And I wait for 1 Seconds
And I click on 1 slot of Timeline view of calendar
And I enter "LABEL2=Title" as "Slot Event TimeLine View Test"
And I enter "LABEL2=Des" as "Slot date and time Verification"
And I click on "LABEL22=Invitee"[3]
And I wait for 1 Seconds
And I click on "VTEQJS=admin"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "VT=Submit" button
And I wait for 2 Seconds


@CalnedarNewForm-UserInFilterAdmin
Scenario: New Form -Calendar Configuration for Invitee and User In Filter- Admin Login
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 1 Seconds
#//delete event
And I wait for 2 Seconds
And User clicks on Databases from side bar
And I wait for 1 Seconds
And I click on "VT=CALENDAR NEW FORM"
And I wait for 1 Seconds
When User click on edit icon
And I wait for 1 Seconds
And I click on "VT=Truncate"
And I wait for 1 Seconds
And I click on "VT=Delete All"
And I click on "VT=Submit"
And I click on "VT=OK"
And I wait for 1 Seconds
And I take Screenshot
And I refresh the page
And I wait for 1 Seconds
And I click on "DI=close"[1]
And I wait for 2 Seconds
And User click on Dashboard from side bar
And I wait for 2 Seconds
#//Creating new Dashboard
And I click on "DI=plus"[1] Button
And I wait for 2 Seconds
And User enters the "Calendar New Form User In Filter" dashboard title
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
And I wait for 1 Seconds
And I click on new caledar dashboard
And I wait for 1 Seconds
#And I click on "VT=Calendar Old Form-DashBoard-8834"
#And I wait for "2000" milli seconds
#//Widget adding
And I click on "VT=Edit" button
And I wait for 2 Seconds
#And I click on "VT=CALENDAR Old Form" setting button
#And I wait for "2000" milli seconds
And I click on "VT=Add widget" button
And I wait for 2 Seconds
And User click on "VT=Calendar" widget
And I wait for 2 Seconds
And I enter "PH=Title" as "CALENDAR New Form"
And I2 enter "LABEL=Description" as "Calendar User In Filter New Form"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
#//Data Points Field Mapping 
And I wait for 1 Seconds
And I click on "VT=Data Points" from configuration
And I wait for 2 Seconds
And I click on "VT=New Form Framework"
And I wait for 2 Seconds
And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "CALENDAR NEW FORM"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Task Title"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "CALENDAR NEW FORM"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Description"
And I wait for 1 Seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "CALENDAR NEW FORM"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Start Date"
And I wait for 1 Seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "CALENDAR NEW FORM"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "End Date"
And I wait for 1 Seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "CALENDAR NEW FORM"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Task Link"
And I wait for 1 Seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds

And I click on "VT=Add"[3] button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "CALENDAR NEW FORM"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 1 Seconds
And I enter "LABEL1=Choose field" as "Invitee"
And I wait for 1 Seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds
And I click on "VT=Data Points"
And I wait for 1 Seconds
#// Calendar Config
And I click on "VT=Calendar Config" from configuration
And I wait for 1 Seconds
And I click on "VT=Configure"[2] button
And I wait for 1 Seconds
And User click on "LABEL=Select task title" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Task Title" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select task description" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Description" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select start date" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Start Date" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select end date" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=End Date" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select task link" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Task Link" from dropdown
And I wait for 2 Seconds
And User click on "LABEL=Select Invitee" and "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Invitee" from dropdown
And I wait for 1 Seconds
And I click on "VT=OK" button
And I wait for 2 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//User in Event creation
And User clicks on Databases from side bar
And I wait for 1 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "VT=CALENDAR NEW FORM"
And I wait for 1 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Event Testing" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT= Select time"
And I click on "VT=20" from dropdown
And I click on "VT= Ok " button
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=admin" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 2 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-1" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-1 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT= Select time"
And I click on "VT=22" from dropdown
And I click on "VT= Ok " button
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=sai" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 2 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-2" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-2 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT= Select time"
And I click on "VT=19" from dropdown
And I click on "VT= Ok " button
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=sai" from dropdown
And I click on Body[1]
And I wait for 1 Seconds
And I click on "VT=Submit" button
And I wait for 1 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-3" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-3 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT= Select time"
And I click on "VT=05" from dropdown
And I click on "VT= Ok " button
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=Dipak kalel" from dropdown
And I wait for "1000" milli seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 2 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-4" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-4 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT= Select time"
And I click on "VT=06" from dropdown
And I click on "VT= Ok " button
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=Dipak kalel" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 2 Seconds

And I click on "VT=Add" button
And I wait for 2 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-5" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-5 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT= Select time"
And I click on "VT=21" from dropdown
And I click on "VT= Ok " button
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=rohit" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 1 Seconds

And I click on "VT=Add" button
And I wait for 1 Seconds
And I enter "LABEL2=Task Title"[2] as "Task-6" calendar old form
And I wait for 1 Seconds
And I enter "LABEL2=Description"[2] as "Task-6 UserIn Filter Testing By Automation" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Start Date"[2]
And I wait for 1 Seconds
And I click on "VT=Now"
And I click on "LABEL2=End Date"[2]
And I wait for 1 Seconds
And I click on "VT= Select time"
And I click on "VT=22" from dropdown
And I click on "VT= Ok " button
And I wait for 1 Seconds
And I enter "LABEL2=Task Link"[2] as "http://dragon_1.zvolv.in/databases/7127" calendar old form
And I wait for 1 Seconds
And I click on "LABEL2=Invitee"[2]
And I wait for 1 Seconds
And I click on "VTEQ=rohit" from dropdown
And I wait for 1 Seconds
And I click on Body[1]
And I click on "VT=Submit" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "DI=close"[1]
And I wait for 2 Seconds
And User click on Dashboard from side bar
And I wait for 1 Seconds
And I click on new Created dashboard
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds

#//Filter Userin data points
And I click on "VT=Edit" button
And I click on "VT=CALENDAR New Form" setting button
And I wait for 1 Seconds
And I click on "VT=Data Points"
And I wait for 1 Seconds
And I click on "VT=Invitee"
And I wait for 1 Seconds
And I click on "VT=Filter" from tablist of data point
And I wait for 1 Seconds
And I click on "VT=Add filter"
And I wait for 1 Seconds
And I click on "VT=Choose condition" Button
And I wait for 1 Seconds
And I click on "VT=User in"
And I wait for 1 Seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds
And I click on "VT=Save" button
And I wait for 1 Seconds
And I click on "VT=Done" button
And I refresh the page
And I wait for 2 Seconds
And I click on "VTEQ=Day"
And I wait for 1 Seconds
#//UI verification
Then I see "VTEQ=admin" web element
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=Event Testing" WebElement
And I take Screenshot
And I click on "VT=Cancel"

@CalnedarNewForm-UserInFilterEndUser-1
Scenario: New Form -Calendar Configuration for Invitee and User In Filter- End user-1
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//log in with diifernt user log in 
And I click on "VT=User" button
And I click on "VT=Logout" button
And I wait for 2 Seconds
And I login with Users credentials
|  manager@zvolv.com   |Saik@123|
And I wait for 1 Seconds
Given I click on "VT=End to End"
And I wait for 1 Seconds
And I click on new caledar dashboard
And I wait for 2 Seconds
And I click on "VTEQ=Day"
And I wait for "1000" milli seconds
#//User UI verification Sai
Then I see "VTEQ=sai" web element
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=Task-1" WebElement
And I take Screenshot
And I click on "VT=Cancel"

@CalnedarNewForm-UserInFilterEndUser-2
Scenario: New Form -Calendar Configuration for Invitee and User In Filter- End user-2
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//log in with diifernt user log in 
And I wait for 2 Seconds
And I click on "VT=User" button
And I click on "VT=Logout" button
And I wait for 2 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
And I wait for 1 Seconds
Given I click on "VT=End to End"
And I wait for 1 Seconds
And I click on new caledar dashboard
And I wait for 2 Seconds
And I click on "VTEQ=Day"
And I wait for 1 Seconds
#//User UI verification Sai
Then I see "VTEQ=Dipak kalel" web element
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=Task-3" WebElement
And I take Screenshot
And I click on "VT=Cancel"


@CalnedarNewForm-UserInFilterEndUser-3
Scenario: New Form -Calendar Configuration for Invitee and User In Filter- End user-3
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//log in with diifernt user log in 
And I wait for 2 Seconds
And I click on "VT=User" button
And I click on "VT=Logout" button
And I wait for 1 Seconds
And I login with Users credentials
|rohit@zvolv.com|Rohit@123|
And I wait for 1 Seconds
Given I click on "VT=End to End"
And I wait for 1 Seconds
And I click on new caledar dashboard
And I wait for 2 Seconds
And I click on "VTEQ=Day"
And I wait for 1 Seconds
#//User UI verification Sai
Then I see "VTEQ=rohit" web element
Then User clicks on "TAB" button on Keyboard
Then I press the "ARROW_DOWN" of keyboard 50 times to see the "VT=Task-5" WebElement
And I take Screenshot
And I click on "VT=Cancel"
#//delete event
#And I wait for 2 Seconds
#And User clicks on Databases from side bar
#And I wait for 1 Seconds
#And I click on "VT=CALENDAR NEW FORM"
#And I wait for 1 Seconds
#And I click on all select checkbox
#And I wait for 2 Seconds
#And I click on "DI=delete" Button
#And I wait for 2 Seconds
#And I click on "VT=Delete" button from "VT2=Are you sure you want to delete selected rows?"
#And I click on "VT=Delete" button
#And I wait for 2 Seconds



