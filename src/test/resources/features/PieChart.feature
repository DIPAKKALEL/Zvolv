@ZvolvDashboards 
Feature: Pie chart
	Dashboard Widget Pie chart Testing
  Background: 
Given I navigate to web application
Then I should see page title as "Zvolv"
And I see "VT=Login" web element
When login into the zvolv application with below credentials
|dragon_1|saikumaroffice786@gmail.com|Saik@123|
#And I click on "VT=Login"
Then I see "VT=Zapps" and "VT=Create zapp" web element

@PieChart
Scenario: Configuration and Verification of Pie chart
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
#//new dashboard
And I wait for 2 Seconds
And I click on "DI=plus"[1] Button
And User enters the "PieChart" dashboard title
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
And I wait for 1 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on new Created dashboard
And I wait for 2 Seconds
#And I click on "VT=PieChart"
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for 2 Seconds
And User click on "VT=Pie Chart" widget
And I enter "PH=Title" as "Pie Chart"
And I2 enter "LABEL=Description" as "Pie Chart Testing"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
#//adding data points
And I click on "VT=Data Points"
And I wait for 2 Seconds
And I click on "VT=New Form Framework"
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "VT=Choose form" button
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "Pie Chart New Master"
And I wait for 2 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose field" as "TaxiType"
And I wait for 2 Seconds
And I click on "VT=Done"[2]

And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "VT=Choose form" button
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "Pie Chart New Master"
And I wait for 2 Seconds
And I click on "LABEL=Choose field" dropdown
And I wait for 2 Seconds
And I enter "LABEL1=Choose field" as "TotalFair"
And I wait for 2 Seconds
And I click on "VT=Done"[2]



#And I wait for "2000" milli seconds
#And User click on "VT=Add" Button
#And I wait for "2000" milli seconds
#And I click on "VT=Choose form" button
#And I wait for "2000" milli seconds
#And I click on "LABEL1=Choose form"
#And I wait for "1000" milli seconds
#And I enter "LABEL1=Choose Form" as "Pie Chart New Master"
#And I wait for "1000" milli seconds
#And I click on "VT=Pie Chart New Master" dropdown of Choose form
#And I wait for 1 Seconds
#And I click on "LABEL=Choose field" dropdown
#And I enter "LABEL1=Choose field" as "PaymentType"
#And I wait for "2000" milli seconds
#And I click on "VT=Done"[2]

#//Pivot configuration
And I wait for 2 Seconds
And I click on "VT=Pivot" from configuration
And I wait for 2 Seconds
And I click on "VT=Configure" button
And I wait for 2 Seconds
And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
And I wait for 2 Seconds
And I click on "VT=TaxiType" mouse hover text
And I wait for 2 Seconds
And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
And I wait for 2 Seconds
And I click on "VT=TaxiType" mouse hover text
And User double clicks on "VT=Summarize by" field "VT=TaxiType" in Pivot
And User changed the "VT=TaxiType" to "VT=TaxiTypeCount" in "VT=Summarize by"[1] pivot
And I click on "VT=SUM" Button
And I wait for 2 Seconds
And I click on "VT=COUNT"[1]
And I wait for 2 Seconds

And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
And I wait for 2 Seconds
And I click on "VT=TotalFair" mouse hover text
And User double clicks on "VT=Summarize by" field "VT=TotalFair" in Pivot
And User changed the "VT=TotalFair" to "VT=TotalFairSum" in "VT=Summarize by"[2] pivot
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for 2 Seconds
And I click on "VT=Add"[6] button
And I wait for 2 Seconds
And I enter "LABEL1=Series name" as "TaxiType"
And I wait for 2 Seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for 2 Seconds
And I click on "VT=TaxiType" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for 2 Seconds
And I click on "VT=TaxiTypeCount" from dropdown
And I wait for 2 Seconds
And I click on "VT=OK" button
And I wait for 2 Seconds

And I click on "VT=Add"[6] button
And I wait for 2 Seconds
And I enter "LABEL1=Series name" as "TaxiFair"
And I wait for 2 Seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for 2 Seconds
And I click on "VT=TaxiType" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for 2 Seconds
And I click on "VT=TotalFairSum" from dropdown
And I wait for 2 Seconds
And I click on "VT=OK" button
And I wait for 2 Seconds

