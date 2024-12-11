
#Author: sharath.chandra@dragonflytest.com

Feature: Dashboard
  
  Background: 
  Given I navigate to web application
  Then I should see page title as "Zvolv"
  And I see "VT=Login" web element
  When login into the zvolv application with below credentials
      |dragon_1|saikumaroffice786@gmail.com|Saik@123|
   # And I click on "VT=Login"
  Then I see "VT=Zapps" and "VT=Create zapp" web element
  
  
  
  
    #	Given login into the zvolv application with below credentials
      #|dragon_1|saikumaroffice786@gmail.com|Saik@123|
      #And I enter "PH=search zapp by title" as "End to End"
      #And I click on "VT=End to End"
      #And I wait for "1000" milli seconds
      #And I click on "VT=TestDB123"
      #And I wait for "1000" milli seconds
    #	And I click on "VT=Edit" button
    #	And I click on "VT=Add widget" button
		
	@doughnut 
  Scenario: Add Doughnut Chart widget and configure
    And I enter "PH=search zapp by title" as "End to End"
    And I click on "VT=End to End"
    And I wait for "1000" milli seconds
    And I click on "VT=TestDB123"
    And I wait for "1000" milli seconds
    And I click on "VT=Edit" button
    And I click on "VT=Add widget" button
    Then User clicks on "Doughnut Chart" widget 
    And I wait for "2000" milli seconds
    And I enter "PH=Title" as "DC Title"
    And I enter "LABEL2=Description" as "DC Description"
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
    And I click on "VT=Details"
    And I wait for "1000" milli seconds
    And I click on "VT=Data Points"
    And I enter "LABEL1=Limit data rows" as "1"
    And I click on "VT=Transpose"
    And I click on "VT=Transpose"
    And I click on "VT=New Form Framework"    
    Then User clicks on "Add" button
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "Department"
    And I wait for "2000" milli seconds
    And I click on "VT=Filter"[3]
    And I click on "VT=Add filter"
    #And I click on "VT=Add filter" button
    #Then User clicks on dropdown with "Choose condition" placeholder in Datapoints accordion
    When I click on "VT=Choose condition" downarrow
    #Then User clicks on "Text in" value
    And I click on "VT=Text in"
    When I click on "VT=Value" downarrow
    When I enter "LABEL1=Value" as "IT"
    And I click on "VT=Text Formatting"
    And I click on "VT=Add rule" 
    #Then User clicks on "Add rule" button
    And I click on "VT=Add condition"
    #And I click on "VTEQ=Add condition" button
    #Then User clicks on "Add condition" button
    #And I click on "VT=Add rule" button 
    Then User clicks on "Add rule" button
    Then User clicks on "Add condition" button
    #And I click on "VTEQ=Add condition" button
    When I click on "VT=Choose column" downarrow
    #Then User clicks on dropdown with "Choose column" placeholder in Datapoints accordion
    #And I click on "VT=Department"
    #Then User clicks on "Department" value
    When I click on "VT=Choose condition" downarrow
    And I wait for "2000" milli seconds
    #And User scrolls to x "100" and y "100" positions
		And I click on "VT=Text is exactly"    
    #When I enter "LABEL1=Value" as "IT"
		#Then User clicks on "Text in" value
    #When I enter "PH=Value" as "IT"
    And I wait for "1000" milli seconds
    And User clicks on "Advanced" tab
    And I click on "LABEL=Choose Column Type" dropdown
    #And I click on "VT=Generic"
    And User clicks on "Generic" in Choose Column Type dropdown in Datapoints
    When I click on "VT=Choose sorting operation" downarrow
   # Then User clicks on dropdown with "Choose sorting operation" placeholder
   And I click on "VT=Ascending"
    #Then User clicks on "Ascending" value
    And I click on "VT=Formula"
    And User clicks on "Formula" tab
    And I click on "VT=Add Operator"
    #Then User clicks on "Add Operator" button
    When I click on "VT=Choose operator type" downarrow
   # And User clicks on "Choose operation" dropdown
   And I click on "VT=Initialise"
    #Then User clicks on "Initialise" value in Formula tab
    When I click on "VT=Type here..." downarrow
    Then User clicks on "Done" button in Form footer
    #And I click on "VT=Data Preview" button    
    And I wait for "1000" milli seconds
#    Then User clicks on "Data Preview" button
    And I wait for "1000" milli seconds
   # And User clicks on "Data Points" accordion     
    And I click on "VT=Pivot"[3]
    And I wait for "1000" milli seconds
    And I click on "VT=Configure" button
    Then User waits for "2000" milliseconds
    #And I move to "VT=Row grouping"
    Then User mouse overs on "Row grouping" ADD button 
    Then User waits for "1000" milliseconds
    #And I click on "VT=Department"
    Then User clicks on "Department" option after mouse overing onto ADD button
    Then User mouse overs on "Summarize by" ADD button
    And I wait for "2000" milli seconds
   Then User clicks on "Department" option after mouse overing onto ADD button
   Then User double clicks on field in Summarize by in Pivot
   Then User enters "Department Count" in input field in Summarize by in Pivot
   When I click on "VT=SUM" downarrow
   And I click on "VT=COUNT"
   And I wait for "1000" milli seconds
   Then User mouse overs on "Filters" ADD button
   And I wait for "2000" milli seconds
   And I click on "VT=Department" in dropdown
   When I click on "VT=Select a field" downarrow
   And I wait for "2000" milli seconds
   And I click on "VT=Department" from dropdown
   #Then User clicks on "Department" option after mouse overing onto ADD button
 #  When I click on "VT=Select a field" downarrow
#   And I click on "VT=Department" in dropdown
   #Then User clicks on "Department" value in dropdown in Pivot accordion
   When I click on "VT=Select a operator" downarrow
   #Then User clicks on dropdown with "Select a operator" placeholder
   And I click on "VT=Is" in dropdown
   #Then User clicks on "Is" value in dropdown in Pivot accordion
   Then User clicks on dropdown with "Value" placeholder in Pivot accordion
   #write step to select value in dropdown 
   Then User clicks on Post Operations ADD button
   When I click on "VT=Select operation" downarrow
   And I click on "VT=Addition" in dropdown
   When I click on "VT=Select Field" downarrow
   And I click on "VT=Department" from dropdown
   #Then User clicks on dropdown with "Select operation" placeholder
  # Then User clicks on "Addition" value in dropdown in Pivot accordion
 #  Then User clicks on dropdown with "Select Field" placeholder
#   Then User clicks on "Department" value in dropdown in Pivot accordion
   Then User clicks on "ESCAPE" button on Keyboard
    Then User clicks on "Done" button in Form footer
    Then User clicks on "Pivot" accordion
    And I wait for "1000" milli seconds
    And I click on "VT=Data Manipulation"
    And User clicks on Add button in "Data Manipulation" accordion
    Then User clicks on "Data point" dropdown in Data Manipulation accordion
    Then User clicks on "Department" value in dropdown in Data Manipulation accordion
    Then User clicks on "Cumulative operation" dropdown in Data Manipulation accordion
    Then User clicks on "Sum" value in dropdown in Data Manipulation accordion
    Then User clicks on "OK" button
    #And I click on "VT=Data Manipulation"
    And I wait for "1000" milli seconds
    And I click on "VT=Tooltip Config"
    And I wait for "1000" milli seconds
    And User clicks on Add button in "Tooltip Config" accordion
    #And I enter "LABEL1=Label" as "Label2"
    #And I click on "VT=Select data point" downarrow
    #And I click on "VT=Department" in dropdown
    #And I click on "VT=Select Value Format" downarrow
    #And I click on "VT=String" in dropdown
    #And I click on "VT=OK" button
   # And I click on "VT=Tooltip Config"
    Then User enters "a" value in Label field
    Then User clicks on "Select value field" dropdown in Tooltip accordion
    Then User clicks on "Department" value in dropdown in Tooltip accordion
    Then User clicks on "Select value format" dropdown in Tooltip accordion
    Then User clicks on "String" value in dropdown in Tooltip accordion
    Then User clicks on "OK" button
    Then User clicks on "Tooltip Config" accordion
    And I wait for "1000" milli seconds
      And I click on "VT=Drill Down"
    #And I click on "NZPH=select dashboard" dropdown
    And User clicks on "Select dashboard" dropdown in Drill Down accordion
    And I click on "VT=TestingDashboard" in dropdown
    And I click on "NZPH=Select Filter On" dropdown
    And I click on "VT=Department" in dropdown
    And I click on "VT=Drill Down"
    And I wait for "1000" milli seconds
    #Then User clicks on "Drill Down" accordion
    #And User clicks on "Select dashboard" dropdown in Drill Down accordion
    #Then User clicks on "TestingDashboard" value in dropdown in Drill down accordion
    #And User clicks on "Select filter" dropdown in Drill Down accordion
    #Then User clicks on "Department" value in dropdown in Drill down accordion
    #Then User clicks on "Drill Down" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Filters" accordion
    And I wait for "1000" milli seconds
    And User clicks on Add button in "Filters" accordion2
    #When I enter "PH=label" as "label1"
    #When I enter "LABEL1=Choose form" as "db_piechart"
    #When I enter "LABEL1=Choose field" as "db_piechart"
    #And User clicks on "Advanced" tab
    #And I click on "VT=Apply User In filter"
    #And I click on "VT=Choose user field" downarrow
    #Then User clicks on "Department" value in dropdown in Filter accordion
    #And I click on "VT=Department" in dropdown
    #Then User clicks on "Done" button in Form footer
    #And I click on "VT=Done" button
    #And I click on "VT=Filters"
    Then User enters "label2" value in "Custom label (optional)" field
    And User clicks on "Choose Form" dropdown
    Then User enters in "Choose Form" Text field with value "db_piechart"
    #Then User selects "db_piechart" form
    And User clicks on "Choose Field" dropdown
    Then User enters in "Choose Field" Text field with value "Department"
    #And User clicks on "Advanced" tab
    #Then User clicks on "Apply User In filter" checkbox
    #And User clicks on "Choose User Field" dropdown
    #Then User clicks on "Department" value in dropdown in Filter accordion
    Then User clicks on "Done" button in Form footer
    Then User clicks on "Filters" accordion
		And I wait for "1000" milli seconds
    Then User clicks on "Serieses" accordion
    And User clicks on "Add" button in Serieses accordion
    And I enter "LABEL1=Series name" as "Series1"
    #And I click on "NZPH=Select data point" from "LABEL=Select argument field"
    #And I click on "VT=Department" in dropdown
    #And I click on "LABEL=Select value field" dropdown
    #And I click on "NZPH=Select data point" from "LABEL=Select value field"
    #And I wait for "2000" milli seconds
    #And I click on "VT=Department" in dropdown
    #And I click on "VT=Value Format" downarrow
    #And I click on "VT=String" in dropdown
    #And I click on "VT=Condional formatting"
    #Then I fill the details in Condional formatting 
   # |Apply on(Field)|Format if(Operator)|Value|Color  |
  #  |Department     |=									|IT		|#00D084|
 #   And I click on "VT=OK" button
