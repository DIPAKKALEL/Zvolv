@ZvolvDashboards
Feature: KPI Widget
	Dashboard Widget KPI Testing
  Background: 
    Given I navigate to web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When login into the zvolv application with below credentials
      |dragon_1|saikumaroffice786@gmail.com|Saik@123|
   # And I click on "VT=Login"
    Then I see "VT=Zapps" and "VT=Create zapp" web element

@KPI 
Scenario: Configuration and Verification of KPI widget

Given I click on "VT=End to End"
And I wait for "2000" milli seconds
And I refresh the page
#//new dashboard
And I wait for "2000" milli seconds
And I click on "DI=plus"[1] Button
And I wait for "2000" milli seconds
And User enters the "KPI" dashboard title
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
And I wait for "1000" milli seconds
And I click on new Created dashboard
And I wait for 2 Seconds

#And I click on "VT=KPI-DashBoard-9687"
And I wait for "1000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for "1000" milli seconds
And User click on "VT=KPI" widget
And I enter "PH=Title" as "KPI"
And I2 enter "LABEL=Description" as "KPI Widget Testing"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
And I click on "VT=Data Points"
And I wait for "1000" milli seconds
And I click on "VT=New Form Framework"
And User click on "VT=Add" Button
And I wait for "1000" milli seconds
And I click on "VT=Choose form" button
And I wait for "2000" milli seconds
And I enter "LABEL1=Choose Form" as "Pie Chart New Master"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "TaxiType"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
#//Pivot configuration
And I wait for "2000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "100" milli seconds
And I click on "VT=Configure" button
And I wait for "100" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
And I wait for "1000" milli seconds
And I click on "VT=TaxiType" mouse hover text
And I wait for "1000" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
And I wait for "1000" milli seconds
And I click on "VT=TaxiType" mouse hover text
And User double clicks on "VT=Summarize by" field "VT=TaxiType" in Pivot
And User changed the "VT=TaxiType" to "VT=TaxiTypeCount" in "VT=Summarize by"[1] pivot
And I click on "VT=SUM" Button
And I wait for "1000" milli seconds
And I click on "VT=COUNT"[1]
And I wait for "1000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "100" milli seconds
And I click on "VT=Add"[4] button
And I wait for "1000" milli seconds
And I enter "LABEL1=Series name" as "TaxiType"
And I wait for "1000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=TaxiType" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "1000" milli seconds
And I click on "VT=TaxiTypeCount" from dropdown
And I wait for "1000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on "VT=Done" button
Then I refresh the page
And I wait for "1000" milli seconds
#//UI verification
And I take Screenshot
Then I see the KPI "VT=COOL Cab" amd Count is "VT=3"
Then I see the KPI "VT=TAXI" amd Count is "VT=1"
Then I see the KPI "VT=WOMEN Driver" amd Count is "VT=2"
#//Adding two name into form
And User clicks on Databases from side bar
And I wait for "1000" milli seconds
And I click on "VT=Pie Chart New Master"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I wait for "1000" milli seconds
And I click on "LABEL2=TaxiType"[2]
And I wait for "1000" milli seconds
And I click on "VT=WOMEN Driver" from dropdown
And I click on "VT=Submit" button
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I wait for "1000" milli seconds
And I click on "LABEL2=TaxiType"[2]
And I wait for "1000" milli seconds
And I click on "VT=WOMEN Driver" from dropdown
And I click on "VT=Submit" button
And I click on "DI=close"
#//verification of UI newly added data
And User click on Dashboard from side bar
And I wait for "1000" milli seconds
And I click on new Created dashboard
And I wait for "1000" milli seconds
And I take Screenshot
Then I see the KPI "VT=COOL Cab" amd Count is "VT=3"
Then I see the KPI "VT=TAXI" amd Count is "VT=1"
Then I see the KPI "VT=WOMEN Driver" amd Count is "VT=4"
#//Removing newly added names
And User clicks on Databases from side bar
And I wait for "1000" milli seconds
And I click on "VT=Pie Chart New Master"
And I wait for 1 Seconds
And I remove new 2 name from the form
And I wait for 1 Seconds
And I click on "DI=close"
#//UI Verification
And User click on Dashboard from side bar
And I wait for "1000" milli seconds
And I click on new Created dashboard
And I wait for "1000" milli seconds
And I take Screenshot
And I refresh the page
Then I see the KPI "VT=WOMEN Driver" amd Count is "VT=2"
#@doughtChartSecond
#Scenario: Adding second PieChart chart 
#Given I click on "VT=End to End"
#And I wait for "2000" milli seconds
#And I click on "VT=Doughnut-DashBoard-3786"
And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=KPI" setting button
And I wait for "1000" milli seconds
And I click on "VT=Data Points"
And I wait for "1000" milli seconds
And User click on "VT=Add" Button
And I wait for "1000" milli seconds
And I click on "VT=Choose form" button
And I wait for "1000" milli seconds
#And I click on "LABEL1=Choose Form"
#And I wait for 1 Seconds
#And I click on "VT=Pie Chart New Master"
And I enter "LABEL1=Choose Form" as "Pie Chart New Master"
And I wait for "2000" milli seconds
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "PaymentType"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
#//Second Pivot configuration
And I wait for "1000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "100" milli seconds
And I click on "VT=Configure" button
And I wait for "100" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
And I wait for "1000" milli seconds
And I click on "VT=PaymentType" mouse hover text
And I wait for "1000" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
And I wait for "1000" milli seconds
And I click on "VT=PaymentType" mouse hover text
And I wait for "1000" milli seconds
And User double clicks on "VT=Summarize by" field "VT=PaymentType" in Pivot
And I wait for "100" milli seconds
And User changed the "VT=PaymentType" to "VT=PaymentTypeCount" in "VT=Summarize by"[2] pivot
And I wait for "100" milli seconds
And I click on "VT=SUM" Button
And I wait for "1000" milli seconds
And I click on "VT=COUNT"[2]
And I wait for "1000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "100" milli seconds
And I click on "VT=Add"[4] button
And I wait for "1000" milli seconds
And I enter "LABEL1=Series name" as "PaymentType"
And I wait for "1000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=PaymentType" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "1000" milli seconds
And I click on "VT=PaymentTypeCount" from dropdown
And I wait for "1000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
Then I refresh the page
And I wait for "1000" milli seconds
#//UI verification
And I take Screenshot
Then I see the KPI "VT=COOL Cab" amd Count is "VT=3"
Then I see the KPI "VT=UPI" amd Count is "VT=3"
Then I see the KPI "VT=TAXI" amd Count is "VT=1"
Then I see the KPI "VT=CASH" amd Count is "VT=1"
Then I see the KPI "VT=WOMEN Driver" amd Count is "VT=2"
Then I see the KPI "VT=CARD" amd Count is "VT=2"

