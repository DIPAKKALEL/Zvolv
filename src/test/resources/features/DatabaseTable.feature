#Author: sharath.chandra@dragonflytest.com

#@ZvolvDatabaseTable1
#@db_fields_sharath
#@testcases_sharath
@ZvolvDatabases

    Feature: DatabaseTable
        Background: 
    	Given login into the zvolv application with below credentials
      |dragon_1|saikumaroffice786@gmail.com|Saik@123|
      When Creating public database with below credentials
      |DatabaseType|Description                  |Tag|
      |public      |This is test public database |AutomationDB|
      |private     |This is test private database|AutomationDB| 
	    When User click on searchbox
	    And  User enter the created database name
	    When User click on database
	    When User click on edit icon
	    And User click on edit columns
	    Then User should see the datapoints form
	    When User click on name textfield
    

 @DashboardWidget    @textEdit
    Scenario: Validating Text Edit Functionality
 			When User enters the below details for creating TextEdit type column
 			|fieldLabel|hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |
 			|textEdit  |Hint for textEdit| DefaultValue for textEdit|Info text for textEdit|Help text for textEdit| REGEX('^[a-z]*$','{textEdit}') |Only small letters are allowed|
 			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    And I wait for 2 Seconds
	    Then User enters value in Text Edit field <textEditValue>
	    |textEditValue|
	    |sharath      |
	    Then User clicks on Submit button
	  	Then User should see Submission created successfully tooltip  
	    
	  @DashboardWidget  @checkboxWithDependency
	    Scenario: Validate Adding fields to the public database Functionality-CheckBox with dependency
	    When User enters the below details for creating CheckBox type column with dependency
 			|dependentLabel |fieldLabel |hint              |defaultValue               |infoText   						|helpText							 |regex |error message   |
 			|textEdit1      |checkbox   |Hint for checkBox | DefaultValue for checkBox |Info text for checkBox|Help text for checkBox|dummy |Sample error msg|
			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button	  
	    And I wait for "4000" milli seconds
	 #   Then User clicks on mandatory checkBox
	    Then User clicks on Submit button
	    Then User should see Submission created successfully tooltip
	    #When User click on database
	    When User click on add button
	    Then User clicks on Submit button
	    Then User should see common error message for required fields
	    
	  @DashboardWidget  @dropdownlistWithDependency
	    Scenario: Validate Adding fields to the public database Functionality-Dropdown List with dependency
	    When User enters the below details for creating DropdownList type column with dependency
 			|dependentLabel |fieldLabel    |hint                 |defaultValue                  |infoText   						   |helpText							    |regex |error message   |option1|option2|Select type value1|Select type value2|
 			|textEdit1      |dropdownList  |Hint for dropdownList| DefaultValue for dropdownList|Info text for dropdownList|Help text for dropdownList|dummy |Sample error msg|opt1   | opt2  |Show             |Hide							| 																																																																																												
			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User clicks on Dropdown list
	    And User clicks on any option
	    Then User clicks on Submit button
	    #When User click on database
	    When User click on add button
	    Then User clicks on Dropdown list
	    And User enters value in EnterValue box as <newValue>
	    |newValue|
	    |opt3    |
	    And User clicks on Plus button
	    Then User clicks on Submit button
	    Then User should see Submission created successfully tooltip
	   #When User click on database
	    When User click on add button
	    Then User clears Dropdown list field 
	    Then User clicks on Submit button
	    And I wait for "1000" milli seconds
	    Then User should see Missing Value for Required Field error message 

	@DashboardWidget  @radiogroupWithDependency
	    Scenario: Validate Adding fields to the public database Functionality-Radio Group with Dependency
	    When User enters the below details for creating RadioGroup type column with dependency
 			|dependentField          |fieldLabel    |hint                 |defaultValue                  |infoText   						    |helpText							     |regex  |error message    |option1  |option2  |Select type value1| Select type value2|
 			|textEdit                |radioGroup    |Hint for radioGroup  | DefaultValue for radioGroup  |Info text for radioGroup  |Help text for radioGroup  |dummy  |Sample error msg |radio1   | radio2  |Show             	|Hide							  |
			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    #Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User clicks on Radio option2
	    Then User clicks on Submit button
	    Then User should see Submission created successfully tooltip
	    #And User click on the displayed database
	    When User click on add button
	    Then User clicks on Submit button
	    Then User should see common error message for required fields
	    
		@DashboardWidget	@htmlText
	    Scenario Outline: Validate Adding fields to the public database Functionality-HTML Text