#    And I click on "VT=Serieses"
    Then User clicks on "Select argument field" dropdown in Series accordion
    Then User selects "Department" field
    And User clicks on "Select value field" dropdown in Series accordion
    And I wait for "1000" milli seconds
    Then User selects "Department" field
    Then User clicks on "Select value Format" dropdown in Series accordion
    Then User selects "String" field
    And User clicks on "Condional formatting" accordion
    And User clicks on Add button in "Condional formatting" accordion
    Then User clicks on dropdown with "Select field" placeholder 
    And User selects "Department" field
    Then User clicks on dropdown with "Select operator" placeholder
    And User selects "=" value 
   # And User clicks on Value field 
    #Then User waits for "2000" milliseconds
    Then User enters "IT" in Value field
    Then User clicks on "Color" color picker in Serieses accordion
    And User selects "#0693E3" color
    Then User clicks on "OK" button
    Then User clicks on "Serieses" accordion
		And I wait for "1000" milli seconds
    And User clicks on "Legends" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Show legends" checkbox
    Then User clicks on "Horizontal alignment" dropdown in Legends
    And User selects "Center" value
    Then User clicks on "Vertical alignment" dropdown in Legends
    And User selects "Bottom" value
    And User clicks on "Legends" accordion
    And I wait for "1000" milli seconds
    #And I click on "VT=Advanced Settings"
    #And I wait for "2000" milli seconds
   # And I click on "VT=Select roles" downarrow
    #And I click on "VT=System Admin"
    #And I wait for "2000" milli seconds
    #Then User clicks on "ESCAPE" button on Keyboard
    #Then User enters "1" in "Sequence number" number box in accordion
    #And I enter "LABEL1=Sequence number" as "1"
    #Then User scrolls to bottom of page
    #Then User clicks on "PAGE_DOWN" button on Keyboard
    #And I wait for "2000" milli seconds
    #And I click on "VT=Hide widget from Android/iOS app"
    #And I click on "VT=Refresh Dashboard"
    #And I click on "VT=Disable data export"
    #And I click on "LABEL=Crosszapp Datasource" dropdown
    #And I click on "VT=End to End" in dropdown
    And User clicks on "Advanced Settings" accordion
    And I wait for "1000" milli seconds
    #Then User clicks on dropdown with "Select roles" placeholder
    And I click on "VT=Select roles" downarrow
    And User selects "System Admin" value
    Then User clicks on "ESCAPE" button on Keyboard
    Then User enters "1" in "Sequence number" number box in accordion
    Then User clicks on "Hide widget from Android/iOS app" checkbox
    Then User scrolls to bottom of page
    #Then User waits for "2000" milliseconds
    Then User clicks on "Refresh Dashboard" checkbox
    Then User clicks on "Disable data export" checkbox
    Then User clicks on dropdown with "Select Zapp" placeholder
    And User selects "End to End" value
    And I click on "VT=Save" button
	
		@line 
	Scenario: Validate Add and configure Line Chart Widget
	And I enter "PH=search zapp by title" as "End to End"
  And I click on "VT=End to End"
  And I wait for "1000" milli seconds
  And I click on "VT=TestDB123"
  And I wait for "1000" milli seconds
  And I click on "VT=Edit" button
  And I click on "VT=Add widget" button
	Then User clicks on "Line Chart" widget	
	And I wait for "2000" milli seconds
	And I enter "PH=Title" as "Line"
  When I enter "LABEL=Description" as "Desc"
  Then User clicks on "Highlight color" color picker
  And User selects "#FF6900" color
	And I click on "VT=Details"
	And I wait for "1000" milli seconds
	And I click on "VT=Data Points"
	And I click on "VT=New Form Framework"
	Then User clicks on "Add" button
	And I wait for "1000" milli seconds
	And User clicks on "Choose Form" dropdown
	And I wait for 1 Seconds
	And I click on "VT=db_piechart" 
	And User clicks on "Choose Field" dropdown
	#And I click on "VT=Department"
	Then User enters in "Choose Field" Text field with value "Department"
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
	And I click on "VT=Text Formatting"
	And I click on "VT=Add rule"
	And I click on "VT=Add condition"
	When I click on "VT=Choose column" downarrow
	#And I click on "VT=Department"
	When I click on "VT=Choose condition" downarrow
	And I click on "VT=Text in"
	#And I enter "PH=Value" dropdown value as "IT"
	When I enter "LABEL1=Value" as "IT"
	#And I click on "VT=Advanced"
	And User clicks on "Advanced" tab
	#When I click on "VT=Column type" downarrow
	#And I click on "LABEL=Choose Column Type" dropdown
	#And I click on "VT=Generic" from dropdown
	#And I enter "Column type" dropdown value as "Generic"
	When I click on "VT=Choose sorting operation" downarrow
	And I click on "VT=Ascending"
	Then User clicks on "Done" button in Form footer
	And I wait for "2000" milli seconds
	And I click on "VT=Data Preview" button 
	And I click on "VT=Data Points"
	And I wait for "1000" milli seconds
	And I click on "VT=Pivot"
	And I wait for "1000" milli seconds
	And I click on "VT=Configure" button
	#And I move to "VT=ADD"# moving but Based on text beside the button "ADD", it should move.
	Then User mouse overs on "Row grouping" ADD button 
	And I wait for "2000" milli seconds
	#And I click on "VT=Department" #Identifying element in the background
	Then User clicks on "Department" option after mouse overing onto ADD button
	And I wait for "1000" milli seconds
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
	Then User clicks on "Department" value in dropdown in Pivot accordion
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
	And I wait for "1000" milli seconds
	And I click on "VT=Customize Axis"
	And I click on "VT=Customize X-Axis"
	#When I enter "LABEL=Title" as "Department" 
	Then User enters "Department" in Title box in Customize Axis accordion
	When I click on "VT=Select Value Format" downarrow
	#And I click on "VT=String" # identifying in the backgroundDOM
	Then User clicks on "String" value in Customize Axis accordion 
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Customize Y-Axis"
	#When I enter "PH=Title" as "Count" # interacting with Background element
	Then User enters "Department Count" in Title box in Customize Axis accordion
	When I click on "VT=Select Value Format" downarrow
	Then User clicks on "Number" value in Customize Axis accordion
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Customize Axis"
	And I wait for "1000" milli seconds
	And I click on "VT=Tooltip Config"
	#And I click on "VT=Add" button #Identfying background ele
	And User clicks on Add button in "Tooltip Config" accordion
	When I enter "PH=Label" as "Depo"
	When I click on "VT=Select data point" downarrow
	#And I click on "VT=Department"
	Then User clicks on "Department" value in dropdown in Tooltip accordion
	When I click on "VT=Select Value Format" downarrow
	#And I click on "VT=String"
	Then User clicks on "String" value in dropdown in Tooltip accordion
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Tooltip Config"
	And I wait for "1000" milli seconds
	And I click on "VT=Drill Down"
	And I wait for "1000" milli seconds
	#When I click on "VT=Select dashboard" downarrow
	And User clicks on "Select dashboard" dropdown in Drill Down accordion
	#And I click on "VT=TestingDashboard"
	Then User clicks on "TestingDashboard" value in dropdown in Drill down accordion
	#When I click on "VT=Select filter" downarrow
	And User clicks on "Select filter" dropdown in Drill Down accordion
	#And I click on "VT=Department"
	Then User clicks on "Department" value in dropdown in Drill down accordion
	And I click on "VT=Delete" button
	Then User clicks on Delete button in popup
	And I click on "VT=Drill Down"
	And I wait for "1000" milli seconds
	And I click on "VT=Filters" from configuration
	And User clicks on Add button in "Filters" accordion
	When I click on "VT=Choose form" downarrow
	And I wait for "1000" milli seconds
	And I click on "VT=db_piechart"
	#When I click on "VT=Choose field" downarrow # working
	#And I click on "VT=Department"
	Then User enters in "Choose Field" Text field with value "Department"
	#And I click on "VT=Advanced" # Identifying Background ele
	And User clicks on "Advanced" tab
	And I click on "VT=Apply User In filter"
	When I click on "VT=Choose user field" downarrow
	#And I click on "VT=Department" # Identifying Background ele
	Then User clicks on "Department" value in dropdown in Filter accordion
	#And I click on "VT=Done" button # Identifying Background ele
	Then User clicks on "Done" button in Form footer
	And I click on "VT=Filters"	
	And I wait for "1000" milli seconds
	And I click on "VT=Serieses"
	And User clicks on Add button in "Serieses" accordion
	And I enter "PH=Name" as "Series Name"
	When I click on "VT=Select data point" downarrow
	#And I click on "VT=Department" # Identifying Background ele
	Then User selects "Department" field
	#When I click on "VT=Select data point" downarrow #2nd time also doing in the same dropdown because of same placegolder
	And User clicks on "Select value field" dropdown in Series accordion
	And I wait for "1000" milli seconds
	Then User selects "Department" field
	When I click on "VT=Value Format" downarrow
	#And I click on "VT=String" # Identifying Background ele
	Then User selects "String" field
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Serieses"
	And I wait for "1000" milli seconds
	And I click on "VT=Legends"
	And I click on "VT=Show legends"
	When I click on "VT=Horizontal alignment" downarrow
	And I click on "VT=Center"
	When I click on "VT=Vertical alignment" downarrow
	And I click on "VT=Top"
	And I click on "VT=Legends"
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
	#And I click on "VT=Save" button
	And I wait for "1000" milli seconds
	And User clicks on "Save" button2

  @piechart
  Scenario: Add Pie Chart widget and configure
  And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
    Then User clicks on "Pie Chart" widget
    Then User waits for "2000" milliseconds
    Then User clears Title field in Widget
    Then User enters "Pie Chart Title" as Pie Chart title
    And User enters "Pie Chart Description" as Description
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
    And User clicks on "Details" accordion
    And I wait for "1000" milli seconds
    And User clicks on "Data Points" accordion
    When I enter "LABEL=Limit data rows" as "1"
    And I wait for "1000" milli seconds
    #And I click on "VT=Transpose"
    #And I click on "VT=Transpose" 
    Then User clicks on "Transpose" checkbox2
    Then User clicks on "Transpose" checkbox2
    Then User clicks on "New Form Framework" checkbox
    Then User clicks on "Add" button
    And I wait for "1000" milli seconds
    And User clicks on "Choose Form" dropdown
    Then User enters in "Choose Form" Text field with value "db_piechart"
    #Then User selects "db_piechart" form
    And User clicks on "Choose Field" dropdown
    Then User enters in "Choose Field" Text field with value "Department"
    Then User waits for "2000" milliseconds
    And User clicks on "Filter" tab
    Then User clicks on "Add filter" button
    Then User clicks on dropdown with "Choose condition" placeholder in Datapoints accordion
    Then User clicks on "Text in" value
    Then User clicks on dropdown with "Value" placeholder in Datapoints accordion
    Then User enters "IT" value in textbox in dropdown with "Value" placeholder
    #And User clicks on "Text Formatting" tab
    #Then User clicks on "Add rule" button
    #Then User clicks on "Add condition" button
    #Then User clicks on dropdown with "Choose column" placeholder in Datapoints accordion
    #Then User clicks on "Department" value
    #Then User clicks on dropdown with "Choose condition" placeholder
    #Then User clicks on "Text in" value
    #Then User clicks on dropdown with "Value" placeholder
    #Then User clicks on "" value
    And User clicks on "Advanced" tab
    And User clicks on "Choose Column Type" dropdown
    #Then User clicks on "Generic" value
    #And I click on "VT=Generic"
    Then User clicks on "Generic" in Choose Column Type dropdown in Advanced Tab in DataPoints accordion
    And User clicks on "Sort Result (Optional)" dropdown
    #Then User clicks on "Ascending" value
    And I click on "VT=Ascending"
    And User clicks on "Formula" radio 
    And User clicks on "Formula" tab
    Then User clicks on "Add Operator" button
    And User clicks on "Choose operation" dropdown
    Then User clicks on "Initialise" value in Formula tab
   And User clicks on "Formula" radio
   And User clicks on "Formula" tab
   Then User clicks on "Add Operator" button
   And User clicks on "Choose operation" dropdown
   Then User clicks on "Initialise" value in Choose operation dropdown in Formula tab
   And User clicks on "Parameters" dropdown
   When I click on "VT=Type here..." downarrow
   #Then User clicks on "Department" value in Choose operation dropdown in Formula tab
    Then User clicks on "Done" button in Form footer
    And I wait for "1000" milli seconds
    Then User clicks on "Data Preview" button
#    And User clicks on "Data Points" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Pivot" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Configure" button
    And I wait for "1000" milli seconds
    Then User mouse overs on "Row grouping" ADD button 
    Then User waits for "2000" milliseconds
    Then User clicks on "Department" option after mouse overing onto ADD button
    Then User mouse overs on "Summarize by" ADD button
    Then User waits for "2000" milliseconds
   Then User clicks on "Department" option after mouse overing onto ADD button
   Then User double clicks on field in Summarize by in Pivot
   Then User enters "Department Count" in input field in Summarize by in Pivot
    And User clicks on dropdown in Summarize by in Pivot
   Then User clicks on "COUNT" value in the dropdown in Summarize by in Pivot
   Then User mouse overs on "Filters" ADD button
   Then User clicks on "Department" option after mouse overing onto ADD button
   Then User clicks on dropdown with "Select a field" placeholder
   And I wait for "1000" milli seconds
   Then User clicks on "Department" value in dropdown in Pivot accordion
   Then User clicks on dropdown with "Select a operator" placeholder
   Then User clicks on "Is" value in dropdown in Pivot accordion
   Then User clicks on dropdown with "Value" placeholder in Pivot accordion
   #write step to select value in dropdown 
   Then User clicks on Post Operations ADD button
   Then User clicks on dropdown with "Select operation" placeholder
   Then User clicks on "Addition" value in dropdown in Pivot accordion
   Then User clicks on dropdown with "Select Field" placeholder
   Then User clicks on "Department" value in dropdown in Pivot accordion
   Then User clicks on "ESCAPE" button on Keyboard
    Then User clicks on "Done" button in Form footer
    Then User clicks on "Pivot" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Data Manipulation" accordion
    And User clicks on Add button in "Data Manipulation" accordion
    Then User clicks on "Data point" dropdown in Data Manipulation accordion
    Then User clicks on "Department" value in dropdown in Data Manipulation accordion
    Then User clicks on "Cumulative operation" dropdown in Data Manipulation accordion
    Then User clicks on "Sum" value in dropdown in Data Manipulation accordion
    Then User clicks on "OK" button