#@AdvanceSetting
#Scenario: Adding and verification of Data Manupulation of PieChart Chart
#
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I click on "VT= PieChart-DashBoard-9978"
And I wait for "1000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=KPI" setting button
And I wait for "1000" milli seconds
And I click on "VT=Advanced Settings"
And I wait for "2000" milli seconds
And I click on "NZPH=Select roles" dropdown
And User selects "System Admin" value
And User enters "Sharath" in Select roles dropdown in View Permissions
And User selects "Sharath" value in View Permission dropdown
Then User clicks on "ESCAPE" button on Keyboard
Then User enters "1" in "Sequence number" number box in accordion
Then User clicks on "Hide widget from Android/iOS app" checkbox
Then User scrolls to bottom of page
And I wait for "2000" milli seconds 
And I click on "VT=Refresh Dashboard"
And I click on "VT=Disable data export"
Then User clicks on dropdown with "Select Zapp" placeholder
And User selects "End to End" value
And I wait for "1000" milli seconds
And I click on "VT=Save" button
And I wait for "1000" milli seconds
And I click on "VT=Done" button
Then User refreshes the page
And I wait for 2 Seconds

#@MakeACopy
#Scenario: Make a copy of PieChart Chart
#
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= PieChart-DashBoard-9978"
And I wait for "1000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=KPI" setting button
And I wait for "1000" milli seconds
And I click on "VT=Make a copy" button
And I wait for "1000" milli seconds
And I click on "VT=OK" button
And I wait for "1000" milli seconds
And I click on "VT=Save" button
And I wait for "1000" milli seconds
And I click on "VT=Done" button
And I refresh the page
And I wait for "3000" milli seconds
Then I see "VT=KPI Copy" web element
And I take Screenshot


#@DataManipulationOFDoughnut
#Scenario: Adding and verification of Data Manupulation of PieChart Chart
#
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= PieChart-DashBoard-3558"
#And I wait for "1000" milli seconds
#And I click on "VT=Edit" button
#And I click on "VT=Doughnut Chart NAME" setting button
#And I wait for "1000" milli seconds
#And I click on "VT=Data Manipulation"
#And I wait for "100" milli seconds
#And I click on "VT=Add"[3] button
#And I wait for "100" milli seconds
#And I click on "VT=Add" button
#And User click on "LABEL=Data point" and "VT=Select data point"
#And I wait for "100" milli seconds
#And I click on "VT=Salary"[2]
#And User click on "LABEL=Cumulative operation" and "VT=Select operation"
#And I wait for "100" milli seconds
#And I click on "VT=Sum" button
#And I click on "VT=OK" button