And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//UI verification
Then User see the PieChart chart division are 6
Then User see the Name Label with count are "COOL Cab-3", "TAXI-1" and "WOMEN Driver-2"
#//Adding two new entry into form
And User clicks on Databases from side bar
And I wait for 2 Seconds
And I click on "VT=Pie Chart New Master"
And I wait for 2 Seconds
And I click on "VT=Add" button
And I wait for 2 Seconds
And I click on "LABEL2=TaxiType"[2]
And I wait for 2 Seconds
And I click on "VT=WOMEN Driver" from dropdown
And I click on "VT=Submit" button
And I wait for 2 Seconds
And I click on "VT=Add" button
And I wait for 2 Seconds
And I click on "LABEL2=TaxiType"[2]
And I wait for 2 Seconds
And I click on "VT=WOMEN Driver" from dropdown
And I click on "VT=Submit" button
And I click on "DI=close"
#//verification of UI newly added data
And User click on Dashboard from side bar
And I wait for 2 Seconds
And I click on new Created dashboard
And I wait for 2 Seconds
Then User see the PieChart chart division are 6
Then User see the Name Label with count are "COOL Cab-3", "TAXI-1" and "WOMEN Driver-4"
#//Removing newly added names
And User clicks on Databases from side bar
And I wait for 2 Seconds
And I click on "VT=Pie Chart New Master"
And I wait for 2 Seconds
And I remove new 2 name from the form
And I click on "DI=close"
#//UI Verification
And User click on Dashboard from side bar
And I wait for 2 Seconds
And I click on new Created dashboard
And I wait for 2 Seconds
Then User see the Name Label with count are "COOL Cab-3", "TAXI-1" and "WOMEN Driver-2"
And I take Screenshot

#@PieChartSecond
#Scenario: Adding second PieChart chart 
#Given I click on "VT=End to End"
#And I wait for "2000" milli seconds
#And I click on "VT=Doughnut-DashBoard-3786"
And I wait for 1 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I click on "VT=Pie Chart" setting button
And I wait for 2 Seconds
And I click on "VT=Data Points"
And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "VT=Choose form" button
And I wait for 2 Seconds
And I click on "LABEL1=Choose form"
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "Pie Chart New Master"
And I wait for 1 Seconds
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "PaymentType"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
#//Second Pivot configuration
And I wait for 2 Seconds
And I click on "VT=Pivot" from configuration
And I wait for 2 Seconds
And I click on "VT=Configure" button
And I wait for 2 Seconds
And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
And I wait for 2 Seconds
And I click on "VT=PaymentType" mouse hover text
And I wait for 2 Seconds
And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
And I wait for 2 Seconds
And I click on "VT=PaymentType" mouse hover text
And I wait for 2 Seconds
And User double clicks on "VT=Summarize by" field "VT=PaymentType" in Pivot
And I wait for 2 Seconds
And User changed the "VT=PaymentType" to "VT=PaymentTypeCount" in "VT=Summarize by"[3] pivot
And I wait for 2 Seconds
And I click on "VT=SUM"[2] Button
And I wait for 2 Seconds
And I click on "VT=COUNT"[2]
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for 2 Seconds
And I click on "VT=Add"[6] button
And I wait for 2 Seconds
And I enter "LABEL1=Series name" as "PaymentType"
And I wait for 2 Seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for 2 Seconds
And I click on "VT=PaymentType" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for 2 Seconds
And I click on "VT=PaymentTypeCount" from dropdown
And I wait for 2 Seconds
And I click on "VT=OK" button
And I wait for 2 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//UI verification
Then User see the PieChart chart division are 9
Then User see the Name Label with count are "COOL Cab-3","TAXI-1","WOMEN Driver-2","UPI-3","CASH-1" and "CARD-2"