#    Then User clicks on "Data Manipulation" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Tooltip Config" accordion
    And I wait for "1000" milli seconds
    And User clicks on Add button in Tooltip Config accordion
    #Then User enters "a" value in Label field
    Then User enters "a" value in "Label" field
    Then User clicks on "Select value field" dropdown in Tooltip accordion
    Then User clicks on "Department" value in dropdown in Tooltip accordion
    Then User clicks on "Select value format" dropdown in Tooltip accordion
    Then User clicks on "String" value in dropdown in Tooltip accordion
    Then User clicks on "OK" button
    Then User clicks on "Tooltip Config" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Drill Down" accordion
    And User clicks on "Select dashboard" dropdown in Drill Down accordion
    Then User clicks on "TestingDashboard" value in dropdown in Drill down accordion
    And User clicks on "Select filter" dropdown in Drill Down accordion
    Then User clicks on "Department" value in dropdown in Drill down accordion
    Then User clicks on "Drill Down" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Filters" accordion
    And User clicks on Add button in "Filters" accordion
    Then User enters "label2" value in "Custom label (optional)" field
    And User clicks on "Choose Form" dropdown
    And I wait for "1000" milli seconds
    Then User enters in "Choose Form" Text field with value "db_piechart"
    #Then User selects "db_piechart" form
    And User clicks on "Choose Field" dropdown
    Then User enters in "Choose Field" Text field with value "Department"
    And User clicks on "Advanced" tab
    Then User clicks on "Apply User In filter" checkbox
    And User clicks on "Choose User Field" dropdown
    Then User clicks on "Department" value in dropdown in Filter accordion
    Then User clicks on "Done" button in Form footer
    Then User clicks on "Filters" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Serieses" accordion
    And User clicks on "Add" button in Serieses accordion
    And I enter "PH=Name" as "Serie name"
    Then User clicks on "Select argument field" dropdown in Series accordion
    Then User selects "Department" field
    And User clicks on "Select value field" dropdown in Series accordion
    And I wait for "1000" milli seconds
    Then User selects "Department" field
    Then User clicks on "Select value Format" dropdown in Series accordion
    Then User selects "String" field
    And User clicks on "Condional formatting" accordion
    And User clicks on Add button in "Condional formatting" accordion
    Then User clicks on dropdown with "Select field" placeholder 
    And User selects "Department" field
    Then User clicks on dropdown with "Select operator" placeholder
    And User selects "=" value 
   # And User clicks on Value field 
    #Then User waits for "2000" milliseconds
    Then User enters "IT" in Value field
    Then User clicks on "Color" color picker in Serieses accordion
    And User selects "#0693E3" color
    Then User clicks on "OK" button
    Then User clicks on "Serieses" accordion
    And I wait for "1000" milli seconds
    And User clicks on "Legends" accordion
    Then User clicks on "Show legends" checkbox
    Then User clicks on "Horizontal alignment" dropdown in Legends
    And User selects "Center" value
    Then User waits for "2000" milliseconds
    Then User clicks on "Vertical alignment" dropdown in Legends
    And User selects "Top" value
    And User clicks on "Legends" accordion
    And I wait for "1000" milli seconds
    And User clicks on "Advanced Settings" accordion
    And I wait for "1000" milli seconds
    Then User clicks on dropdown with "Select roles" placeholder
    And User selects "ALLACCESS" value
    Then User clicks on "ESCAPE" button on Keyboard
    Then User enters "1" in "Sequence number" number box in accordion
    Then User clicks on "Hide widget from Android/iOS app" checkbox
    Then User scrolls to bottom of page
    #Then User waits for "2000" milliseconds
    And I wait for "1000" milli seconds
    Then User clicks on "Refresh Dashboard" checkbox
    Then User clicks on "Disable data export" checkbox
    Then User clicks on dropdown with "Select Zapp" placeholder
    And User selects "End to End" value
    And I click on "VT=Save" button
    
	@kpi @generic
	Scenario: Validate Add and configure KPI Widget
	And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
	Then User clicks on "KPI" widget	
	And I wait for "2000" milli seconds
	Then User clears Title field in Widget
	#And I enter "PH=Title" as "Generic Title"
	Then User enters "Kpi Title" as Pie Chart title
  #When I enter "LABEL=Description" as "Desc"
  And User enters "Kpi Description" as Description
  #And I click on "VT=Highlight color" button
  Then User clicks on "Highlight color" color picker
  And User selects "#FF6900" color
	And I click on "VT=Details"
	And I wait for "1000" milli seconds
	And I click on "VT=Data Points"
	And I click on "VT=New Form Framework"
	#And I click on "VT=Add" button
	Then User clicks on "Add" button
	#And I click on "VT=Choose Form"# This is clicking on Text
	And User clicks on "Choose Form" dropdown
	And I wait for 1 Seconds
	And I click on "VT=db_piechart" 
	And User clicks on "Choose Field" dropdown
	#And I click on "VT=Department"
	Then User enters in "Choose Field" Text field with value "Department"
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
	And I click on "VT=Data Points"
	And I wait for "1000" milli seconds
	And I click on "VT=Pivot"
	And I click on "VT=Configure" button
	#And I move to "VT=ADD"# moving but Based on text beside the button "ADD", it should move.
	And I wait for "1000" milli seconds
	Then User mouse overs on "Row grouping" ADD button 
	And I wait for "2000" milli seconds
	#And I click on "VT=Department" #Identifying element in the background
	Then User clicks on "Department" option after mouse overing onto ADD button
	And I wait for "1000" milli seconds
	Then User mouse overs on "Summarize by" ADD button
	Then User clicks on "Department" option after mouse overing onto ADD button
	Then User double clicks on field in Summarize by in Pivot
   Then User enters "Department Count" in input field in Summarize by in Pivot
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
	And I wait for "1000" milli seconds
	And I click on "VT=Serieses"
	And User clicks on Add button in "Serieses" accordion
	And I enter "PH=Name" as "Series Name"
	When I click on "VT=Select data point" downarrow
	#And I click on "VT=Department" # Identifying Background ele
	Then User selects "Department" field
	#When I click on "VT=Select data point" downarrow #2nd time also doing in the same dropdown because of same placegolder
	And User clicks on "Select value field" dropdown in Series accordion
	And I wait for "1000" milli seconds
	Then User selects "Department Count" field
	When I click on "VT=Value Format" downarrow
	#And I click on "VT=String" # Identifying Background ele
	Then User selects "String" field
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Serieses"
	And I wait for "1000" milli seconds
	And I click on "VT=Legends"
	And I click on "VT=Show legends"
	When I click on "VT=Horizontal alignment" downarrow
	And I click on "VT=Center"
	When I click on "VT=Vertical alignment" downarrow
	And I click on "VT=Top"
	And I click on "VT=Legends"
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
	
    @DashboardWidget	@gantt
	Scenario: Validate Add and configure KPI Widget
	And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
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
	And User clicks on "Choose Form" dropdown
	And I wait for 1 Seconds
	And I click on "VT=db_piechart" 
	And User clicks on "Choose Field" dropdown
	#And I click on "VT=Department"
	Then User enters in "Choose Field" Text field with value "Department"
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

	@calendar
	Scenario: Add Calendar widget and configure
	And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
    Then User clicks on "Calendar" widget
    And I wait for "2000" milli seconds
    And I enter "PH=Title" as "Calendar Title"
    #And I enter "LABEL=Description" as "Doughnut Chart Title"
    And I2 enter "LABEL=Description" as "Calendar Description"
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
    And I click on "VT=Details"
    And I wait for "1000" milli seconds
    And I click on "VT=Data Source"
    And I wait for "2000" milli seconds
    Then User enters "0" in "Skip rows" number box in accordion
    Then User enters "1" in "Limit rows" number box in accordion
    Then User clicks on "Add" button
    And I click on "VT=Select a Form" downarrow
    And I click on "VT=db_piechart"
