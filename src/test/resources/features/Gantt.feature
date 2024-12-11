 
 Feature: Dashboard
  
  Background: 
  Given I navigate to web application
  Then I should see page title as "Zvolv"
  And I see "VT=Login" web element
  When login into the zvolv application with below credentials
      |dragon_1|saikumaroffice786@gmail.com|Saik@123|
   # And I click on "VT=Login"
  Then I see "VT=Zapps" and "VT=Create zapp" web element
  
 @DashboardWidget	@GANTT
	Scenario: Validate Add and configure KPI Widget
And I enter "PH=search zapp by title" as "End to End"
And I click on "VT=End to End"
  #//new Dashboard
And I wait for "2000" milli seconds
And I click on "DI=plus"[1] Button
And I wait for "2000" milli seconds
And User enters the "Gantt" dashboard title
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
And I wait for 2 Seconds
#// Adding widget 
  And I click on "VT=Edit" button
  And I wait for 1 Seconds
  And I click on "VT=Add widget" button
  And I wait for 1 Seconds
	Then User clicks on "GANTT" widget	
	And I wait for "2000" milli seconds
	Then User clears Title field in Widget
	#And I enter "PH=Title" as "Generic Title"
	Then User enters "Gantt Title" as Pie Chart title
  #When I enter "LABEL=Description" as "Desc"
  And User enters "Gantt Description" as Description
  #And I click on "VT=Highlight color" button
  Then User clicks on "Highlight color" color picker
  And User selects "#FF6900" color
  Then User clicks on "Border color" color picker 
	And User selects "#FCB900" color 
	Then User clicks on "Background color" color picker 
	And User selects "#7BDCB5" color
	And I click on "VT=Details"
	And I wait for "1000" milli seconds
	And I click on "VT=Data Points"
	And I click on "VT=New Form Framework"
	#And I click on "VT=Add" button
	Then User clicks on "Add" button
	#And I click on "VT=Choose Form"# This is clicking on Text
	And I click on "VT=Choose form" button
#	And User clicks on "Choose Form" dropdown
	And I wait for 1 Seconds
	And I enter "LABEL1=Choose Form" as "db_piechart"
#	And I click on "VT=db_piechart" 
	And I click on "LABEL=Choose field" dropdown
	And I enter "LABEL1=Choose field" as "Department"
	#And User clicks on "Choose Field" dropdown
	#And I click on "VT=Department"
	#Then User enters in "Choose Field" Text field with value "Department"
	#And I click on "VT=Filter"
	And User clicks on "Filter" tab	
	#And I click on "VT=Add filter" button
	#And I click on "VTJS=Add filter" button
	#And I click on "VTAC=Add filter" button
	#And I click on "VTEQ=Add filter" button
	Then User clicks on "Add filter" button
	#And I click on "VT=Choose condition" dropdown
	When I click on "VT=Choose condition" downarrow
	And I click on "VT=Text in"
	#And I enter "PH=Value" dropdown value as "IT"
	Then User clicks on dropdown with "Value" placeholder in Datapoints accordion
  Then User enters "IT" value in textbox in dropdown with "Value" placeholder
	#And I click on "VT=Done" button # clicking button in background
	Then User clicks on "Done" button in Form footer
	And I wait for "1000" milli seconds
	And I click on "VT=Data Preview" button 
	And I wait for "1000" milli seconds
	And I click on "VT=Data Points"
	And I wait for "1000" milli seconds
	And I click on "VT=Pivot"
	And I click on "VT=Configure" button
	#And I move to "VT=ADD"# moving but Based on text beside the button "ADD", it should move.
	Then User mouse overs on "Row grouping" ADD button 
	And I wait for "2000" milli seconds
	#And I click on "VT=Department" #Identifying element in the background
	Then User clicks on "Department" option after mouse overing onto ADD button
	And I wait for "2000" milli seconds
	Then User mouse overs on "Summarize by" ADD button
	Then User clicks on "Department" option after mouse overing onto ADD button
	When I click on "VT=SUM" downarrow
	And I click on "VT=COUNT"
	Then User mouse overs on "Filters" ADD button
	And I wait for "2000" milli seconds
	Then User clicks on "Department" option after mouse overing onto ADD button
	When I click on "VT=Select a field" downarrow 
	#And I click on "VT=Department" # selecting other Text but NOT dropdownvalue 
	And I wait for "1000" milli seconds
	And I click on "VT=Department" from dropdown
	When I click on "VT=Select a operator" downarrow
	And I click on "VT=Is"
	Then User enters "IT" value in textbox in dropdown with "Value" placeholder
	Then User clicks on Post Operations ADD button
	When I click on "VT=Select operation" downarrow
	And I click on "VT=Addition"
	When I click on "VT=Select Field" downarrow
	#And I click on "VT=Department"# selecting other Text in the Background but NOT dropdown value
	Then User clicks on "Department" value in dropdown in Pivot accordion
	Then User clicks on "ESCAPE" button on Keyboard
	#And I click on "VT=Done" button # clicking in the Bachround
	Then User clicks on "Done" button in Form footer
	And I click on "VT=Pivot"
	And I wait for "1000" milli seconds
	And I click on "VT=Data Manipulation"
	And User clicks on Add button in "Data Manipulation" accordion
	And I wait for "1000" milli seconds
	When I click on "VT=Select data point" downarrow
	#And I click on "VT=Department"
	Then User clicks on "Department" value in dropdown in Data Manipulation accordion
	When I click on "VT=Select operation" downarrow
	And I click on "VT=Sum"
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Data Manipulation"
#	And I click on "VT=Gantt Config"
#	And I wait for "2000" milli seconds
#	Then User clicks on "Configure" button in Gantt Config
#	And I click on "VT=Select project title" dropdown
#	And I click on "VT=Depertment" from dropdown
#	And I click on "VT=OK"
	And I wait for "1000" milli seconds
	And I click on "VT=Advanced Settings"
	And I wait for "1000" milli seconds
	When I click on "VT=Select roles" downarrow
	And I click on "VT=ALLACCESS"
	Then User clicks on "ESCAPE" button on Keyboard
	#And I enter "LABEL=Sequence number" as "1"
	Then User enters "1" in "Sequence number" number box in accordion
	And I click on "VT=Disable data export"
	#When I click on "VT=Select Zapp" downarrow
	Then User clicks on dropdown with "Select Zapp" placeholder
	#And I click on "VT=End to End"
	And User selects "End to End" value 
	And I click on "VT=Advanced Settings"
	And I wait for "1000" milli seconds
	And I click on "VT=Save" button