@ZvolvDashboards 
Feature: Doughtnut chart Dashboard Widget
	Dashboard Widget Testing
  Background: 
Given I navigate to web application
Then I should see page title as "Zvolv"
And I see "VT=Login" web element
When login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|
#And I click on "VT=Login"
Then I see "VT=Zapps" and "VT=Create zapp" web element

@DoughtnutChart
Scenario Outline: Adding and Configuration of Doughtnut chart 
Given I click on "VT=End to End"
And I wait for "2000" milli seconds
And I refresh the page
#//new dashboard
And I wait for "2000" milli seconds
And I click on "DI=plus"[1] Button
And User enters the "Doughtnut" dashboard title
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
And I click on new Created dashboard
And I wait for 1 Seconds
#And I click on "VT=Doughtnut"
#And I wait for "5000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for "2000" milli seconds
And User click on "VT=Doughnut Chart" widget
And I enter "PH=Title" as "Doughnut Chart NAME"
And I2 enter "LABEL=Description" as "Doughnut Chart Testing"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
And I click on "VT=Data Points"
And I wait for "2000" milli seconds
And I click on "VT=New Form Framework"
And User click on "VT=Add" Button
And I wait for "2000" milli seconds
And I click on "VT=Choose form" button
And I wait for "2000" milli seconds
And I enter "LABEL1=Choose Form" as "Doughtnut Chart New Master"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "NAME"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
#//Pivot configuration-Count
And I wait for "2000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "100" milli seconds
And I click on "VT=Configure" button
And I wait for "100" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
And I wait for "2000" milli seconds
And I click on "VT=NAME" mouse hover text
And I wait for "2000" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
And I wait for "2000" milli seconds
And I click on "VT=NAME" mouse hover text
And User double clicks on "VT=Summarize by" field "VT=NAME" in Pivot
And User changed the "VT=NAME" to "VT=NameCount" in "VT=Summarize by"[1] pivot
And I click on "VT=SUM" Button
And I wait for "2000" milli seconds
And I click on "VT=COUNT"[1]
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "100" milli seconds
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "NAME"
And I wait for "2000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=NAME" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=NameCount" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for "2000" milli seconds
#//UI verification
Then User see the doughtnut chart division are 3
Then User see the Name Label with count are "DIPAK-3", "ROHIT-2" and "SAI-1"
And I take Screenshot
#//Adding two name into form
And User clicks on Databases from side bar
And I wait for "2000" milli seconds
And I click on "VT=Doughtnut Chart New Master"
And I wait for "2000" milli seconds
And I click on "VT=Add" button
And I wait for "2000" milli seconds
And I click on "LABEL2=NAME"[2]
And I wait for "2000" milli seconds
And I click on "VT=RAHUL" from dropdown
And I click on "VT=Submit" button
And I wait for "2000" milli seconds
And I click on "VT=Add" button
And I wait for "2000" milli seconds
And I click on "LABEL2=NAME"[2]
And I wait for "2000" milli seconds
And I click on "VT=RAHUL" from dropdown
And I click on "VT=Submit" button
And I click on "DI=close"
#//verification of UI newly added data
And User click on Dashboard from side bar
And I wait for "2000" milli seconds
And I click on new Created dashboard
And I wait for "2000" milli seconds
Then User see the doughtnut chart division are 4
Then User see the Name Label with count are "DIPAK-3", "RAHUL-2","ROHIT-2" and "SAI-1"
#//Removing newly added names
And User clicks on Databases from side bar
And I wait for "2000" milli seconds
And I click on "VT=Doughtnut Chart New Master"
And I wait for "2000" milli seconds
And I remove new 2 name from the form
And I click on "DI=close"
#//UI Verification
And User click on Dashboard from side bar
And I wait for "2000" milli seconds
And I click on new Created dashboard
And I wait for "2000" milli seconds
Then User see the Name Label with count are "DIPAK-3", "ROHIT-2" and "SAI-1"
And I take Screenshot

#@doughtChartSecond
#Scenario: Adding second doughtnut chart 
#Given I click on "VT=End to End"
#And I wait for "2000" milli seconds
#And I click on "VT=Doughnut-DashBoard-3786"
And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Data Points"