#    And I click on "LABEL=Title" dropdown
And User clicks on "Title" dropdown in Calendar
    And I click on "VT=Department" in dropdown
    #And I click on "LABEL=Description" dropdown
    And I wait for "1000" milli seconds
    And User clicks on "Description" dropdown in Calendar
    And I click on "VT=Department" in dropdown
    #And I click on "LABEL=Start Date" dropdown
    And User clicks on "Start Date" dropdown in Calendar
    And I wait for "1000" milli seconds
    And I click on "VT=Department" in dropdown
    #And I click on "LABEL=End Date" dropdown
    And User clicks on "End Date" dropdown in Calendar
    And I wait for "1000" milli seconds
    And I click on "VT=Department" in dropdown
    #And I click on "LABEL=Start Time" dropdown
    And User clicks on "Start Time" dropdown in Calendar
    And I wait for "1000" milli seconds
    And I click on "VT=Department" in dropdown
    #And I click on "LABEL=End Time" dropdown
    And User clicks on "End Time" dropdown in Calendar
    And I wait for "1000" milli seconds
    And I click on "VT=Department" in dropdown
    #And I click on "LABEL=Invitee" dropdown
    And User clicks on "Invitee" dropdown in Calendar
    And I wait for "1000" milli seconds
    And I click on "VT=Department" in dropdown
    #And I click on "LABEL=Cancel" dropdown
    And User clicks on "Cancel" dropdown in Calendar
    And I wait for "1000" milli seconds
    And I click on "VT=Department" in dropdown
    #And I click on "LABEL=Reason of Cancellation" dropdown
    And User clicks on "Reason of Cancellation" dropdown in Calendar
    And I wait for "1000" milli seconds
    And I click on "VT=Department" in dropdown
    #And I click on "LABEL=Formatting" dropdown
    And User clicks on "Formatting" dropdown in Calendar
    And I wait for "1000" milli seconds
    And I click on "VT=Department" in dropdown
   Then User clicks on "Done" button in Form footer
   And I wait for "1000" milli seconds
    And I click on "VT=Data Points"
    And I enter "LABEL=Limit data rows" as "1"
    And I click on "VT=Transpose"
    And I click on "VT=Transpose"
    And I click on "VT=New Form Framework"    
    #Then User clicks on "Add" button
    And User clicks on Add button in "Data Points" accordion
    #And I click on "LABEL=Choose Form" dropdown
    #Then User selects "db_piechart" form
    #Then User enters in "Choose Form" Text field with value "db_piechart"
    When I enter "LABEL1=Choose form" as "db_piechart"
    #And User clicks on "Choose Field" dropdown
    And I click on "LABEL=Choose Field" dropdown
    Then User enters in "Choose Field" Text field with value "Department"
    #When I enter "LABEL=Choose Field" as "Department"
    And I wait for "2000" milli seconds
    And User clicks on "Filter" tab
    Then User clicks on "Add filter" button
    #And I click on "VT=Add filter" button
    #Then User clicks on dropdown with "Choose condition" placeholder in Datapoints accordion
    When I click on "VT=Choose condition" downarrow
    #Then User clicks on "Text in" value
    And I click on "VT=Text in"
    When I click on "VT=Value" downarrow
    #When I enter "PH=Value" as "IT"
    Then User enters "IT" value in textbox in dropdown with "Value" placeholder
    And I click on "VT=Text Formatting"
    #And I click on "VT=Add rule" button 
    Then User clicks on "Add rule" button
    Then User clicks on "Add condition" button
    #And I click on "VTEQ=Add condition" button
    When I click on "VT=Choose column" downarrow
    #Then User clicks on dropdown with "Choose column" placeholder in Datapoints accordion
    #And I click on "VT=Department"
    #Then User clicks on "Department" value
    When I click on "VT=Choose condition" downarrow
    #Then User clicks on dropdown with "Choose condition" placeholder
		And I click on "VT=Text in"    
		#Then User clicks on "Text in" value
    #When I enter "PH=Value" as "IT"
    Then User enters "IT" value in textbox in dropdown with "Value" placeholder
    #And I click on "VT=Advanced"
    And User clicks on "Advanced" tab
    And I click on "LABEL=Choose Column Type" dropdown
    #And I click on "VT=Generic"
    And User clicks on "Generic" in Choose Column Type dropdown in Datapoints
    When I click on "VT=Choose sorting operation" downarrow
   # Then User clicks on dropdown with "Choose sorting operation" placeholder
   And I click on "VT=Ascending"
    #Then User clicks on "Ascending" value
    And I click on "VT=Formula"
    And User clicks on "Formula" tab
    #And I click on "VT=Add operator" button
    Then User clicks on "Add Operator" button
    When I click on "VT=Choose operator type" downarrow
   # And User clicks on "Choose operation" dropdown
   And I click on "VT=Initialise"
    #Then User clicks on "Initialise" value in Formula tab
    When I click on "VT=Type here..." downarrow
    Then User clicks on "Done" button in Form footer
    And I wait for "1000" milli seconds
    Then User clicks on Data Preview button in Datapoints in Calendar
    And I wait for "1000" milli seconds
   # And User clicks on "Data Points" accordion    
    And I wait for "1000" milli seconds
    And I click on "VT=Pivot"
    And I wait for "1000" milli seconds
    And I click on "VT=Configure" button
    #And I move to "VT=Row grouping"
    Then User mouse overs on "Row grouping" ADD button 
    Then User waits for "2000" milliseconds
    #And I click on "VT=Department"
    Then User clicks on "Department" option after mouse overing onto ADD button
    Then User mouse overs on "Summarize by" ADD button
    And I wait for "2000" milli seconds
   Then User clicks on "Department" option after mouse overing onto ADD button
   Then User double clicks on field in Summarize by in Pivot
   Then User enters "Department Count" in input field in Summarize by in Pivot
   When I click on "VT=SUM" downarrow
   And I click on "VT=COUNT"
   Then User mouse overs on "Filters" ADD button
   Then User clicks on "Department" option after mouse overing onto ADD button
   When I click on "VT=Select a field" downarrow
   And I wait for "2000" milli seconds
   And I click on "VT=Department" in dropdown
   #Then User clicks on "Department" value in dropdown in Pivot accordion
   When I click on "VT=Select a operator" downarrow
   #Then User clicks on dropdown with "Select a operator" placeholder
   And I click on "VT=Is" in dropdown   
   #Then User clicks on "Is" value in dropdown in Pivot accordion
   Then User clicks on dropdown with "Value" placeholder in Pivot accordion
   #write step to select value in dropdown 
   Then User clicks on Post Operations ADD button
   Then User clicks on dropdown with "Select operation" placeholder
   Then User clicks on "Addition" value in dropdown in Pivot accordion
   Then User clicks on dropdown with "Select Field" placeholder
   Then User clicks on "Department" value in dropdown in Pivot accordion
   Then User clicks on "ESCAPE" button on Keyboard
    Then User clicks on "Done" button in Form footer
    Then User clicks on "Pivot" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Data Manipulation" accordion
    And User clicks on Add button in "Data Manipulation" accordion
    Then User clicks on "Data point" dropdown in Data Manipulation accordion
    Then User clicks on "Department" value in dropdown in Data Manipulation accordion
    Then User clicks on "Cumulative operation" dropdown in Data Manipulation accordion
    Then User clicks on "Sum" value in dropdown in Data Manipulation accordion
    Then User clicks on "OK" button
    Then User clicks on "Data Manipulation" accordion
    And I wait for "1000" milli seconds
    And User clicks on "Advanced Settings" accordion
    Then User clicks on dropdown with "Select roles" placeholder
    And User selects "ALLACCESS" value
    Then User clicks on "ESCAPE" button on Keyboard
    Then User enters "1" in "Sequence number" number box in accordion
    Then User clicks on "Hide widget from Android/iOS app" checkbox
    Then User scrolls to bottom of page
    #Then User waits for "2000" milliseconds
    Then User clicks on "Refresh Dashboard" checkbox
    Then User clicks on "Disable data export" checkbox
    Then User clicks on dropdown with "Select Zapp" placeholder
    And User selects "End to End" value    
    And I click on "VT=Save" button

    @doughnutchartScenario
    Scenario Outline: Add Doughnut Chart widget and configure-Scenario
    And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
    #And I click on "VT=Doughnut Chart"
    Then User clicks on "Doughnut Chart" widget 
    And I wait for "2000" milli seconds
    And I enter "PH=Title" as "Dc1"
    And I enter "LABEL2=Description" as "DC1 Description"
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
    And I click on "VT=Details"
    And I wait for "1000" milli seconds
    And I click on "VT=Data Points"
    And I enter "LABEL=Limit data rows" as "1"
    And I click on "VT=Transpose"
    And I click on "VT=Transpose"
    And I click on "VT=New Form Framework"    
    And User clicks on Add button in "Data Points" accordion
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "Department"
    And I wait for "2000" milli seconds
    Then User clicks on "Done" button in Form footer
    And I wait for "2000" milli seconds
    And User clicks on Add button in "Data Points" accordion
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "S.No"
    #Then User enters in "Choose Field" Text field with value "S.No"
    Then User clicks on "Done" button in Form footer
    And I wait for "2000" milli seconds
    Then User clicks on "Data Preview" button
    And I wait for "2000" milli seconds
    Then User verifies data is displayed or not
    And I click on "VT=Data Points"   
    And I wait for "1000" milli seconds
    And I click on "VT=Pivot"[3]
    And I wait for "1000" milli seconds
    And I click on "VT=Configure" button
    And I wait for "2000" milli seconds
    Then User mouse overs on "Row grouping" ADD button 
    Then User waits for "1000" milliseconds
    Then User clicks on "Department" option after mouse overing onto ADD button
    And I wait for "2000" milli seconds
    Then User mouse overs on "Summarize by" ADD button
   Then User clicks on "S.No" option after mouse overing onto ADD button
   #Then User double clicks on field in Summarize by in Pivot
   #Then User enters "Department Count" in input field in Summarize by in Pivot
   When I click on "VT=SUM" downarrow	
   And I click on "VT=COUNT"
    Then User clicks on "Done" button in Form footer
    And I click on "VT=Pivot"[3]
    And I wait for "1000" milli seconds
    And I click on "VT=Tooltip Config"
    And User clicks on Add button in "Tooltip Config" accordion
    Then User enters "Department" value in Label field
    Then User clicks on "Select value field" dropdown in Tooltip accordion
    Then User clicks on "Department" value in dropdown in Tooltip accordion
    Then User clicks on "Select value format" dropdown in Tooltip accordion
    Then User clicks on "String" value in dropdown in Tooltip accordion
    Then User clicks on "OK" button
    And User clicks on Add button in "Tooltip Config" accordion
    Then User enters "Total" value in Label field
    Then User clicks on "Select value field" dropdown in Tooltip accordion
    Then User clicks on "S.No" value in dropdown in Tooltip accordion
    Then User clicks on "Select value format" dropdown in Tooltip accordion
    Then User clicks on "Number" value in dropdown in Tooltip accordion
    Then User clicks on "OK" button
    And I click on "VT=Tooltip Config"
    And I wait for "1000" milli seconds
    And I click on "VT=Drill Down"
    #And User clicks on "Select dashboard" dropdown in Drill Down accordion
    #And I click on "NZPH=select dashboard" dropdown
    And User clicks on "Select dashboard" dropdown downarrow
    Then User clicks on "TestingDashboard" value in dropdown in Drill down accordion
    And User clicks on "Select filter" dropdown in Drill Down accordion
    Then User clicks on "Department" value in dropdown in Drill down accordion
    And I click on "VT=Drill Down"
    And I wait for "1000" milli seconds
    And I click on "VT=Serieses"
    And User clicks on "Add" button in Serieses accordion
    And I enter "PH=Name" as "Series_1"
    Then User clicks on "Select argument field" dropdown in Series accordion
    Then User selects "Department" field
    And User clicks on "Select value field" dropdown in Series accordion
    #Then User selects "S.No" field
    And I wait for "2000" milli seconds
    And I click on "VT=S.No" in dropdown
    Then User clicks on "Select value Format" dropdown in Series accordion
    Then User selects "Number" field
    And User clicks on "Condional formatting" accordion
    Then I fill the details in Condional formatting 
    |Apply on(Field)|Format if(Operator)|Value|Color  |
    |Department     |=									|IT		|#00D084|
    |Department			|=									|HR		|#8ED1FC|
    Then User clicks on "OK" button
    And I click on "VT=Serieses"
    And I wait for "1000" milli seconds
    And I click on "VT=Legends"
    Then User clicks on "Show labels" checkbox
    #And I click on "VT=Show labels"
    Then User clicks on "Show legends" checkbox
    Then User clicks on "Horizontal alignment" dropdown in Legends
    And User selects "Center" value
    Then User waits for "2000" milliseconds
    Then User clicks on "Vertical alignment" dropdown in Legends
    And User selects "Top" value
    And I click on "VT=Legends"
    And I wait for "1000" milli seconds
    And I click on "VT=Advanced Settings"
    #Then User clicks on dropdown with "Select roles" placeholder
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
    And I click on "VT=Done" button
    Then User refreshes the page
    And I wait for "5000" milli seconds
    Then User verifies title "<widgetTitle>" of Doughnut chart widget
    Then User verifies description of Doughnut chart widget "<widgetTitle>" with "<widgetDescription>"
    Then User verifies the display of Data Export option in Doughnut widget by title "<widgetTitle>"
    Then User takes doughunut widget screenshot by "<widgetTitle>"
    Examples:
     |widgetTitle|widgetDescription |
     |Dc1				 |DC1 Description   |
    
	@piechartScenario
  Scenario Outline: Add Pie Chart widget and configure
  And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
    Then User clicks on "Pie Chart" widget
    Then User waits for "2000" milliseconds
    Then User clears Title field in Widget
    Then User enters "PC1" as Pie Chart title
    And User enters "PC1 Description" as Description
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
    And User clicks on "Details" accordion
    And I wait for "2000" milli seconds
    And I click on "VT=Data Points" 
    When I enter "LABEL1=Limit data rows" as "1"
    Then User clicks on "Transpose" checkbox
    Then User clicks on "Transpose" checkbox
    Then User clicks on "New Form Framework" checkbox
    Then User clicks on "Add" button
    And User clicks on "Choose Form" dropdown
    Then User enters in "Choose Form" Text field with value "db_piechart"
    #Then User selects "db_piechart" form
    And User clicks on "Choose Field" dropdown
    Then User enters in "Choose Field" Text field with value "Department"
    Then User waits for "2000" milliseconds
    Then User clicks on "Done" button in Form footer
    And I wait for "2000" milli seconds
    Then User clicks on "Data Preview" button
    And User clicks on "Data Points" accordion
    And I wait for "1000" milli seconds
    And I click on "VT=Pivot" 
    And I wait for "1000" milli seconds
    Then User clicks on "Configure" button
    And I wait for "2000" milli seconds
    Then User mouse overs on "Row grouping" ADD button 
    Then User waits for "2000" milliseconds
    Then User clicks on "Department" option after mouse overing onto ADD button
    Then User mouse overs on "Summarize by" ADD button
    Then User waits for "2000" milliseconds
   Then User clicks on "Department" option after mouse overing onto ADD button
   Then User double clicks on field in Summarize by in Pivot
   Then User enters "Department Count" in input field in Summarize by in Pivot
    And User clicks on dropdown in Summarize by in Pivot
   Then User clicks on "COUNT" value in the dropdown in Summarize by in Pivot
    Then User clicks on "Done" button in Form footer
    Then User clicks on "Pivot" accordion
    And I wait for "1000" milli seconds
    Then User clicks on "Tooltip Config" accordion
    And User clicks on Add button in "Tooltip Config" accordion
    #Then User enters "a" value in Label field
    Then User enters "Department" value in "Label" field
    Then User clicks on "Select value field" dropdown in Tooltip accordion
    Then User clicks on "Department" value in dropdown in Tooltip accordion
    Then User clicks on "Select value format" dropdown in Tooltip accordion
    Then User clicks on "String" value in dropdown in Tooltip accordion
    Then User clicks on "OK" button
    And User clicks on Add button in "Tooltip Config" accordion
    Then User enters "Total" value in "Label" field
    Then User clicks on "Select value field" dropdown in Tooltip accordion
    Then User clicks on "Department Count" value in dropdown in Tooltip accordion
    Then User clicks on "Select value format" dropdown in Tooltip accordion
    Then User clicks on "Number" value in dropdown in Tooltip accordion
    Then User clicks on "OK" button
    Then User clicks on "Tooltip Config" accordion
    And I wait for "1000" milli seconds
    And I click on "VT=Drill Down" 
    And User clicks on "Select dashboard" dropdown in Drill Down accordion
    Then User clicks on "TestingDashboard" value in dropdown in Drill down accordion
    And User clicks on "Select filter" dropdown in Drill Down accordion
    Then User clicks on "Department" value in dropdown in Drill down accordion
    And I click on "VT=Drill Down"
   And I wait for "1000" milli seconds
    And I click on "VT=Serieses"
    And User clicks on "Add" button in Serieses accordion
    And I enter "PH=Name" as "Series_1"
    Then User clicks on "Select argument field" dropdown in Series accordion
    Then User selects "Department" field
    And User clicks on "Select value field" dropdown in Series accordion
    And I wait for "1000" milli seconds
    And I click on "VT=Department Count" in dropdown
    Then User clicks on "Select value Format" dropdown in Series accordion
    Then User selects "Number" field
    And User clicks on "Condional formatting" accordion
    Then I fill the details in Condional formatting 
    |Apply on(Field)|Format if(Operator)|Value|Color  |
    |Department     |=									|IT		|#00D084|
    |Department			|=									|HR		|#8ED1FC|
    #And User clicks on Add button in "Condional formatting" accordion
    #Then User clicks on dropdown with "Select field" placeholder 
    #And User selects "Department" field
    #Then User clicks on dropdown with "Select operator" placeholder
    #And User selects "=" value 
   # And User clicks on Value field 
    #Then User waits for "2000" milliseconds
    #Then User enters "IT" in Value field
    #Then User clicks on "Color" color picker in Serieses accordion
    #And User selects "#EB144C" color
     #And User clicks on Add button in "Condional formatting" accordion
    #Then User clicks on dropdown with "Select field" placeholder 
    #And User selects "Department" field
    #Then User clicks on dropdown with "Select operator" placeholder
    #And User selects "=" value 
    #Then User enters "HR" in Value field
    #Then User clicks on "Color" color picker in Serieses accordion
    #And User selects "#F78DA7" color
    #And I wait for "2000" milli seconds
    Then User clicks on "OK" button
    Then User clicks on "Serieses" accordion
    And I wait for "1000" milli seconds
    And User clicks on "Legends" accordion
    Then User clicks on "Show labels" checkbox
    Then User clicks on "Show legends" checkbox
    Then User clicks on "Horizontal alignment" dropdown in Legends
    And User selects "Left" value
    Then User waits for "2000" milliseconds
    Then User clicks on "Vertical alignment" dropdown in Legends
    And User selects "Bottom" value
    And User clicks on "Legends" accordion
    And I wait for "1000" milli seconds
    And I click on "VT=Advanced Settings" 
    And I wait for "1000" milli seconds
    Then User clicks on dropdown with "Select roles" placeholder
    And User selects "ALLACCESS" value
    Then User clicks on "ESCAPE" button on Keyboard
    Then User enters "1" in "Sequence number" number box in accordion
    Then User clicks on "Hide widget from Android/iOS app" checkbox
    Then User scrolls to bottom of page
    And I wait for "2000" milli seconds
    Then User clicks on "Refresh Dashboard" checkbox
    Then User clicks on "Disable data export" checkbox
    Then User clicks on dropdown with "Select Zapp" placeholder
    And User selects "End to End" value
    And I wait for "1000" milli seconds
    And I click on "VT=Save" button
    And I click on "VT=Done" button
    Then User refreshes the page
	And I wait for "5000" milli seconds
	Then User verifies title "<widgetTitle>" of Pie chart widget
    Then User verifies description of Pie chart widget "<widgetTitle>" with "<widgetDescription>"
    Then User verifies the display of Data Export option in Pie chart widget by title "<widgetTitle>"
	Then User takes Pie chart widget screenshot by "<widgetTitle>"
	Examples:
    |widgetTitle|widgetDescription|
    |PC1				|PC1 Description |
    #And I wait for "2000" milli seconds
    #Then User clicks on "setting" type button by "PC1" widget name
    #Then User clicks on "Make a copy" button
    #And User clicks on "Select destination dashboard" dropdown in Copy widget
    #And I click on "VT=TestingDashboard"
    #And User clicks on "Select widget type" dropdown in Copy widget
    #And I click on "VT=Pie Chart"
    #And I click on "VT=OK" button
    
    @lineScenario
	Scenario Outline: Validate Add and configure Line Chart Widget
	And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
	Then User clicks on "Line Chart" widget
	And I wait for "2000" milli seconds
	Then User clears Title field in Widget
	#And I enter "PH=Title" as "Generic Title"
	Then User enters "Line1" as Pie Chart title
  #When I enter "LABEL=Description" as "Desc"
  And User enters "Line1 Description" as Description
  #And I click on "VT=Highlight color" button
  Then User clicks on "Highlight color" color picker
  And User selects "#FF6900" color
	And I click on "VT=Details"
	And I wait for "1000" milli seconds
	And I click on "VT=Data Points"
	When I enter "LABEL=Limit data rows" as "1"
	And I click on "VT=Transpose"
  And I click on "VT=Transpose"
	And I click on "VT=New Form Framework"
	#And I click on "VT=Add" button
	Then User clicks on "Add" button
	#And I click on "VT=Choose Form"# This is clicking on Text