@FilterConfigOfPie
Scenario: Filter Congfiguration of Pie chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= PieChart-DashBoard-9978"
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on new Created dashboard
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Pie Chart" setting button
And I wait for 2 Seconds
And I click on "VT=Filters" from configuration
And I wait for 2 Seconds
And I click on "VT=Add"[5] button
And I wait for 2 Seconds
And User click on "LABEL=Choose Form" and "VT=Choose form" button
And I wait for 2 Seconds
And User click on "Pie Chart New Master"
And User click on "LABEL=Choose Field" and "VT=Choose field" button
And I wait for 2 Seconds
And I click on "VT=TaxiType" of filter configuration choose field
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And I click on "VT=Save" button
And I click on "VT=Done" button
And I click on "VT=Filters" comman for widget
And I click on "VT=TaxiType" of quick filters
And I wait for 2 Seconds
And User click on "VT=COOL Cab" dropdown option
And I wait for 2 Seconds
And I click on "DI3=down"[2]
And I click on Body_1
#//UI Verification
Then User see the PieChart chart division are 3
Then User see the Name Label with count are "COOL Cab-3" and "UPI-3"
And I click on "VT=Filters" comman for widget
And I wait for 2 Seconds
And I click on "VTJS=Clear all" button
And I wait for 2 Seconds
And I click on BodyJS
Then User see the Name Label with count are "COOL Cab-3","TAXI-1","WOMEN Driver-2","UPI-3","CASH-1" and "CARD-2"
#@DrillDownConfiguration
#Scenario: Adding and verification of Drill Down of PieChart Chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= PieChart-DashBoard-9978"
#And I wait for "2000" milli seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "VT=Edit" button
And I click on "VT=Pie Chart" setting button
And I wait for 2 Seconds
And I click on "VT=Drill Down"
And I wait for 2 Seconds
And I mouse Hover on "DI=question-circle" of "LABEL=Select dashboard"
Then I see "VT=On data point/row click, user will navigate to selected dashboard" web element
And I click on "NZPH=select dashboard" dropdown
And I wait for 2 Seconds
Then User clicks on "PieChart" value in dropdown in Drill down accordion
And I mouse Hover on "DI=question-circle" of "LABEL=Select filter"
Then I see "VT=User will navigate to above selected dashboard with below filter applied" web element
And User clicks on "Select filter" dropdown in Drill Down accordion
And I wait for 2 Seconds
Then User clicks on "TaxiType" value in dropdown in Drill down accordion
And I click on "VT=Drill Down"
And I wait for 2 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
#//UI verification
Then I click on "#97c95c" PieChart chart segment and "VT=Drill Down Functionality Verification" web element
And I wait for "2000" milli seconds
Then I click on "#f5564a" PieChart chart segment and "VT=Drill Down Functionality Verification" web element
#//Removing drill down functionality
And I click on "VT=Edit" button
And I click on "VT=Pie Chart" setting button
And I wait for 2 Seconds
And I click on "VT=Drill Down"
And I wait for 2 Seconds
And I click on "VT=Delete" button
And I click on "VT=Delete"[2] button
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
Then User verifies after clicking on "#97c95c" PieChart chart segment does not navigates to dashboard
#//same dashboard UI
Then User see the PieChart chart division are 9
Then User see the Name Label with count are "COOL Cab-3","TAXI-1","WOMEN Driver-2","UPI-3","CASH-1" and "CARD-2"
#@Legends
#Scenario: Adding and verification of Legends of PieChart Chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= PieChart-DashBoard-9978"
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I click on "VT=Pie Chart" setting button
And I wait for 2 Seconds
And I click on "VT=Legends"
And I wait for 2 Seconds
Then User clicks on "Show labels" checkbox
Then User clicks on "Show legends" checkbox
#//Alignment Verification
Then User clicks on "Horizontal alignment" dropdown in Legends
And User selects "Center" value
And I wait for 2 Seconds
And I click on "VT=Center"
And I wait for 2 Seconds
And User selects "Right" value
And I wait for 2 Seconds
And I click on "VT=Right"
And I wait for 2 Seconds
And User selects "Left" value
And I wait for 2 Seconds
Then User clicks on "Vertical alignment" dropdown in Legends
And User selects "Top" value
And I click on "VT=Top"
And User selects "Bottom" value
And I click on "VT=Legends"
And I wait for 2 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//UI verification
Then User see "1 2000 1" pie chart label for "#f5564a" color 3 in number
Then User see "2 2200 2" pie chart label for "#97c95c" color 3 in number
Then User see "3 127656 3" pie chart label for "#1db2f5" color 3 in number
#@ToolTipConfigOfDoughnut
#Scenario: Adding and verification of ToolTip of PieChart Chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= PieChart-DashBoard-3558"
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I click on "VT=Pie Chart" setting button
And I wait for 2 Seconds
And I click on "VT=Tooltip Config"
And I wait for 2 Seconds
And I click on "VT=Add"[4] button
And I wait for 2 Seconds
And I2 enter "LABEL=Label" as "TaxiType"
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for 2 Seconds
And User click on "VT=TaxiType" dropdown option
And User click on "LABEL=Select value format" and "VT=Select Value Format"
And I wait for 2 Seconds
And User click on "VT=String" dropdown option
And I click on "VT=OK" button
And I wait for 2 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//UI verification
Then User mouse hover on doughnut chart and see "COOL Cab" tooltip text
#@AdvanceSetting
#Scenario: Adding and verification of Data Manupulation of PieChart Chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I click on "VT= PieChart-DashBoard-9978"
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I click on "VT=Pie Chart" setting button
And I wait for 2 Seconds
And I click on "VT=Advanced Settings"
And I wait for 2 Seconds
And I click on "NZPH=Select roles" dropdown
And User selects "System Admin" value
And User enters "Sharath" in Select roles dropdown in View Permissions
And User selects "Sharath" value in View Permission dropdown
Then User clicks on "ESCAPE" button on Keyboard
Then User enters "1" in "Sequence number" number box in accordion
Then User clicks on "Hide widget from Android/iOS app" checkbox
Then User scrolls to bottom of page
And I wait for 2 Seconds
And I click on "VT=Refresh Dashboard"
And I click on "VT=Disable data export"
Then User clicks on dropdown with "Select Zapp" placeholder
And User selects "End to End" value
And I wait for 2 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds

#@PivotAllCOnfigurationofSummerizeByDropdown
#Scenario Outline: Verification of all pivot dropdown options
#Given I click on "VT=End to End"
#And I wait for 2 Seconds
#And I refresh the page
#And I wait for 2 Seconds
#And I click on "DI=plus"[1] Button
#And User enters the "PieChartPvotDropdownOption" dashboard title
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
#And I wait for 2 Seconds
#And I click on "VT=Save" button
#And I wait for 2 Seconds
#And I click on new Created dashboard
#And I wait for 2 Seconds
#And I click on "VT=PieChart"
#And I wait for 2 Seconds
#And I click on "VT=Edit" button
#And I click on "VT=Add widget" button
#And I wait for 2 Seconds
#And User click on "VT=Pie Chart" widget
#Then User see the labels "Details", "Title", "Description", "Pivot", "Serieses" and "Data Points"
#And I enter "PH=Title" as "Pie Chart"
#And I2 enter "LABEL=Description" as "Pivot All Dropdown option testing"
#Then User clicks on "Highlight color" color picker 
#And User selects "#FF6900" color 
#Then User clicks on "Border color" color picker 
#And User selects "#FCB900" color 
#Then User clicks on "Background color" color picker 
#And User selects "#7BDCB5" color
#And I click on "VT=Details"
#//adding data points
#And I click on "VT=Data Points"
#And I wait for 2 Seconds
#And I click on "VT=New Form Framework"
#And User click on "VT=Add" Button
#And I wait for 2 Seconds
#And I click on "VT=Choose form" button
#And I wait for 2 Seconds
#And I enter "LABEL1=Choose Form" as "Pie Chart New Master"
#And I wait for 2 Seconds
#And I click on "LABEL=Choose field" dropdown
#And I wait for 2 Seconds
#And I enter "LABEL1=Choose field" as "TaxiType"
#And I wait for 2 Seconds
#And I click on "VT=Done"[2]
#And I wait for 2 Seconds
#
#And User click on "VT=Add" Button
#And I wait for 2 Seconds
#And I click on "VT=Choose form" button
#And I wait for 2 Seconds
#And I enter "LABEL1=Choose Form" as "Pie Chart New Master"
#And I wait for 2 Seconds
#And I click on "LABEL=Choose field" dropdown
#And I wait for 2 Seconds
#And I enter "LABEL1=Choose field" as "TotalFair"
#And I wait for 2 Seconds
#And I click on "VT=Done"[2]
#
#And I wait for 2 Seconds
#And I click on "VTJS=Save" button
#And I wait for 1 Seconds
#And I refresh the page
#And I wait for 2 Seconds
#And I click on "VT=Edit" button
#And I wait for 1 Seconds
#And I click on "VT=Pie Chart" setting button
#And I wait for 2 Seconds
#And I click on "VT=Pivot" from configuration
#And I wait for 2 Seconds
#And I click on "VT=Configure" button
#And I wait for 2 Seconds
#
#And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
#And I wait for 2 Seconds
#And I click on "VT=TaxiType" mouse hover text
#And I wait for 2 Seconds
#And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
#And I wait for 2 Seconds
#And I click on "VT=TotalFair" mouse hover text
#And I wait for 2 Seconds
#And User double clicks on "VT=Summarize by" field "VT=TotalFair" in Pivot
#And User changed the "VT=TotalFair" to "VT=TotalFairMinimum" in "VT=Summarize by"[1] pivot
#//Minimum
#And I click on "VT=SUM" Button
#And I wait for 2 Seconds
#And I click on "VT=MIN"[1]
#And I wait for 2 Seconds
#And I click on "VT=Done"[2]
#And I wait for 2 Seconds
#//Serieses configuration
#And I click on "VT=Serieses"
#And I wait for 2 Seconds
#And I click on "VT=Add"[6] button
#And I wait for 2 Seconds
#And I enter "LABEL1=Series name" as "Minimum Taxi Fair"
#And I wait for 2 Seconds
#And User click on "LABEL=Select argument field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=TaxiType" from dropdown
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=TotalFairMinimum" from dropdown
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#//Tooltip configuration
#And I click on "VT=Tooltip Config"
#And I wait for 2 Seconds
#And I click on "VT=Add"[4] button
#And I wait for 2 Seconds
#And I2 enter "LABEL=Label" as "Minimum Fair"
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And User click on "VT=TotalFairMinimum" dropdown option
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#And I click on "VT=Save" button
#And I wait for 2 Seconds
#And I click on "VT=Done" button
#And I wait for 2 Seconds
#And I refresh the page
#And I wait for 2 Seconds
#//UI Verification
#And I take Screenshot
#Then I see "VT=COOL Cab-1000" web element
#Then I see "VT=TAXI-2000" web element
#Then I see "VT=WOMEN Driver-1000" web element 
#//Maximum
#And I wait for 1 Seconds
#And I click on "VT=Edit" button
#And I click on "VT=Pie Chart" setting button
#And I wait for 1 Seconds
#And I click on "VT=Pivot" from configuration
#And I wait for 1 Seconds
#And I click on "VT=Configure" button
#And I wait for 1 Seconds
#And I click on "DI=delete"[1] from "VT=Summarize by"
#And I click on "VT=Delete"[3] button 
#And I wait for 1 Seconds
#And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
#And I wait for 1 Seconds
#And I click on "VT=TotalFair" mouse hover text
#And I wait for 1 Seconds
#And User double clicks on "VT=Summarize by" field "VT=TotalFair" in Pivot
#And User changed the "VT=TotalFair" to "VT=TotalFairMaximum" in "VT=Summarize by"[1] pivot
#And I click on "VT=SUM" Button
#And I click on "VT=MAX"[1]
#And I click on "VT=Done"[2]
#And I wait for 2 Seconds
#//Serieses configuration
#And I click on "VT=Serieses"
#And I wait for 2 Seconds
#And I click on "VT=Minimum Taxi Fair" "DI=delete"[2]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[6] button
#And I wait for 2 Seconds
#And I enter "LABEL1=Series name" as "Maximum Fair"
#And User click on "LABEL=Select argument field" and "VT=Select data point"
#And I wait for "100" milli seconds
#And I click on "VT=TaxiType" from dropdown
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=TotalFairMaximum" from dropdown
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#//Tooltip configuration
#And I click on "VT=Tooltip Config"
#And I wait for 2 Seconds
#And I click on "VT=Minimum Taxi Fair" "DI=delete"[1]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[4] button
#And I wait for 2 Seconds
#And I2 enter "LABEL=Label" as "Maximum Fair"
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=TotalFairMaximum" from dropdown
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#And I click on "VT=Save" button
#And I wait for 2 Seconds
#And I click on "VT=Done" button
#And I wait for 2 Seconds
#And I refresh the page
#And I wait for 2 Seconds
#//UI Verification
#Then I see "VT=COOL Cab-123456" web element
#Then I see "VT=TAXI-2000" web element
#Then I see "VT=WOMEN Driver-1200" web element 
#
#//SUM
#And I wait for 2 Seconds
#And I click on "VT=Edit" button
#And I click on "VT=Pie Chart" setting button
#And I wait for 2 Seconds
#And I click on "VT=Pivot" from configuration
#And I wait for 2 Seconds
#And I click on "VT=Configure" button
#And I wait for 2 Seconds
#And I click on "DI=delete"[1] from "VT=Summarize by"
#And I click on "VT=Delete"[3] button 
#And I wait for 1 Seconds
#And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
#And I wait for 21 Seconds
#And I click on "VT=TotalFair" mouse hover text
#And I wait for 2 Seconds
#And User double clicks on "VT=Summarize by" field "VT=TotalFair" in Pivot
#And User changed the "VT=TotalFair" to "VT=FairSUM" in "VT=Summarize by"[1] pivot
#And I click on "VT=SUM" Button
#And I wait for 2 Seconds
#And I click on "VT=SUM"[1]
#And I wait for 2 Seconds
#And I click on "VT=Done"[2]
#And I wait for 2 Seconds
#//Serieses configuration
#And I click on "VT=Serieses"
#And I wait for 2 Seconds
#And I click on "VT=Maximum Fair" "DI=delete"[2]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[6] button
#And I wait for 2 Seconds
#And I enter "LABEL1=Series name" as "SUM of Fair"
#And I wait for 2 Seconds
#And User click on "LABEL=Select argument field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=TaxiType" from dropdown
#And I wait for 2 Seconds
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=FairSUM" from dropdown
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#//Tooltip configuration
#And I click on "VT=Tooltip Config"
#And I wait for 2 Seconds
#And I click on "VT=Maximum Fair" "DI=delete"[1]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[4] button
#And I wait for 2 Seconds
#And I2 enter "LABEL=Label" as "Fair SUM"
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And User click on "VT=FairSUM" dropdown option
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#And I click on "VT=Save" button
#And I wait for 2 Seconds
#And I click on "VT=Done" button
#And I wait for 2 Seconds
#And I refresh the page
#And I wait for 2 Seconds
#//UI Verification
#Then I see "VT=COOL Cab-126656" web element
#Then I see "VT=TAXI-2000" web element
#Then I see "VT=WOMEN Driver-2200" web element 
#And I take Screenshot 
#
#//Average
#And I wait for 2 Seconds
#And I click on "VT=Edit" button
#And I click on "VT=Pie Chart" setting button
#And I wait for 2 Seconds
#And I click on "VT=Pivot" from configuration
#And I wait for 2 Seconds
#And I click on "VT=Configure" button
#And I wait for 2 Seconds
#And I click on "DI=delete"[1] from "VT=Summarize by"
#And I click on "VT=Delete"[3] button 
#And I wait for 1 Seconds
#And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
#And I wait for 21 Seconds
#And I click on "VT=TotalFair" mouse hover text
#And I wait for 2 Seconds
#And User double clicks on "VT=Summarize by" field "VT=TotalFair" in Pivot
#And User changed the "VT=TotalFair" to "VT=FairAverage" in "VT=Summarize by"[1] pivot
#And I click on "VT=SUM" Button
#And I wait for 2 Seconds
#And I click on "VT=AVERAGE"[1]
#And I wait for 2 Seconds
#And I click on "VT=Done"[2]
#And I wait for 2 Seconds
#//Serieses configuration
#And I click on "VT=Serieses"
#And I wait for 2 Seconds
#And I click on "VT=SUM of Fair" "DI=delete"[1]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[6] button
#And I wait for 2 Seconds
#And I enter "LABEL1=Series name" as "Average of Fair"
#And I wait for 2 Seconds
#And User click on "LABEL=Select argument field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=TaxiType" from dropdown
#And I wait for 2 Seconds
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=FairAverage" from dropdown
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#//Tooltip configuration
#And I click on "VT=Tooltip Config"
#And I wait for 2 Seconds
#And I click on "VT=Sum of  Fair" "DI=delete"[1]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[4] button
#And I wait for 2 Seconds
#And I2 enter "LABEL=Label" as "Average of  Fair"
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And User click on "VT=FairAverage" dropdown option
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#And I click on "VT=Save" button
#And I wait for 2 Seconds
#And I click on "VT=Done" button
#And I wait for 2 Seconds
#And I refresh the page
#And I wait for 2 Seconds
#//UI Verification
#Then I see "VT=COOL Cab-63328" web element
#Then I see "VT=TAXI-2000" web element
#Then I see "VT=WOMEN Driver-1100" web element 
#And I take Screenshot
#
#//Unique Count
#And I wait for 2 Seconds
#And I click on "VT=Edit" button
#And I click on "VT=Pie Chart" setting button
#And I wait for 2 Seconds
#And I click on "VT=Pivot" from configuration
#And I wait for 2 Seconds
#And I click on "VT=Configure" button
#And I wait for 2 Seconds
#And I click on "DI=delete"[1] from "VT=Summarize by"
#And I click on "VT=Delete"[3] button 
#And I wait for 1 Seconds
#And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
#And I wait for 21 Seconds
#And I click on "VT=TotalFair" mouse hover text
#And I wait for 2 Seconds
#And User double clicks on "VT=Summarize by" field "VT=TotalFair" in Pivot
#And User changed the "VT=TotalFair" to "VT=FairUniqueCount" in "VT=Summarize by"[1] pivot
#And I click on "VT=SUM" Button
#And I wait for 2 Seconds
#And I click on "VT=UNIQUE COUNT"[1]
#And I wait for 2 Seconds
#And I click on "VT=Done"[2]
#And I wait for 2 Seconds
#//Serieses configuration
#And I click on "VT=Serieses"
#And I wait for 2 Seconds
#And I click on "VT=Average of Fair" "DI=delete"[1]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[6] button
#And I wait for 2 Seconds
#And I enter "LABEL1=Series name" as "Unique Count of Fair"
#And I wait for 2 Seconds
#And User click on "LABEL=Select argument field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=TaxiType" from dropdown
#And I wait for 2 Seconds
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=FairUniqueCount" from dropdown
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for "100" milli seconds
#//Tooltip configuration
#And I click on "VT=Tooltip Config"
#And I wait for 2 Seconds
#And I click on "VT=Average of  Fair" "DI=delete"[1]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[4] button
#And I wait for "100" milli seconds
#And I2 enter "LABEL=Label" as "Unique Count of Fair"
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And User click on "VT=FairUniqueCount" dropdown option
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#And I click on "VT=Save" button
#And I wait for "100" milli seconds
#And I click on "VT=Done" button
#And I wait for 2 Seconds
#And I refresh the page
#And I wait for 2 Seconds
#//UI Verification
#Then User see "2" label for "#f5564a" color 3 in number
#Then User see "1" label for "#97c95c" color 3 in number
#Then User see "3" label for "#1db2f5" color 3 in number
#//MEDIAN
#And I wait for 2 Seconds
#And I click on "VT=Edit" button
#And I click on "VT=Pie Chart" setting button
#And I wait for 2 Seconds
#And I click on "VT=Pivot" from configuration
#And I wait for 2 Seconds
#And I click on "VT=Configure" button
#And I wait for 2 Seconds
#And I click on "DI=delete"[1] from "VT=Summarize by"
#And I click on "VT=Delete"[3] button 
#And I wait for 1 Seconds
#And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
#And I wait for 21 Seconds
#And I click on "VT=TotalFair" mouse hover text
#And I wait for 2 Seconds
#And User double clicks on "VT=Summarize by" field "VT=TotalFair" in Pivot
#And User changed the "VT=TotalFair" to "VT=FairMedian" in "VT=Summarize by"[1] pivot
#And I click on "VT=SUM" Button
#And I wait for 2 Seconds
#And I click on "VT=MEDIAN"[1]
#And I wait for 2 Seconds
#And I click on "VT=Done"[2]
#And I wait for "100" milli seconds
#//Serieses configuration
#And I click on "VT=Serieses"
#And I wait for 2 Seconds
#And I click on "VT=Unique Count of Fair" "DI=delete"[2]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[6] button
#And I wait for 2 Seconds
#And I enter "LABEL1=Series name" as "Median of Fair"
#And I wait for 2 Seconds
#And User click on "LABEL=Select argument field" and "VT=Select data point"
#And I wait for "100" milli seconds
#And I click on "VT=TaxiType" from dropdown
#And I wait for "100" milli seconds
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=FairMedian" from dropdown
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for "100" milli seconds
#//Tooltip configuration
#And I click on "VT=Tooltip Config"
#And I wait for 2 Seconds
#And I click on "VT=Unique Count of Fair" "DI=delete"[1]
#And I wait for 2 Seconds
#And I click on "VT=Delete"[2] button
#And I wait for 2 Seconds
#And I click on "VT=Add"[4] button
#And I wait for "100" milli seconds
#And I2 enter "LABEL=Label" as "Median of  Fair"
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And User click on "VT=FairMedian" dropdown option
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for 2 Seconds
#And I click on "VT=Save" button
#And I wait for "100" milli seconds
#And I click on "VT=Done" button
#And I wait for 2 Seconds
#And I refresh the page
#And I wait for 2 Seconds
#//UI Verification
#Then I see "VT=COOL Cab-123456" web element
#Then I see "VT=TAXI-2000" web element
#Then I see "VT=WOMEN Driver-1200" web element 