And I wait for "2000" milli seconds
And User click on "VT=Add" Button
And I wait for "2000" milli seconds
And I click on "VT=Choose form" button
And I wait for "2000" milli seconds
And I enter "LABEL1=Choose Form" as "Doughtnut Chart New Master"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Gendar"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
#//Second Pivot configuration
And I wait for "2000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "100" milli seconds
And I click on "VT=Configure" button
And I wait for "100" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
And I wait for "2000" milli seconds
And I click on "VT=Gendar" mouse hover text
And I wait for "2000" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
And I wait for "2000" milli seconds
And I click on "VT=Gendar" mouse hover text
And I wait for "2000" milli seconds
And User double clicks on "VT=Summarize by" field "VT=Gendar" in Pivot
And I wait for "100" milli seconds
And User changed the "VT=Gendar" to "VT=GendarCount" in "VT=Summarize by"[2] pivot
And I wait for "100" milli seconds
And I click on "VT=SUM" Button
And I wait for "2000" milli seconds
And I click on "VT=COUNT"[2]
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "100" milli seconds
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "Gendar"
And I wait for "2000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=Gendar" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=GendarCount" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for "2000" milli seconds
#//UI verification
Then User see the doughtnut chart division are 6
Then User see the Name Label with count are "DIPAK-3","ROHIT-2","SAI-1","Male-3","Male-2" and "Male-1"
And I take Screenshot

#@FilterConfigOfDoughnut
#Scenario: Adding and verification of Filter of Doughtnut Chart
#
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-9978"
And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Filters" from configuration
And I wait for "100" milli seconds
And I click on "VT=Add"[5] button
And I wait for "2000" milli seconds
And User click on "LABEL=Choose Form" and "VT=Choose form" button
And I wait for "2000" milli seconds
And User click on "Doughtnut Chart New Master"
And User click on "LABEL=Choose Field" and "VT=Choose field" button
And I wait for "2000" milli seconds
And I click on "VT=NAME" of filter configuration choose field
And I click on "VT=Done"[2]
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on "VT=Done" button
And I click on "VT=Filters" comman for widget
And I click on "VT=NAME" of quick filters
And I wait for "2000" milli seconds
And User click on "VT=DIPAK" dropdown option
And I wait for 2 Seconds
And I click on Body_1
And I click on "DI3=down"[2]
And I click on Body
#//UI Verification
Then User see the doughtnut chart division are 2
Then User see the Name Label with count are "DIPAK-3" and "Male-3"
And I click on "VT=Filters" comman for widget
And I click on "VT=Clear all" button
And I wait for "2000" milli seconds
And I click on Body
Then User see the Name Label with count are "DIPAK-3","ROHIT-2","SAI-1","Male-3","Male-2" and "Male-1"
And I take Screenshot

#@DrillDownConfiguration
#Scenario: Adding and verification of Drill Down of Doughtnut Chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-9978"
#And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Drill Down"
And I wait for "2000" milli seconds
And I mouse Hover on "DI=question-circle" of "LABEL=Select dashboard"
Then I see "VT=On data point/row click, user will navigate to selected dashboard" web element
And I click on "NZPH=select dashboard" dropdown
And I wait for "2000" milli seconds
Then User clicks on "Doughtnut" value in dropdown in Drill down accordion
And I mouse Hover on "DI=question-circle" of "LABEL=Select filter"
Then I see "VT=User will navigate to above selected dashboard with below filter applied" web element
And User clicks on "Select filter" dropdown in Drill Down accordion
And I wait for "100" milli seconds
Then User clicks on "NAME" value in dropdown in Drill down accordion
And I click on "VT=Drill Down"
And I wait for "100" milli seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on "VT=Done" button
#//UI verification
Then I click on "#97c95c" doughtnut chart segment and "VT=Drill Down Functionality Verification" web element
And I wait for 2 Seconds
#Then I click on "#f5564a" doughtnut chart segment and "VT=Drill Down Functionality Verification" web element
#//Removing drill down functionality
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for 2 Seconds
And I click on "VT=Drill Down"
And I wait for 2 Seconds
And I click on "VT=Delete" button
And I click on "VT=Delete"[2] button
And I click on "VT=Save" button
And I wait for 2 Seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
Then User verifies after clicking on "#97c95c" doughtnut chart segment does not navigates to dashboard
#//same dashboard UI
And I wait for 1 Seconds
Then User see the doughtnut chart division are 6
Then User see the Name Label with count are "DIPAK-3","ROHIT-2","SAI-1","Male-3","Male-2" and "Male-1"