#	And User clicks on "Choose Form" dropdown
#	And I click on "VT=db_piechart"
And I enter "LABEL1=Choose Form" as "db_piechart" 
	And User clicks on "Choose Field" dropdown
	#And I click on "VT=Department"
	Then User enters in "Choose Field" Text field with value "Department"
	Then User clicks on "Done" button in Form footer
	And I wait for "2000" milli seconds
	#And I click on "VT=Data Preview" button
	Then User clicks on "Data Preview" button
	And I click on "VT=Data Points"
	And I wait for "1000" milli seconds
	And I click on "VT=Pivot"
	And I wait for "1000" milli seconds
	And I click on "VT=Configure" button
	#And I move to "VT=ADD"# moving but Based on text beside the button "ADD", it should move.
	And I wait for "2000" milli seconds
	Then User mouse overs on "Row grouping" ADD button 
	And I wait for "2000" milli seconds
	#And I click on "VT=Department" #Identifying element in the background
	Then User clicks on "Department" option after mouse overing onto ADD button
	And I wait for "2000" milli seconds
	Then User mouse overs on "Summarize by" ADD button
	Then User clicks on "Department" option after mouse overing onto ADD button
	Then User double clicks on field in Summarize by in Pivot
   Then User enters "Department Count" in input field in Summarize by in Pivot
	When I click on "VT=SUM" downarrow
	And I click on "VT=COUNT"
	Then User clicks on "Done" button in Form footer
	And I click on "VT=Pivot"
	And I wait for "1000" milli seconds
	And I click on "VT=Customize Axis"
	And I click on "VT=Customize X-Axis"
	#When I enter "LABEL=Title" as "Department" 
	Then User enters "Department" in Title box in Customize Axis accordion
	When I click on "VT=Select Value Format" downarrow
	#And I click on "VT=String" # identifying in the backgroundDOM
	Then User clicks on "String" value in Customize Axis accordion 
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Customize Y-Axis"
	#When I enter "PH=Title" as "Count" # interacting with Background element
	Then User enters "Department Count" in Title box in Customize Axis accordion
	When I click on "VT=Select Value Format" downarrow
	Then User clicks on "Number" value in Customize Axis accordion
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Customize Axis"
	And I wait for "1000" milli seconds
	And I click on "VT=Tooltip Config"
	#And I click on "VT=Add" button #Identfying background ele
	And User clicks on Add button in "Tooltip Config" accordion
	When I enter "PH=Label" as "Department"
	When I click on "VT=Select data point" downarrow
	#And I click on "VT=Department"
	Then User clicks on "Department" value in dropdown in Tooltip accordion
	When I click on "VT=Select Value Format" downarrow
	#And I click on "VT=String"
	Then User clicks on "String" value in dropdown in Tooltip accordion
	#And I click on "VT=OK" button
	And User clicks on "OK" button in Form footer
	And User clicks on Add button in "Tooltip Config" accordion
	When I enter "PH=Label" as "Department Count"
	When I click on "VT=Select data point" downarrow
	#And I click on "VT=Department"
	Then User clicks on "Department Count" value in dropdown in Tooltip accordion
	When I click on "VT=Select Value Format" downarrow
	#And I click on "VT=String"
	Then User clicks on "String" value in dropdown in Tooltip accordion
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Tooltip Config"
	And I wait for "1000" milli seconds
	And I click on "VT=Drill Down"
	#When I click on "VT=Select dashboard" downarrow
	#And User clicks on "Select dashboard" dropdown in Drill Down accordion
	And User clicks on "Select dashboard" dropdown downarrow
	#And I click on "VT=TestingDashboard"
	Then User clicks on "TestingDashboard" value in dropdown in Drill down accordion
	#When I click on "VT=Select filter" downarrow
	And User clicks on "Select filter" dropdown in Drill Down accordion
	#And I click on "VT=Department"
	Then User clicks on "Department" value in dropdown in Drill down accordion
	And I click on "VT=Drill Down"
	And I wait for "1000" milli seconds
	And I click on "VT=Serieses"
	And User clicks on Add button in "Serieses" accordion
	And I enter "PH=Name" as "Department"
	When I click on "VT=Select data point" downarrow
	#And I click on "VT=Department" # Identifying Background ele
	Then User selects "Department" field
	#When I click on "VT=Select data point" downarrow #2nd time also doing in the same dropdown because of same placegolder
	And User clicks on "Select value field" dropdown in Series accordion
	And I wait for "1000" milli seconds 
	And I click on "VT=Department Count" in dropdown
	When I click on "VT=Value Format" downarrow
	#And I click on "VT=String" # Identifying Background ele
	Then User selects "Number" field
	#And I click on "VT=OK" button
	Then User clicks on "OK" button in Form footer
	And I click on "VT=Serieses"
	And I wait for "1000" milli seconds
	And I click on "VT=Legends"
	And I click on "VT=Show legends"
	When I click on "VT=Horizontal alignment" downarrow
	And I click on "VT=Center"
	When I click on "VT=Vertical alignment" downarrow
	And I click on "VT=Top"
	And I click on "VT=Legends"
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
	And I wait for "2000" milli seconds
	And I click on "VT=Save" button
	Then User refreshes the page
	And I wait for "5000" milli seconds
	Then User verifies title "<widgetTitle>" of Line chart widget
    Then User verifies description of Line chart widget "<widgetTitle>" with "<widgetDescription>"
    Then User verifies the display of Data Export option in Line chart widget by title "<widgetTitle>"
	Then User takes Line chart widget screenshot by "<widgetTitle>"
	Examples:
    |widgetTitle|widgetDescription|
    |Line1				|Line1 Description |
	
    @iframe  
  Scenario Outline: Add I-Frame widget and configure
  And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
    And User clicks on "I-frame" widget
    And I wait for "2000" milli seconds
    And I enter "PH=Title" as "DC Title"
    #And I2 enter "LABEL2=Description" as "DC1 Description"
    And I enter "LABEL2=Description" as "I-frame Description"
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
    And I click on "VT=Details"  
    And I wait for "1000" milli seconds
    And I click on "VT=Data Points"
    And I enter "LABEL=Limit data rows" as "1"
    And I wait for "1000" milli seconds
    And User clicks on "Transpose" checkbox
    #And I click on "VT=Transpose"
    #And I click on "VT=Transpose"
    And User clicks on "Transpose" checkbox
    And I click on "VT=New Form Framework"    
    #Then User clicks on "Add" button
    And User clicks on Add button in "Data Points" accordion
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "Department"
    And I wait for "2000" milli seconds
    Then User clicks on "Done" button in Form footer
    #Then User clicks on "Add" button
    And I wait for "2000" milli seconds
    And User clicks on Add button in "Data Points" accordion
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "S.No"
    #Then User enters in "Choose Field" Text field with value "S.No"
    Then User clicks on "Done" button in Form footer
    And I wait for "2000" milli seconds
    Then User clicks on "Data Preview" button
    And I wait for "2000" milli seconds
    Then User verifies data is displayed or not 
    And I wait for "1000" milli seconds
    And I click on "VT=Media"
    When I enter "PH=url" as ""
    When I enter "PH=Action ID" as ""
    And I click on "VT=Media"
    And I wait for "1000" milli seconds
    And I click on "VT=Variables"
    And User clicks on Add button in "Variables" accordion
    When I enter "PH=Variable Name" as ""
    And I click on "VT=Select variable type" downarrow
    And I click on "VT=Current User Email"
    When I enter "PH=Default Value" as ""
    Then User clicks on "Done" button in Form footer
    And I click on "VT=Variables"
    And I wait for "1000" milli seconds
    And I click on "VT=Advanced Settings"
    Then User clicks on dropdown with "Select roles" placeholder
    And User selects "System Admin" value
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
    
    @htmlviewerStatic 
  Scenario Outline: Add HTML Viewer-Static widget and configure
  And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
  And User clicks on "HTML Viewer" widget
    And I wait for "2000" milli seconds
    And I enter "PH=Title" as "HTMLStatic1"
    #And I2 enter "LABEL2=Description" as "DC1 Description"
    And I enter "LABEL2=Description" as "HTMLStatic1 Description"
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
  	And I click on "VT=Details"
  	#And User clicks on button with inner text "Font Color"
  	#And User switches to frame
  	#And User clicks on button with inner text "OK"
  	#And I wait for "1000" milli seconds
  	#And User clicks on OK button in HtmlviewerStatic
  	And I wait for "1000" milli seconds
  	And I click on "VT=Media"
    When I enter "PH=url" as ""
    When I enter "PH=Action ID" as ""
    And I click on "VT=Media"
    And I wait for "1000" milli seconds
    And I click on "VT=Variables"
    And User clicks on Add button in "Variables" accordion
    When I enter "PH=Variable Name" as ""
    And I click on "VT=Select variable type" downarrow
    And I click on "VT=Current User Email"
    When I enter "PH=Default Value" as ""
    Then User clicks on "Done" button in Form footer
  	And I click on "VT=Variables"
  	And I wait for "1000" milli seconds
  	And I click on "VT=Advanced Settings"
  	And I wait for "1000" milli seconds
    Then User clicks on dropdown with "Select roles" placeholder
    And User selects "System Admin" value
    Then User clicks on "ESCAPE" button on Keyboard
    Then User enters "1" in "Sequence number" number box in accordion
    Then User clicks on "Hide widget from Android/iOS app" checkbox
    Then User scrolls to bottom of page
    And I wait for "2000" milli seconds 
    And I click on "VT=Refresh Dashboard"
    And I click on "VT=Disable data export"
  Then User clicks on dropdown with "Select Zapp" placeholder
    And User selects "End to End" value
    And I click on "VT=Save" button
    
      @htmlviewerRaw 
  Scenario Outline: Add HTML Viewer-Raw widget and configure
  And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
  	And User clicks on HTMLView Raw widget
  	And I wait for "2000" milli seconds
    And I enter "PH=Title" as "HTMLRaw1"
    #And I2 enter "LABEL2=Description" as "DC1 Description"
    And I enter "LABEL2=Description" as "HTMLRaw1 Description"
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
  	And I click on "VT=Details"
  	And I wait for "1000" milli seconds
  	And I click on "VT=Data Points"
    And I enter "LABEL=Limit data rows" as "1"
    And I click on "VT=Transpose"
    And I click on "VT=Transpose"
    And I click on "VT=New Form Framework"    
    #Then User clicks on "Add" button
    And User clicks on Add button in "Data Points" accordion
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "Department"
    Then User clicks on "Done" button in Form footer
    And I wait for "2000" milli seconds
    And User clicks on Add button in "Data Points" accordion
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "S.No"
    Then User clicks on "Done" button in Form footer
    And I click on "VT=Data Points"
    And I wait for "1000" milli seconds
    And I click on "VT=Pivot"
    And I wait for "1000" milli seconds
    And I click on "VT=Configure" button
     And I wait for "1000" milli seconds
    Then User mouse overs on "Row grouping" ADD button 
    Then User waits for "1000" milliseconds
    Then User clicks on "Department" option after mouse overing onto ADD button
    And I wait for "2000" milli seconds
    Then User mouse overs on "Summarize by" ADD button
   Then User clicks on "S.No" option after mouse overing onto ADD button
   #Then User double clicks on field in Summarize by in Pivot
   #Then User enters "Department Count" in input field in Summarize by in Pivot
   When I click on "VT=SUM" downarrow
   And I click on "VT=COUNT"
    Then User clicks on "Done" button in Form footer
    And I click on "VT=Pivot"
    And I wait for "1000" milli seconds
    And I click on "VT=Data Manipulation"
    And User clicks on Add button in "Data Manipulation" accordion
    Then I fill the details in Data Manipulation
    |Data point|Operation|
    |Department|Sum|
    |S.No      |Average|
    And I click on "VT=Select data point" downarrow
    And I click on "VT=Department" in dropdown
    And I click on "VT=Select operation" downarrow
    And I click on "VT=Sum" in dropdown
      Then User clicks on "OK" button
    And I click on "VT=Data Manipulation"
    And I wait for "1000" milli seconds
    And I click on "VT=Advanced Settings"
    And I wait for "1000" milli seconds
    Then User clicks on dropdown with "Select roles" placeholder
    And User selects "System Admin" value
    Then User clicks on "ESCAPE" button on Keyboard
    Then User enters "1" in "Sequence number" number box in accordion
    Then User clicks on "Hide widget from Android/iOS app" checkbox
    Then User scrolls to bottom of page
    And I wait for "2000" milli seconds 
    And I click on "VT=Refresh Dashboard"
    And I click on "VT=Disable data export"
  Then User clicks on dropdown with "Select Zapp" placeholder
    And User selects "End to End" value
    And I click on "VT=Save" button
    
    @tasktrackertable 
  Scenario Outline: Add Task Tracker Table widget and configure
  And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
  	And User clicks on "Task Tracker Table" widget
  	And I wait for "2000" milli seconds
  	And I enter "PH=Title" as "Tasktracker1"
    #And I2 enter "LABEL2=Description" as "DC1 Description"
    And I enter "LABEL2=Description" as "Tasktracker1 Description"
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
  	And I click on "VT=Details"
  	And I wait for "1000" milli seconds
  	And I click on "VT=Data Source"
  	And I click on "VT=Show Adhoc tasks only"
  	And I wait for "2000" milli seconds
  	And I click on "VT=Configure" button
  	And I click on "VT=Show All Columns"
  	#And I click on "VT=Title"
  	#And I click on "PH=Title"
  	And User clicks on "Title" title in Configure in Data Source
  	And I wait for "2000" milli seconds
 	 	And I fill details in Filter in Configure in Data source
 	 	|heading|Value is|Value |
 	 	|Tit1	  |Is      |Value1|
 	 	|Tit1	  |Is not |Value2|
 	 	Then User clicks on "Done" button in Form footer
 	 	And User clicks on Hide icon in Configure in Data source
 	 	And User clicks on "Description" title in Configure in Data Source
 	 	And I fill details in Filter in Configure in Data source
 	 	|heading|Value is|Value |
 	 	|Desc1	  |In      |Value3|
 	 	|Desc1	  |Not in  |Value4|
 	 	Then User clicks on "Done" button in Form footer
 	 	And User clicks on Hide icon in Configure in Data source
 	 	And User clicks on "Department" title in Configure in Data Source
 	 	And I fill details in Filter in Configure in Data source
 	 	|heading|Value is|Value |
 	 	|Dep1	  |In      |Value5|
 	 	|Dep2	  |Not in  |Value6| 
 	 	 Then User clicks on "Done" button in Form footer
 	 	 And I wait for "1000" milli seconds
 	 	 Then User clicks on "Done" button in Form footer
 	 	 And I wait for "1000" milli seconds
 	 	And I click on "VT=Advanced Settings"
 	 	And I wait for "1000" milli seconds
	Then User clicks on dropdown with "Select roles" placeholder
	And I click on "VT=ALLACCESS"
	Then User clicks on "ESCAPE" button on Keyboard
	And I enter "LABEL=Sequence number" as "1"
	And I click on "VT=Hide widget from Android/iOS app"
	And I click on "VT=Refresh Dashboard"
	And I click on "VT=Disable data export"