#@PivotFilterPieChart
#Scenario: Pivot filter Verification of Pie chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-6384"
#And I wait for "2000" milli seconds
#And I click on "VT=Edit" button
#And I click on "VT=Pie Chart" setting button
#And I wait for 2 Seconds
#And I click on "VT=Pivot" from configuration
#And I wait for "100" milli seconds
#And I click on "VT=Configure" button
#And I wait for "100" milli seconds
#And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
#And I wait for 2 Seconds
#And I click on "VT=Salary" mouse hover text
#And I wait for 2 Seconds
#//Is filter
#And User mouse hover to the "VT=ADD" of the "VT=Filters"
#And I wait for 2 Seconds
#And I click on "VT=Salary" mouse hover text
#And I wait for 2 Seconds
#And I click on "VT=Select a field"
#And I wait for "100" milli seconds
#And I click on "VT=Salary" from dropdown
#And I wait for "100" milli seconds
#And I click on "VT=Select a operator"
#And I wait for "100" milli seconds
#And I click on "VT=Is" from dropdown
#And I wait for "100" milli seconds
#And I click on "VT=Value" Button
#And I enter "PH=Value" as "30000" in input field
#And I wait for "100" milli seconds
#And I click on "VT=Done"[2]
#And I wait for "100" milli seconds
#//Serieses Configuration
#And I click on "VT=Serieses"
#And I click on "VT=Add"[6] button
#And I wait for 2 Seconds
#And I enter "LABEL1=Series name" as "Is filter"
#And I wait for 2 Seconds
#And User click on "LABEL=Select argument field" and "VT=Select data point"
#And I wait for "100" milli seconds
#And I click on "VT=TaxiType" from dropdown
#And I wait for "100" milli seconds
#And User click on "LABEL=Select value field" and "VT=Select data point"
#And I wait for 2 Seconds
#And I click on "VT=SalaryMedian" from dropdown
#And I wait for 2 Seconds
#And I click on "VT=OK" button
#And I wait for "100" milli seconds
#And I click on "VT=Save" button
#And I wait for "100" milli seconds
#And I click on "VT=Done" button
#//UI Verification
#Then I see "VT=DIPAK-30000" web element
#Then User see the doughtnut chart division are 3


@MakeACopyPieChart
Scenario: Make a copy of PieChart Chart
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on new Created dashboard
#And I click on "VT=DashBoard-6046"
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I click on "VT=Pie Chart" setting button
And I wait for 2 Seconds
And I click on "VT=Make a copy" button
And I wait for 2 Seconds
And I click on "VT=OK" button
And I wait for 2 Seconds
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
Then I see "VT=Pie Chart Copy" web element
And I take Screenshot

#@DataManipulationOFDoughnut
#Scenario: Adding and verification of Data Manupulation of PieChart Chart
#
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= PieChart-DashBoard-3558"
#And I wait for "2000" milli seconds
#And I click on "VT=Edit" button
#And I click on "VT=Doughnut Chart NAME" setting button
#And I wait for "2000" milli seconds
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