#@Legends
#Scenario: Adding and verification of Legends of Doughtnut Chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-9978"
And I wait for "1000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Legends"
And I wait for "2000" milli seconds
Then User clicks on "Show labels" checkbox
Then User clicks on "Show legends" checkbox
#//Alignment Verification
Then User clicks on "Horizontal alignment" dropdown in Legends
And User selects "Center" value
Then User waits for "2000" milliseconds
Then User waits for "2000" milliseconds
And I click on "VT=Center"
Then User waits for "2000" milliseconds
And User selects "Right" value
Then User waits for "2000" milliseconds
And I click on "VT=Right"
Then User waits for "2000" milliseconds
And User selects "Left" value
Then User waits for "2000" milliseconds
Then User clicks on "Vertical alignment" dropdown in Legends
And User selects "Top" value
And I click on "VT=Top"
And User selects "Bottom" value
And I wait for "2000" milli seconds
And I click on "VT=Legends"
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for "2000" milli seconds
#//UI verification
Then User see "2" label for "#f5564a" color 2 in number
Then User see "1" label for "#97c95c" color 2 in number
Then User see "3" label for "#1db2f5" color 2 in number

#@ToolTipConfigOfDoughnut
#Scenario: Adding and verification of ToolTip of Doughtnut Chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-3558"
And I wait for "1000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Tooltip Config"
And I wait for "100" milli seconds
And I click on "VT=Add"[4] button
And I wait for "100" milli seconds
And I2 enter "LABEL=Label" as "NAME"
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "100" milli seconds
And User click on "VT=NAME" dropdown option
And User click on "LABEL=Select value format" and "VT=Select Value Format"
And I wait for "100" milli seconds
And User click on "VT=String" dropdown option
And I click on "VT=OK" button
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for "2000" milli seconds
#//UI verification
And I wait for 1 Seconds
Then User mouse hover on doughnut chart and see "DIPAK" tooltip text
And I take Screenshot

#@AdvanceSetting
#Scenario: Adding and verification of Data Manupulation of Doughtnut Chart
#
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-9978"
And I wait for "1000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
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
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for "5000" milli seconds
#@PivotAllCOnfigurationofSummerizeByDropdown
#Scenario Outline: Verification of all pivot dropdown options
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-6384"
#And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for 2 Seconds
And I click on "VT=Data Points"
And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "VT=Choose form" button
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "Doughtnut Chart New Master"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Salary"
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And I click on "VT=Pivot" from configuration
And I wait for "100" milli seconds
And I click on "VT=Configure" button
And I wait for 2 Seconds
And User mouse hover to the "VT=ADD" of the "VT=Summarize by"
And I wait for 2 Seconds
And I click on "VT=Salary" mouse hover text
And User double clicks on "VT=Summarize by" field "VT=Salary" in Pivot
And User changed the "VT=Salary" to "VT=SalaryMinimum" in "VT=Summarize by"[3] pivot
#//Minimum
And I click on "VT=SUM" Button
And I wait for "2000" milli seconds
And I click on "VT=MIN"[1]
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "100" milli seconds
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "Minimum Salary"
And I wait for "2000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=NAME" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=SalaryMinimum" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
#//Tooltip configuration
And I click on "VT=Tooltip Config"
And I wait for "100" milli seconds
And I click on "VT=Add"[4] button
And I wait for "100" milli seconds
And I2 enter "LABEL=Label" as "Minimum Salary"
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And User click on "VT=SalaryMinimum" dropdown option
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
#//UI Verification
And I wait for 2 Seconds
Then User takes doughunut widget screenshot by "<widgetTitle>"
Then I see "VT=25000" web element
Then I see "VT=67890" web element
Then I see "VT=60000" web element 
#//Maximum
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for 2 Seconds
And I click on "VT=Pivot" from configuration
And I wait for "2000" milli seconds
And I click on "VT=Configure" button
And I wait for "2000" milli seconds
And User double clicks on "VT=Summarize by" field "VT=SalaryMinimum" in Pivot input[3]
And User changed the "VT=SalaryMinimum" to "VT=SalaryMaximum" in "VT=Summarize by"[3] pivot
And I click on "VT=MIN" Button
And I wait for "2000" milli seconds
And I click on "VT=MAX"[1]
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "2000" milli seconds
And I click on "VT=Minimum Salary" "DI=delete"[2]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "Maximum Salary"
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=NAME" from dropdown
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=SalaryMaximum" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
#//Tooltip configuration
And I click on "VT=Tooltip Config"
And I wait for "2000" milli seconds
And I click on "VT=Minimum Salary" "DI=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[4] button
And I wait for "100" milli seconds
And I2 enter "LABEL=Label" as "Maximum Salary"
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=SalaryMaximum" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for 1 Seconds
#//UI Verification
And I wait for 2 Seconds
Then I see "VT=45000" web element
Then I see "VT=60000" web element
Then I see "VT=80000" web element 