Then User clicks on dropdown with "Select Zapp" placeholder
    And User selects "End to End" value
	And I click on "VT=Advanced Settings"
	And I wait for "2000" milli seconds
	And I click on "VT=Save" button
#	Then User refreshes the page
#	And I wait for "7000" milli seconds
#	Then User verifies title "<widgetTitle>" of Tasktracker table widget
    #Then User verifies description of Tasktracker table  widget "<widgetTitle>" with "<widgetDescription>"
    #Then User verifies the display of Data Export option in Tasktracker table  widget by title "<widgetTitle>"
#	Then User takes Tasktracker table  widget screenshot by "<widgetTitle>"
	Examples:
    |widgetTitle|widgetDescription|
    |Tasktracker1				|Tasktracker1 Description |
 	 	
 	 		@kpiScenario
	Scenario Outline: Validate Add and configure KPI Widget
	And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
	Then User clicks on "KPI" widget	
	And I wait for "2000" milli seconds
	And I enter "PH=Title" as "Kpi1"
    And I enter "LABEL2=Description" as "Kpi1 Description"
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
	And User clicks on Add button in "Data Points" accordion
	And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "Department"
    And I wait for "2000" milli seconds
    Then User clicks on "Done" button in Form footer
    And I wait for "2000" milli seconds
    And I click on "VT=Data Preview" button
    And I wait for "2000" milli seconds
    Then User verifies data is displayed or not
    And I click on "VT=Data Points"
	And I wait for "1000" milli seconds
	And I click on "VT=Pivot"
	And I wait for "1000" milli seconds
	And I click on "VT=Configure" button
	#And I move to "VT=ADD"# moving but Based on text beside the button "ADD", it should move.
	And I wait for "2000" milli seconds
	Then User mouse overs on "Row grouping" ADD button 
	And I wait for "2000" milli seconds
	#And I click on "VT=Department" #Identifying element in the background
	Then User clicks on "Department" option after mouse overing onto ADD button
	 Then User mouse overs on "Summarize by" ADD button
    And I wait for "2000" milli seconds
   Then User clicks on "Department" option after mouse overing onto ADD button
	Then User double clicks on field in Summarize by in Pivot
	Then User enters "Department Count" in input field in Summarize by in Pivot
	When I click on "VT=SUM" downarrow
	And I click on "VT=COUNT"
	Then User clicks on "Done" button in Form footer
	And I click on "VT=Pivot"
	And I wait for "1000" milli seconds
	And I click on "VT=Serieses"
	And User clicks on Add button in "Serieses" accordion
	And I enter "PH=Name" as "S1"
	When I click on "VT=Select data point" downarrow
	#And I click on "VT=Department" # Identifying Background ele
	Then User selects "Department" field
	#When I click on "VT=Select data point" downarrow #2nd time also doing in the same dropdown because of same placegolder
	#And I click on "NZPH=Select data point" from "LABEL=Select value field"
	And User clicks on "Select value field" dropdown in Series accordion
	And I wait for "2000" milli seconds
	And I click on "VT=Department Count" in dropdown
	When I click on "VT=Value Format" downarrow
	#And I click on "VT=String" # Identifying Background ele
	#Then User selects "Number" field
	And I click on "VT=Number" in dropdown
	#And I click on "VT=OK" button
	And User clicks on "OK" button in Form footer
	And I click on "VT=Serieses"
	And I wait for "1000" milli seconds
	And I click on "VT=Legends"
	And I click on "VT=Show labels"
	And I click on "VT=Show legends"
	When I click on "VT=Horizontal alignment" downarrow
	And I click on "VT=Center"
	When I click on "VT=Vertical alignment" downarrow
	And I click on "VT=Top"
	And I click on "VT=Legends"
	And I wait for "1000" milli seconds
	And I click on "VT=Advanced Settings"
	#When I click on "VT=Select roles" downarrow
	#And I click on "VT=ALLACCESS" in dropdown
	#Then User clicks on "ESCAPE" button on Keyboard
	#And I enter "LABEL1=Sequence number" as "1"
	#Then User enters "1" in "Sequence number" number box in accordion
	And I wait for "2000" milli seconds
	Then User scrolls to bottom of page
	And I wait for "2000" milli seconds
	And I click on "VT=Hide widget from Android/iOS app"
	And I click on "VT=Refresh Dashboard"
	And I click on "VT=Disable data export"
	Then User clicks on dropdown with "Select Zapp" placeholder
    And I click on "VT=End to End" in dropdown
	And I click on "VT=Advanced Settings"
	And I wait for "1000" milli seconds
	And I click on "VT=Save" button
	Then User refreshes the page
	And I wait for "5000" milli seconds
	Then User verifies title "<widgetTitle>" of Kpi widget
    Then User verifies description of Kpi widget "<widgetTitle>" with "<widgetDescription>"
    Then User verifies the display of Data Export option in Kpi widget by title "<widgetTitle>"
	Then User takes kpi widget screenshot by "<widgetTitle>"
	Examples:
    |widgetTitle|widgetDescription|
    |Kpi1				|Kpi1 Description |
	
	@gantt @ganttScenario
	Scenario Outline: Validate Add and configure Gantt Widget
	And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
	Then User clicks on "GANTT" widget	
	And I wait for "2000" milli seconds
	And I enter "PH=Title" as "Gantt2"
	And I enter "LABEL2=Description" as "Gantt2 Description"
  Then User clicks on "Highlight color" color picker
  And User selects "#FF6900" color
  Then User clicks on "Border color" color picker 
	And User selects "#FCB900" color 
	Then User clicks on "Background color" color picker 
	And User selects "#7BDCB5" color
	And I click on "VT=Details"
	And I wait for "1000" milli seconds
	And I click on "VT=Data Points"
	And I wait for "1000" milli seconds
	And I enter "LABEL1=Limit data rows" as "1"
	And I click on "VT=Transpose"
	And I click on "VT=New Form Framework"
	#And I click on "VT=Add" button
	Then User clicks on "Add" button