#	    When User enters the below details for creating HTMLText type column
 #			|htmlCode             |infoText              |helpText              |
 #			|<h1>HTML Heading</h1>|Info text for htmlText|Help text for htmlText|
	    When User enters "<htmlCode>", "<infoText>", "<helpText>" for creating HTMLText type column
	    And I wait for "1000" milli seconds
			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User clicks on Submit button
	    Then User should see common error message for required fields 
	    Examples:
	    |htmlCode             |infoText              |helpText              |
 			|<h1>HTML Heading</h1>|Info text for htmlText|Help text for htmlText|
 			|<p>HTML Paragraph</p> |Info text 					 |Help text |
 			 
	   
	@DashboardWidget   @timepicker 
	   Scenario: Validate timePicker Functionality
	    When User enters the below details for creating TimePicker type column
     |Field Label |defaultValue|infoText                |helpText                |
     |timePicker  |00:00:00    |Info text for timePicker|Help text for timePicker|
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
	    And User clicks on Select time 
	    And User clicks on Hrs <hours>
	    |hours|
	    |09   |
	    And User clicks on Mins <minutes>
	    |minutes|
	    |48     |
	    And USer clicks on Secs <seconds>
	    |seconds|
	    |55     |
	    And User clicks on Am or Pm <ampm>
	    |ampm|
	    |pm  |
	    Then User clicks on Submit button
	    Then User should see the Updtaed datapoints
	    #And User click on the displayed database
	    When User click on add button
	    Then User mouse overs on Timepicker input element
	    #Then User clears the field
 			Then User clicks on Submit button
 			Then User should see common error message for required fields
 			
 	@DashboardWidget		@shortText
 			Scenario: Validate Short Text Functionality
 			When User enters the below details for creating ShortText type column
     |Field Label |defaultValue|infoText  						| helptext						 |regex |error message									|
     |shortText   |short       |InfoText for ShortText|HelpText for ShortText|REGEX('^[A-Z]+$','{shortText}')|Only Capital letters are allowed |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
 			And User enters shortText field value <shortText>
   		 		|shortText         |
    			|ALLARECAPITALS|
 			And User click on submit button
    	Then User should see Submission created successfully tooltip
			#And User click on the displayed database
	    #Then User should see the Updtaed datapoints
	    When User click on add button    
    	Then User clears ShortText input field
    	And User click on submit button
    	Then User should see common error message for required fields
    	
	 @DashboardWidget 	@email  
    	Scenario: Validate Email Functionality
 			When User enters the below details for creating Email type column
     |Field Label | defaultValue    |regex       |  error Message                |
     |email       |abc@example.com  |REGEX('^(.+)@(.+)$','{email}') |Please enter valid mail address|
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
 			And User enters email field value <email>
   		 		|email  |
    			|ab@c.com|
 			And User click on submit button
    	Then User should see Submission created successfully tooltip
    	#And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
	    Then User clears Email input field 
	    And User click on submit button
    	Then User should see common error message for required fields
    
   @DashboardWidget 	@datepicker
    	Scenario: Validate DatePicker Functionality
 			When User enters the below details for creating Date Picker type column
     |Field Label |defaultValue|daysOptional|GreaterThan|infoText                |helpText                |regex|error message|
     |datePicker  |01-12-2023  |1						|30-11-2023 |Info text for datepicker|Help text for datepicker|			|							|
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
 			Then User clicks on DatePicker Input
 			Then User clicks on the desired date
 			|day|month and year| 
 			|4 |Sep 2023      | 
 			And User click on submit button
    	Then User should see Submission created successfully tooltip
    	 #And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
	    Then User clears Date-timePicker input field 
	    And User click on submit button
    	Then User should see common error message for required fields
	    
  @DashboardWidget  	@datetimepicker
    	Scenario: Validate Date-timePicker Functionality
 			When User enters the below details for creating Date-timePicker type column
      |Field Label      |defaultValue Date |daysOptional|infoText                		|helpText                    |regex|error message|defaultValue time |
      |date-timePicker  |01-12-2023        |2					 |Info text for datetimepicker|Help text for datetimepicker|     |						 |10:10             |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
 			When User clicks on Date-timePicker input
 			Then User clicks on desired Date-time 
 			|day|month and year|hours|minutes|
 			|2  |Dec 2024      |10   |50     |  
 			And User click on submit button
    	Then User should see Submission created successfully tooltip
    	#And User click on the displayed database
    	When User click on add button
    	#Then User clears Date-timePicker input field
    	And User click on submit button
    	Then User should see common error message for required fields
    	
    	
   @DashboardWidget 	@phone
    	Scenario: Validate Phone Functionality
 			When User enters the below details for creating Phone type column
     |Field Label |Value     |infoText           |helpText           |regex       | error message                 |
     |phone       |7780212345|Info text for phone|Help text for phone|REGEX('^[6-9]{1}\d{10}$','{phone}') |Only Indian numbers are allowed|
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
	    Then User enters phone number <phone>
	    |phone     |
	    |7780212361|
	    And User click on submit button
    	Then User should see Submission created successfully tooltip
    	 #And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
	    Then User clears text input field 
    	And User click on submit button
    	Then User should see common error message for required fields
    	
    	#Passed
   @DashboardWidget 	@number-integer
    	Scenario: Validate Adding fields to the public database Functionality-Number-Integer
 			When User enters the below details for creating Number with Integer type column
     |Field Label| value| Min | Max|infoText            |helpText            |regex                      | error message          |
     	|number     |20    |4    | 18 |Info text for number|Help text for number| REGEX('^[a-z]+$','{number}')|Only letters are allowed |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	Then User enters number <number>
    	|number|
    	|5     |
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
    	
   @DashboardWidget 	@url
    	Scenario: Validate URL Functionality
 			When User enters the below details for creating URL type column
     |Field Label| Deafault value| infoText            |helpText            |regex                                                                | error message |
     |url        | www.zvolv.in  |Info text for url    |Help text for url   |\b(?:https?://)?(?:www\.)?(?!gmail\b)[a-zA-Z0-9.-]+\.\w+(?:\/\S*)?\b |Invalid URL    |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	Then User enters url <url>
    	|url   										|
    	|https://www.zvolv.in     |
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
    	
   @DashboardWidget 	@daterange
    	Scenario: Validate Date Range Functionality
 			When User enters the below details for creating DateRange type column
     |Field Label|Start Date|End Date  |  infoText              |helpText                  |regex     | error message          |
     |dateRange  |03/12/2023|02/01/2024|Info text for dateRange |Help text for dateRange   |          |                        |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	Then User enters desired date range
    	|Start month and year| Start day|End month and year|End day|
    	|Mar 2024            |1				  |Apr 2024          |2      | 
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
    	
    @DashboardWidget	@timer
    	Scenario: Validate Timer Functionality
 			When User enters the below details for creating Timer type column
      |Field Label| hrs|mins|secs| infoText              |helpText              |regex     | error message          |
      |timer      |1   |10  |5   |Info text for Timer    |Help text for Timer   |          |                        |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	Then User performs desired operations
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
    	
	@DashboardWidget 		@container
    	Scenario: Validate Container Functionality
 			When User enters the below details for creating Container type column
      |Dependent Field | Field Label| infoText                  |helpText               |regex     | error message          |
      |textEdit        |container   |Info text for Container    |Help text for Container|          |                        |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	Then User enters value in Text Edit field <textEditValue>
	    |textEditValue|
	    |sharath      |
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
    	
   @DashboardWidget 	@autonumber
    	Scenario: Validate AutoNumber Functionality
 			When User enters the below details for creating AutoNumber type column
      | Field Label| StartSequqnce Value|infoText                |helpText                 |regex     | error message         |
      |autoNumber  |			2							|Info text for AutoNumber |Help text for AutoNumber|          |                       |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	#When User click on database
    	When User click on add button
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
    	
    @DashboardWidget	@matrix
    	Scenario: Validate Matrix Functionality
 			When User enters the below details for creating Matrix type column
      |Dependent Field1 |Dependent Field2 | Field Label|No of Columns value| infoText                |helpText              |regex     | error message         |
      |textEdit         |	checkbox				|    matrix  |1									 |Info text for Matrix     |Help text for Matrix  |          |                       |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
	    Then User enters value in Text Edit field <textEditValue>
	    |textEditValue|
	    |sharath      |
	    Then User clicks on checkBox
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
	 		
	 	@DashboardWidget	@signature
    	Scenario: Validate Signature Functionality
 			When User enters the below details for creating Signature type column
      | Field Label| infoText                |helpText                |regex     | error message         |
      | signature  |Info text for Signature  |Help text for Signature |          |                       |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
	    Then User clicks on Color square
	    And User clicks on desired colour
	    And User clicks on Change Font Size button
	    And User clicks on Clear button
	    And User clicks on Undo button
	    Then User uploads the file by clicking on Upload button
	    |FilePath																					              |
	    |/Screenshots/element.png|
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
	 		
	 	@DashboardWidget	@location
    	Scenario: Validate Location Functionality
 			When User enters the below details for creating Location type column
      | Field Label| infoText                |helpText                |regex     | error message         |
      | location   |Info text for location   |Help text for location |           |                       |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
  @DashboardWidget  	@qr/barcodescanner
    	Scenario: Validate QR/Barcode Scanner Functionality
 			When User enters the below details for creating QRBarcode Scanner type column
      | Field Label         | infoText                        |helpText                        |regex     | error message         |
      | qr/barcodescanner   |Info text for qr/barcodescanner  |Help text for qr/barcodescanner |          |                       |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
    	
	 @DashboardWidget		@actionbutton
    	Scenario: Validate Action Button Functionality
 			When User enters the below details for creating ActionButton type column
      | Field Label  | Action Type      |Choose Form        |Success message |Loading message|Error message|infoText                   |helpText                        |regex     | error message         |
      | actionButton | Create Submission|db_sharath2        | Success        |Loading        |Error        |Info text for ActionButton |Help text for ActionButton      |          |                       |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
	    Then User clicks on Action button
	    |ActionButtonName|
	    |actionButton    |
	    Then User enters data in Text Edit
	    |textData| 
	    |abc|
    	And User click on submit button2
    	And User click on submit button
    	And I wait for "1000" milli seconds
    	And User clicks on Close icon at top right
    	And User enters database name in search box
    	|database Name|
    	|db_sharath2|
    	And I wait for "1000" milli seconds
    	And User clicks on desired database   
    	|database Name|
    	|db_sharath2|	
    	Then User verifies the entry made in the datatable
	 		|textDataInDatabaseRecord|
	 		|abc|
	 		
	 	@DashboardWidget	  @textEdit-email
    Scenario: Validate Adding fields to the public database Functionality-Text Edit-Email
 			When User enters the below details for creating TextEdit type column with Email subtype
 			|fieldLabel    |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |
 			|textEdit_Email|Hint for textEdit | DefaultValue for textEdit|Info text for textEdit|Help text for textEdit| REGEX('^[a-z]*$','{textEdit}') |Only small letters are allowed|
 			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User enters value in Text Edit field <textEditValue>
	    |textEditValue|
	    |@.com      |
	    Then User clicks on Submit button
	  	Then User should see Submission created successfully tooltip
	 		
	 	@DashboardWidget	  @textEdit-mobile
    Scenario: Validate Adding fields to the public database Functionality-Text Edit-Mobile
 			When User enters the below details for creating TextEdit type column with Mobile subtype
 			|fieldLabel    |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |
 			|textEdit_Mobile|Hint for textEdit | DefaultValue for textEdit|Info text for textEdit|Help text for textEdit| REGEX('^[a-z]*$','{textEdit}') |Only small letters are allowed|
 			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User enters value in Text Edit field <textEditValue>
	    |textEditValue|
	    |1a@      |
	    Then User clicks on Submit button
	  	Then User should see Submission created successfully tooltip
	 		
	 	@DashboardWidget	  @textEdit-number
    Scenario: Validate Adding fields to the public database Functionality-Text Edit-Number
 			When User enters the below details for creating TextEdit type column with Number subtype
 			|fieldLabel    |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |minimumValue|maximumValue|
 			|textEdit_Number|Hint for textEdit | DefaultValue for textEdit|Info text for textEdit|Help text for textEdit| REGEX('^[a-z]*$','{textEdit}') |Only small letters are allowed|1|10|
 			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User enters value in Text Edit field <textEditValue>
	    |textEditValue|
	    |abcdefg      |
	    Then User clicks on Submit button
	  	Then User should see Submission created successfully tooltip
	 		
	@DashboardWidget 		@textEdit-decimal
    Scenario: Validate Adding fields to the public database Functionality-Text Edit-Decimal
 			When User enters the below details for creating TextEdit type column with Decimal subtype
 			|fieldLabel    |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |minimumValue|maximumValue|
 			|textEdit_Decimal|Hint for textEdit | DefaultValue for textEdit|Info text for textEdit|Help text for textEdit| REGEX('^[a-z]*$','{textEdit}') |Only small letters are allowed|1.1|10.1|
 			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User enters value in Text Edit field <textEditValue>
	    |textEditValue|
	    |@$#%^&      |
	    Then User clicks on Submit button
	  	Then User should see Submission created successfully tooltip
	 		
	 @DashboardWidget		@textEdit-otp
    Scenario: Validate Adding fields to the public database Functionality-Text Edit-Otp
 			When User enters the below details for creating TextEdit type column with Otp subtype
 			|fieldLabel    |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |
 			|textEdit_Otp|Hint for textEdit | DefaultValue for textEdit|Info text for textEdit|Help text for textEdit| REGEX('^[a-z]*$','{textEdit}') |Only small letters are allowed|
 			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User enters value in Text Edit field <textEditValue>
	    |textEditValue|
	    |abcd@#123      |
	    Then User clicks on Submit button
	  	Then User should see Submission created successfully tooltip
	 	
	@DashboardWidget		@number-decimal
    	Scenario: Validate Adding fields to the public database Functionality-Number-Decimal
 			When User enters the below details for creating Number with Decimal type column
      |Field Label| value| Min | Max|infoText            |helpText            |regex                      | error message          |precision|
     	|number     |5.1    |4.1    | 18.1 |Info text for number|Help text for number| REGEX('^[a-z]+$','{number}')|Only letters are allowed |2|
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	Then User enters number <number>
    	|number|
    	|18.234     |
    	And User click on submit button
    	Then User should see Submission created successfully tooltip
			
		@DashboardWidget	@textedit
    Scenario Outline: Validate Adding fields to the public database Functionality-Text Edit 
 			When User enters the below details for creating TextEdit type column
 			|fieldLabel|hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |
 			|textEdit  |Hint for textEdit| DefaultValue for textEdit|Info text for textEdit|Help text for textEdit| REGEX('^[a-z]*$','{textEdit}') |Only small letters are allowed|
 			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    #Then User clicks on Add button, enters value in Text Edit field <textEditValue> and clicks on Submit button 
	    #|textEditValue|message|
	    #||1|
	    #|sharath|2|
	    #|Sharath|3|
	    #|s h|4|
	    When User click on add button
	    Then User enters value in Text Edit field "<textEditValue>"
	    Then User clicks on Submit button
	  	Then User should see Submission created successfully tooltip
	  	#Then User should see "<message>" 
			Examples: 
			|textEditValue|Valid testdata|error|
	    |             |Yes             |N    |
	    |sharath	    |Yes             |No    |
	    |Sharath      |No        		 |Yes    |
	    |s h          |No						 |Yes    |
	    |12345 				|No						 |Yes    |
	    |s1@ H				|No						 |Yes    |
	    
	 @DashboardWidget   @radiogroup
	    Scenario: Validate Adding fields to the public database Functionality-Radio Group
	    When User enters the below details for creating RadioGroup type column
 			|fieldLabel    |hint                 |defaultValue                  |infoText   						    |helpText							     |regex  |error message    |option1  |option2  |
 			|radioGroup    |Hint for radioGroup  | DefaultValue for radioGroup  |Info text for radioGroup  |Help text for radioGroup  |dummy  |Sample error msg |radio1   | radio2  |
			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User clicks on Radio option2
	    Then User clicks on Submit button
	    Then User should see Submission created successfully tooltip
	    
	 @DashboardWidget   @checkbox
	    Scenario: Validate Adding fields to the public database Functionality-CheckBox
	    When User enters the below details for creating CheckBox type column 
 			|fieldLabel |hint              |defaultValue               |infoText   						|helpText							 |
 			|checkbox   |Hint for checkBox | DefaultValue for checkBox |Info text for checkBox|Help text for checkBox|
			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button	  
	    Then User clicks on mandatory checkBox 
	    Then User clicks on Submit button
	    Then User should see Submission created successfully tooltip
	    #When User click on database
	    When User click on add button
	    Then User clicks on Submit button
	    Then User should see common error message for required fields
	    
	 @DashboardWidget   @dropdownlist
	    Scenario: Validate Adding fields to the public database Functionality-Dropdown List
	    When User enters the below details for creating DropdownList type column
 			|fieldLabel    |hint                 |defaultValue                  |infoText   						   |helpText							    |regex |error message   |option1|option2|
 			|dropdownList  |Hint for dropdownList| DefaultValue for dropdownList|Info text for dropdownList|Help text for dropdownList|dummy |Sample error msg|dd1   | dd2  | 																																																																																												
			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button
	    Then User clicks on Dropdown list
	    And User clicks on any option
	    Then User clicks on Submit button
	    Then User should see Submission created successfully tooltip
	     