#//SUM
And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "2000" milli seconds
And I click on "VT=Configure" button
And I wait for "2000" milli seconds
And User double clicks on "VT=Summarize by" field "VT=SalaryMinimum" in Pivot input[3]
And User changed the "VT=SalaryMaximum" to "VT=SalarySUM" in "VT=Summarize by"[3] pivot
And I click on "VT=MAX" Button
And I wait for "2000" milli seconds
And I click on "VT=SUM"[1]
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "2000" milli seconds
And I click on "VT=Maximum Salary" "DI=delete"[2]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "SUM of Salary"
And I wait for "2000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=NAME" from dropdown
And I wait for "100" milli seconds
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=SalarySUM" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
#//Tooltip configuration
And I click on "VT=Tooltip Config"
And I wait for "2000" milli seconds
And I click on "VT=Maximum Salary" "DI=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[4] button
And I wait for "100" milli seconds
And I2 enter "LABEL=Label" as "Sum of  Salary"
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And User click on "VT=SalarySUM" dropdown option
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for 2 Seconds
#//UI Verification
And I wait for 2 Seconds
Then I see "VT=100000" web element
Then I see "VT=60000" web element
Then I see "VT=147890" web element
And I take Screenshot 

#//Average
And I wait for 2 Seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "2000" milli seconds
And I click on "VT=Configure" button
And I wait for "2000" milli seconds
And User double clicks on "VT=Summarize by" field "VT=SalaryMinimum" in Pivot input[3]
And User changed the "VT=SalarySUM" to "VT=SalaryAverage" in "VT=Summarize by"[3] pivot
And I click on "VT=SUM"[2]
And I wait for "2000" milli seconds
And I click on "VT=AVERAGE"[1]
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "2000" milli seconds
And I click on "VT=SUM of Salary" "DI=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "Average of Salary"
And I wait for "2000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=NAME" from dropdown
And I wait for "100" milli seconds
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=SalaryAverage" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
#//Tooltip configuration
And I click on "VT=Tooltip Config"
And I wait for "2000" milli seconds
And I click on "VT=Sum of  Salary" "DI=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[4] button
And I wait for "100" milli seconds
And I2 enter "LABEL=Label" as "Average of  Salary"
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And User click on "VT=SalaryAverage" dropdown option
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for 2 Seconds
#//UI Verification
And I wait for 2 Seconds
Then I see "VT=60000" web element
Then I see "VT=33333.333333333336" web element
Then I see "VT=73945" web element 
And I take Screenshot

#//Unique Count
And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "2000" milli seconds
And I click on "VT=Configure" button
And I wait for "2000" milli seconds
And User double clicks on "VT=Summarize by" field "VT=SalaryMinimum" in Pivot input[3]
And User changed the "VT=SalaryAverage" to "VT=SalaryUniqueCount" in "VT=Summarize by"[3] pivot
And I click on "VT=AVERAGE" Button
And I wait for "2000" milli seconds
And I click on "VT=UNIQUE COUNT"[1]
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "2000" milli seconds
And I click on "VT=Average of Salary" "DI=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "Unique Count of Salary"
And I wait for "2000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=NAME" from dropdown
And I wait for "100" milli seconds
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=SalaryUniqueCount" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
#//Tooltip configuration
And I click on "VT=Tooltip Config"
And I wait for "2000" milli seconds
And I click on "VT=Average of  Salary" "DI=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[4] button
And I wait for "100" milli seconds
And I2 enter "LABEL=Label" as "Unique Count of Salary"
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And User click on "VT=SalaryUniqueCount" dropdown option
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for "3000" milli seconds
#//UI Verification
Then User see "2" label for "#f5564a" color 3 in number
Then User see "1" label for "#97c95c" color 3 in number
Then User see "3" label for "#1db2f5" color 3 in number
#Then I see "VT=3" web element
#Then I see "VT=2" web element
#Then I see "VT=1" web element 