#	When I click on "VT=Choose form" downarrow
#	And I click on "VT=db_piechart" 
	And I enter "LABEL1=Choose form" as "db_piechart"
#	When I click on "VT=Choose field" downarrow
#	And I click on "VT=Department"
And I enter "LABEL1=Choose field" as "Department"
	Then User clicks on "Done" button in Form footer
	And I wait for "2000" milli seconds
	Then User clicks on "Add" button
	When I click on "VT=Choose form" downarrow
	And I click on "VT=db_piechart" 
#	When I click on "VT=Choose field" downarrow
#	And I click on "VT=Date of Joining"
	And I enter "LABEL1=Choose field" as "Date of Joining"
	Then User clicks on "Done" button in Form footer
	And I wait for "1000" milli seconds
	#And I click on "VT=Data Preview" 
	And I click on "VT=Data Points"
	And I wait for "1000" milli seconds
	And I click on "VT=Gantt Config"
	And I wait for "1000" milli seconds
	#And I click on "VT=Configure" button
	And User clicks on Configure button in Gantt Config
	And I wait for "1000" milli seconds
	#And I click on "NZPH=Select project title" from "LABEL=Select data point"
	And User clicks on "Select project title" dropdown in Gantt
	And I click on "VT=Department" in dropdown
	And User clicks on "Select start date" dropdown in Gantt
	And I wait for "1000" milli seconds
	And I click on "VT=Date of Joining" in dropdown
	And User clicks on "Select end date" dropdown in Gantt
	And I wait for "1000" milli seconds
	And I click on "VT=Date of Joining" in dropdown
	#And I click on "VT=OK" button
	And User clicks on "OK" button in Form footer
	And I wait for "1000" milli seconds
	And I click on "VT=Save" button
	Then User refreshes the page
	And I wait for "5000" milli seconds
	Then User verifies title "<widgetTitle>" of Gantt widget
    Then User verifies description of Gantt widget "<widgetTitle>" with "<widgetDescription>"
    Then User verifies the display of Data Export option in Gantt widget by title "<widgetTitle>"
	Then User takes Gantt widget screenshot by "<widgetTitle>"
	Examples:
    |widgetTitle|widgetDescription|
    |Gantt2			|Gantt2 Description|
    
    @iframeScenario
    Scenario Outline: Add I-Frame widget and configure
    And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
    Then User clicks on "I-frame" widget
    And I wait for "2000" milli seconds
    And I enter "PH=Title" as "I-frame1"
    #And I2 enter "LABEL2=Description" as "DC1 Description"
    And I enter "LABEL2=Description" as "I-frame1 Description"
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
    And I click on "VT=Details"  
    And I wait for "1000" milli seconds
    And I click on "VT=Data Points"
    And I enter "LABEL=Limit data rows" as "1"
    And I click on "VT=Transpose"
    And I click on "VT=Transpose"
    And I click on "VT=New Form Framework"    
    #Then User clicks on "Add" button
    And User clicks on Add button in "Data Points" accordion
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "Department"
    And I wait for "2000" milli seconds
    Then User clicks on "Done" button in Form footer
    #Then User clicks on "Add" button
    And I wait for "2000" milli seconds
    And I click on "VT=Data Points" from configuration
    And I wait for "1000" milli seconds
    #And User clicks on Add button in "Data Points" accordion
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "S.No"
    #Then User enters in "Choose Field" Text field with value "S.No"
    Then User clicks on "Done" button in Form footer
    And I wait for "2000" milli seconds
    Then User clicks on "Data Preview" button
    And I wait for "2000" milli seconds
    Then User verifies data is displayed or not
    #And I click on "VT=Data Points"   
    And I wait for "1000" milli seconds
    And I click on "VT=Media"
    When I enter "PH=url" as "https://www.zvolv.com/"
    When I enter "PH=Action ID" as ""
    And I click on "VT=Media"
    And I wait for "1000" milli seconds
    And I click on "VT=Variables"
    And User clicks on Add button in "Variables" accordion
    When I enter "PH=Variable Name" as "var1"
    And I click on "VT=Select variable type" downarrow
    And I click on "VT=Master Variable"
    And I click on "VT=Select data point" downarrow
    And I click on "VT=Department" in dropdown
    When I enter "PH=Default Value" as "HR"
    Then User clicks on "Done" button in Form footer
    And I click on "VT=Variables"
    And I wait for "1000" milli seconds
    And I click on "VT=Advanced Settings"
    And I wait for "1000" milli seconds
    Then User clicks on dropdown with "Select roles" placeholder
    And User selects "System Admin" value
    Then User clicks on "ESCAPE" button on Keyboard
    Then User enters "1" in "Sequence number" number box in accordion
    Then User clicks on "Hide widget from Android/iOS app" checkbox
    Then User scrolls to bottom of page
    And I wait for "2000" milli seconds 
    And I click on "VT=Refresh Dashboard"
    And I click on "VT=Disable data export"
    #And I click on "VT=Select Zapp" downarrow
    Then User clicks on dropdown with "Select Zapp" placeholder
    And I wait for "2000" milli seconds
    And I click on "VT=End to End" in dropdown
    And I wait for "1000" milli seconds
    And I click on "VT=Save" button
    And I click on "VT=Done" button
    Then User refreshes the page
	And I wait for "5000" milli seconds
	Then User verifies title "<widgetTitle>" of Iframe widget
    Then User verifies description of Iframe widget "<widgetTitle>" with "<widgetDescription>"
    Then User verifies the display of Dropdown option at top right in Iframe widget by title "<widgetTitle>"
	Then User takes Iframe widget screenshot by "<widgetTitle>"
	Examples:
    |widgetTitle|widgetDescription|
    |I-frame1			|I-frame1 Description|
    
    @piechart-UniqueCount
    Scenario Outline: Add Pie Chart widget and configure for Unique Count 
    And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
    Then User clicks on "Pie Chart" widget
    Then User waits for "2000" milliseconds
    Then User clears Title field in Widget
    Then User enters "PC2" as Pie Chart title
    And User enters "PC2 Description" as Description
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
    And User clicks on "Details" accordion
    And I wait for "1000" milli seconds
    And I wait for "2000" milli seconds
    And I click on "VT=Data Points" 
    And I click on "VT=New Form Framework"
    Then User clicks on "Add" button
    And User clicks on "Choose Form" dropdown
    Then User enters in "Choose Form" Text field with value "db_piechart"
    #Then User selects "db_piechart" form
    And User clicks on "Choose Field" dropdown
    Then User enters in "Choose Field" Text field with value "Employee Name"
    Then User waits for "2000" milliseconds
    Then User clicks on "Done" button in Form footer
    Then User waits for "2000" milliseconds
    Then User clicks on "Add" button
    And User clicks on "Choose Form" dropdown
    Then User enters in "Choose Form" Text field with value "db_piechart"
    #Then User selects "db_piechart" form
    And User clicks on "Choose Field" dropdown
    Then User enters in "Choose Field" Text field with value "Gender"
    Then User waits for "2000" milliseconds
    Then User clicks on "Done" button in Form footer
    And I wait for "2000" milli seconds
    #Then User clicks on "Data Preview" button
    And I click on "JS=Data Preview"
     And I wait for "1000" milli seconds
    And I click on "VT=Pivot" 
     And I wait for "1000" milli seconds
    Then User clicks on "Configure" button
    And I wait for "2000" milli seconds
    Then User mouse overs on "Row grouping" ADD button 
    Then User waits for "2000" milliseconds
    Then User clicks on "Employee Name" option after mouse overing onto ADD button
    Then User mouse overs on "Summarize by" ADD button
    Then User waits for "2000" milliseconds
   Then User clicks on "Gender" option after mouse overing onto ADD button
   Then User double clicks on field in Summarize by in Pivot
   Then User enters "Gender Unique Count" in input field in Summarize by in Pivot
    And User clicks on dropdown in Summarize by in Pivot
   Then User clicks on "UNIQUE COUNT" value in the dropdown in Summarize by in Pivot
    Then User clicks on "Done" button in Form footer
    Then User clicks on "Pivot" accordion
    And I wait for "1000" milli seconds
    And I click on "VT=Serieses"
    And User clicks on "Add" button in Serieses accordion
    And I enter "PH=Name" as "Series_1"
    Then User clicks on "Select argument field" dropdown in Series accordion
    Then User selects "Employee Name" field
    And User clicks on "Select value field" dropdown in Series accordion
    And I wait for "1000" milli seconds
    And I click on "VT=Gender Unique Count" in dropdown
    And I wait for "1000" milli seconds
    Then User clicks on "Select value Format" dropdown in Series accordion
    Then User selects "String" field
    Then User clicks on "OK" button
    Then User clicks on "Serieses" accordion
     And I wait for "1000" milli seconds
    And I click on "VT=Legends" 
    Then User clicks on "Show labels" checkbox
    Then User clicks on "Show legends" checkbox
    Then User clicks on "Horizontal alignment" dropdown in Legends
    And User selects "Left" value
    Then User waits for "2000" milliseconds
    Then User clicks on "Vertical alignment" dropdown in Legends
    And User selects "Bottom" value
    And I wait for "1000" milli seconds
    And User clicks on "Legends" accordion
     And I wait for "1000" milli seconds
    And I click on "VT=Advanced Settings" 
     And I wait for "1000" milli seconds
    Then User clicks on dropdown with "Select roles" placeholder
    And User selects "ALLACCESS" value
    Then User clicks on "ESCAPE" button on Keyboard
    Then User enters "1" in "Sequence number" number box in accordion
    Then User clicks on "Hide widget from Android/iOS app" checkbox
    Then User scrolls to bottom of page
    And I wait for "2000" milli seconds
    Then User clicks on "Refresh Dashboard" checkbox
    Then User clicks on "Disable data export" checkbox
    Then User clicks on dropdown with "Select Zapp" placeholder
    And User selects "End to End" value
     And I wait for "1000" milli seconds
    And I click on "VT=Save" button
    And I click on "VT=Done" button
    Then User refreshes the page
	And I wait for "5000" milli seconds
	Then User verifies title "<widgetTitle>" of Pie chart widget
    Then User verifies description of Pie chart widget "<widgetTitle>" with "<widgetDescription>"
    Then User verifies the display of Data Export option in Pie chart widget by title "<widgetTitle>"
	Then User takes Pie chart widget screenshot by "<widgetTitle>"
	Examples:
    |widgetTitle|widgetDescription|
    |PC2				|PC2 Description |
   
   @barchart-UniqueCount
    Scenario Outline: Add Bar Chart widget and configure for Unique Count 
    And I enter "PH=search zapp by title" as "End to End"
      And I click on "VT=End to End"
      And I wait for "1000" milli seconds
      And I click on "VT=TestDB123"
      And I wait for "1000" milli seconds
    	And I click on "VT=Edit" button
    	And I click on "VT=Add widget" button
    Then User clicks on "Bar Chart" widget
    And I wait for "2000" milli seconds
    And I enter "PH=Title" as "BC1"
    And I enter "LABEL2=Description" as "BC1 Description"
    Then User clicks on "Highlight color" color picker 
    And User selects "#FF6900" color 
    Then User clicks on "Border color" color picker 
    And User selects "#FCB900" color 
    Then User clicks on "Background color" color picker 
    And User selects "#7BDCB5" color
    And User clicks on "Details" accordion
    And I wait for "1000" milli seconds
    And I wait for "2000" milli seconds
    And I click on "VT=Data Points" 
    And I click on "VT=New Form Framework"
    Then User clicks on "Add" button
    And I click on "LABEL=Choose Form" dropdown
    When I enter "LABEL1=Choose Form" as "db_piechart"
    And I click on "LABEL=Choose Field" dropdown
    When I enter "LABEL1=Choose field" as "Employee Name"
    Then User waits for "2000" milliseconds
    Then User clicks on "Done" button in Form footer
    Then User waits for "2000" milliseconds
    Then User clicks on "Add" button
    And User clicks on "Choose Form" dropdown
    Then User enters in "Choose Form" Text field with value "db_piechart"
    #Then User selects "db_piechart" form
    And User clicks on "Choose Field" dropdown
    Then User enters in "Choose Field" Text field with value "Gender"
    Then User waits for "2000" milliseconds
    Then User clicks on "Done" button in Form footer
    And I wait for "2000" milli seconds
    Then User clicks on "Data Preview" button
    #And User clicks on "Data Points" accordion
     And I wait for "1000" milli seconds
    And I click on "VT=Pivot" 
     And I wait for "1000" milli seconds
    Then User clicks on "Configure" button
    And I wait for "2000" milli seconds
    Then User mouse overs on "Row grouping" ADD button 
    Then User waits for "2000" milliseconds
    Then User clicks on "Employee Name" option after mouse overing onto ADD button
    Then User mouse overs on "Summarize by" ADD button
    Then User waits for "2000" milliseconds
   Then User clicks on "Gender" option after mouse overing onto ADD button
   Then User double clicks on field in Summarize by in Pivot
   Then User enters "Gender Unique Count" in input field in Summarize by in Pivot
    And User clicks on dropdown in Summarize by in Pivot
   Then User clicks on "UNIQUE COUNT" value in the dropdown in Summarize by in Pivot
    Then User clicks on "Done" button in Form footer
    Then User clicks on "Pivot" accordion
    And I wait for "1000" milli seconds
   And I click on "VT=Customize Axis"
	And I click on "VT=Customize X-Axis"
	#When I enter "LABEL=Title" as "Department" 
	Then User enters "Employee Name" in Title box in Customize Axis accordion
	When I click on "VT=Select Value Format" downarrow
	#And I click on "VT=String" # identifying in the backgroundDOM
	Then User clicks on "String" value in Customize Axis accordion 
	#And I click on "VT=OK" button
	 Then User clicks on "OK" button
	 And I wait for "1000" milli seconds
	And I click on "VT=Customize Y-Axis"
	#When I enter "PH=Title" as "Count" # interacting with Background element
	Then User enters "Gender Unique Count" in Title box in Customize Axis accordion
	When I click on "VT=Select Value Format" downarrow
	Then User clicks on "Number" value in Customize Axis accordion
	#And I click on "VT=OK" button
	 Then User clicks on "OK" button
	And I click on "VT=Customize Axis"
   And I wait for "1000" milli seconds
    And I click on "VT=Serieses"
    And User clicks on "Add" button in Serieses accordion
    And I enter "PH=Name" as "Series_1"
    Then User clicks on "Select argument field" dropdown in Series accordion
    Then User selects "Employee Name" field
    And User clicks on "Select value field" dropdown in Series accordion
    And I wait for "1000" milli seconds
    And I click on "VT=Gender Unique Count" in dropdown
    And I wait for "1000" milli seconds
    Then User clicks on "Select value Format" dropdown in Series accordion
    Then User selects "String" field
    Then User clicks on "OK" button
     And I wait for "1000" milli seconds
    Then User clicks on "Serieses" accordion
    Then User scrolls to bottom of page
    And I wait for "1000" milli seconds
    And User clicks on "Legends" accordion
    Then User clicks on "Show labels" checkbox
    Then User clicks on "Show legends" checkbox
    Then User clicks on "Horizontal alignment" dropdown in Legends
    And User selects "Left" value
    Then User waits for "2000" milliseconds
    Then User clicks on "Vertical alignment" dropdown in Legends
    And User selects "Bottom" value
    And User clicks on "Legends" accordion
    And I wait for "1000" milli seconds
    And I click on "VT=Advanced Settings" 
    And I wait for "1000" milli seconds
    Then User clicks on dropdown with "Select roles" placeholder
    And User selects "ALLACCESS" value
    Then User clicks on "ESCAPE" button on Keyboard
    Then User enters "1" in "Sequence number" number box in accordion
    Then User clicks on "Hide widget from Android/iOS app" checkbox
    Then User scrolls to bottom of page
    And I wait for "2000" milli seconds
    Then User clicks on "Refresh Dashboard" checkbox
    Then User clicks on "Disable data export" checkbox
    Then User clicks on dropdown with "Select Zapp" placeholder
    And User selects "End to End" value
    And I wait for "1000" milli seconds
    And I click on "VT=Save" button
    And I click on "VT=Done" button
    Then User refreshes the page
	And I wait for "5000" milli seconds
	Then User verifies title "<widgetTitle>" of Bar chart widget
    Then User verifies description of Bar chart widget "<widgetTitle>" with "<widgetDescription>"
    Then User verifies the display of Data Export option in Bar chart widget by title "<widgetTitle>"
	Then User takes Bar chart widget screenshot by "<widgetTitle>"
	Examples:
    |widgetTitle|widgetDescription|
    |BC1				|BC1 Description |
   