#//MEDIAN
And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "2000" milli seconds
And I click on "VT=Configure" button
And I wait for "2000" milli seconds
And User double clicks on "VT=Summarize by" field "VT=SalaryMinimum" in Pivot input[3]
And User changed the "VT=SalaryUniqueCount" to "VT=SalaryMedian" in "VT=Summarize by"[3] pivot
And I click on "VT=UNIQUE COUNT" Button
And I wait for "2000" milli seconds
And I click on "VT=MEDIAN"[1]
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses configuration
And I click on "VT=Serieses"
And I wait for "2000" milli seconds
And I click on "VT=Unique Count of Salary" "DI=delete"[2]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "Median of Salary"
And I wait for "2000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=NAME" from dropdown
And I wait for "100" milli seconds
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=SalaryMedian" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
#//Tooltip configuration
And I click on "VT=Tooltip Config"
And I wait for "2000" milli seconds
And I click on "VT=Unique Count of Salary" "DI=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete"[2] button
And I wait for "2000" milli seconds
And I click on "VT=Add"[4] button
And I wait for "100" milli seconds
And I2 enter "LABEL=Label" as "Median of  Salary"
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And User click on "VT=SalaryMedian" dropdown option
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for "3000" milli seconds
#//UI Verification
Then I see "VT=60000" web element
Then I see "VT=30000" web element
Then I see "VT=73945" web element 


#@PivotFilterDoughtnutChart
#Scenario: Pivot filter Verification of Doughtnut chart
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-6384"
#And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Pivot" from configuration
And I wait for "100" milli seconds
And I click on "VT=Configure" button
And I wait for "100" milli seconds
And User mouse hover to the "VT=ADD" of the "VT=Row grouping"
And I wait for "2000" milli seconds
And I click on "VT=Salary" mouse hover text
And I wait for "2000" milli seconds
#//Is filter
And User mouse hover to the "VT=ADD" of the "VT=Filters"
And I wait for "2000" milli seconds
And I click on "VT=Salary" mouse hover text
And I wait for "2000" milli seconds
And I click on "VT=Select a field"
And I wait for "100" milli seconds
And I click on "VT=Salary" from dropdown
And I wait for "100" milli seconds
And I click on "VT=Select a operator"
And I wait for "100" milli seconds
And I click on "VT=Is" from dropdown
And I wait for "100" milli seconds
And I click on "VT=Value" Button
And I enter "PH=Value" as "30000" in input field
And I wait for "100" milli seconds
And I click on "VT=Done"[2]
And I wait for "100" milli seconds
#//Serieses Configuration
And I click on "VT=Serieses"
And I click on "VT=Add"[6] button
And I wait for "2000" milli seconds
And I enter "LABEL1=Series name" as "Is filter"
And I wait for "2000" milli seconds
And User click on "LABEL=Select argument field" and "VT=Select data point"
And I wait for "100" milli seconds
And I click on "VT=NAME" from dropdown
And I wait for "100" milli seconds
And User click on "LABEL=Select value field" and "VT=Select data point"
And I wait for "2000" milli seconds
And I click on "VT=SalaryMedian" from dropdown
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "100" milli seconds
And I click on "VT=Save" button
And I wait for "100" milli seconds
And I click on "VT=Done" button
And I wait for 2 Seconds
#//UI Verification
Then I see "VT=DIPAK-1" web element
Then I see "VT=30000"[1] web element
Then I see "VT=30000"[2] web element
Then User see the doughtnut chart division are 4

#@MakeACopy
#Scenario: Make a copy of Doughtnut Chart
#
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-9978"
And I wait for "2000" milli seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Doughnut Chart NAME" setting button
And I wait for "2000" milli seconds
And I click on "VT=Make a copy" button
And I wait for "2000" milli seconds
And I click on "VT=OK" button
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on "VT=Done" button
And I wait for "2000" milli seconds
And I refresh the page
And I wait for "3000" milli seconds
Then I see "VT=Doughnut Chart NAME Copy" web element
And I take Screenshot

Examples:
|widgetTitle|
|Doughnut Chart NAME|



#@DataManipulationOFDoughnut
#Scenario: Adding and verification of Data Manupulation of Doughtnut Chart
#
#Given I click on "VT=End to End"
#And I wait for "3000" milli seconds
#And I refresh the page
#And I wait for "3000" milli seconds
#And I click on "VT= Doughtnut-DashBoard-3558"
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