@DashboardWidget  @DashboardCommanDateFilter
Scenario: Verification of dashboard filters - Date filter and Filter
Given I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
#//new dashboard
And I wait for "2000" milli seconds
And I click on "DI=plus"[1] Button
And User enters the "DashBoardFilters-" dashboard title
And I click on "VT=Select roles"
And I click on "VT=All Org Users"
And I click on "VT=Linked Users"
And I click on "VT=System Admin"
And I wait for "2000" milli seconds
And I clicked on cursor
And I click on Edit Permission "VT=Select roles" Dropdown
And User selects the "VT=System Admin"
And User clicked on edit permissin cursor
And I wait for "2000" milli seconds
And I click on "VT=Save" button
And I wait for "2000" milli seconds
And I click on new Created dashboard
And I wait for "2000" milli seconds
#And I wait for 2 Seconds
#And I click on "VT=DashBoardFilters--DashBoard-4378"
#And I wait for 2 Seconds
#//adding widget
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for "2000" milli seconds
And User click on "VT=Data Table" widget
And I enter "PH=Title" as "Data Table"
And I2 enter "LABEL=Description" as "Dashboard Filters - Date Filter and Filter"
Then User clicks on "Highlight color" color picker 
And User selects "#FF6900" color 
Then User clicks on "Border color" color picker 
And User selects "#FCB900" color 
Then User clicks on "Background color" color picker 
And User selects "#7BDCB5" color
And I click on "VT=Details"
#//Adding fields
And I click on "VT=Data Points"
And I wait for "2000" milli seconds
And I click on "VT=New Form Framework"
And User click on "VT=Add" Button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Dashboard Date Filter"
And I wait for "2000" milli seconds
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Taxi Booking Date"
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds
And User click on "VT=Add" Button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Dashboard Date Filter"
And I wait for "2000" milli seconds
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "TaxiType"
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds
And User click on "VT=Add" Button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Dashboard Date Filter"
And I wait for "2000" milli seconds
And I click on "LABEL=Choose field" dropdown
And I wait for "1000" milli seconds
And I enter "LABEL1=Choose field" as "Destination"
And I wait for "1000" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds
And User click on "VT=Add" Button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Dashboard Date Filter"
And I wait for "2000" milli seconds
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Journey Start Date"
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds
And User click on "VT=Add" Button
And I wait for 1 Seconds
And I click on "VT=Choose form" button
And I wait for 1 Seconds
And I enter "LABEL1=Choose Form" as "Dashboard Date Filter"
And I wait for "2000" milli seconds
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Journey End Date"
And I wait for "2000" milli seconds
And I click on "VT=Done"[2]
And I wait for 1 Seconds
#//Column adding
And I click on "VT=Columns"
And I wait for 1 Seconds
And I click on "VT=Add"[4] button
And I wait for 1 Seconds
And I enter "PH=Column header" as "Booking Date"
And I click on "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Taxi Booking Date" from dropdown
And I click on "VT=Select column type"[2]
And I wait for 1 Seconds
And I click on "VT=Date" from dropdown
And I click on "VT=OK" button

And I click on "VT=Add"[4] button
And I wait for 1 Seconds
And I enter "PH=Column header" as "TaxiType"
And I click on "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=TaxiType" from dropdown
And I click on "VT=Select column type"[2]
And I wait for 1 Seconds
And I click on "VT=Generic" from dropdown
And I click on "VT=OK" button

And I click on "VT=Add"[4] button
And I wait for 1 Seconds
And I enter "PH=Column header" as "Journey Start Date"
And I click on "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Journey Start Date" from dropdown
And I click on "VT=Select column type"[2]
And I wait for 1 Seconds
And I click on "VT=Date" from dropdown
And I click on "VT=OK" button

And I click on "VT=Add"[4] button
And I wait for 1 Seconds
And I enter "PH=Column header" as "Journey End Date"
And I click on "VT=Select data point"
And I wait for 1 Seconds
And I click on "VT=Journey End Date" from dropdown
And I click on "VT=Select column type"[2]
And I wait for 1 Seconds
And I click on "VT=Date" from dropdown
And I click on "VT=OK" button
And I click on "VT=Save" button
And I wait for 1 Seconds
And I click on "VT=Done" button
And I refresh the page
And I wait for 2 Seconds
Then I see "VT=Booking Date" web element
Then I see "VT=TaxiType" web element
Then I see "VT=Journey Start Date" web element
Then I see "VT=Journey End Date" web element
And I click on "VT=Edit" button
#//Date Filter optional
And I click on "VT=Date filter" button
Then I see "VT=Configure date Filter" web element
And User click on "LABEL=Default date range (optional)" and "VT=Select range"
And I wait for 1 Seconds
And I click on "VT=today" from dropdown
And I click on "VT=Select widget" button
And I wait for 1 Seconds
And I click on "VT=Data Table" from dropdown
And I click on "VT=Select data source"
And I wait for 1 Seconds
And I click on "VT=Taxi Booking Date" from dropdown
And I click on "VT=Done"[2]
And I wait for 1 Seconds
#//UI verification of  today date filter
And I refresh the page
And I wait for 3 Seconds
Then I see in column "VT=Booking Date" date is only TODAY's date 
#//Last 7 Days date filter
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "VT=Date filter" button
And I wait for 1 Seconds
And User click on "LABEL=Default date range (optional)" and "VT=today"
And I wait for 1 Seconds
And I click on "VT=last 7 days" from dropdown
And I wait for 1 Seconds
And I click on "VT=Save"
And I wait for "1000" milli seconds
#//UI Verification
And I refresh the page
And I wait for 3 Seconds
And I click on "DI3=close-circle"[1]
And I wait for "1000" milli seconds
And I refresh the page
And I wait for 3 Seconds
Then I see in column "VT=Booking Date" date is only 7 past days







   
   