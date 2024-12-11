@DataBaseScenaRIO
Feature: Database Scenarios

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
  
	@DashboardWidget	@textEdit-number-defaultvalue @1stInExcel
    Scenario: Validate default value is submitted-Text Edit-Number
 			When User enters the below details for creating TextEdit type column with Number subtype
 			|fieldLabel     |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |minimumValue|maximumValue|
 			|textEdit_Number|Hint for textEdit_Number | 0|Info text for textEdit|Help text for textEdit| REGEX('^[a-z]*$','{textEdit}') |Only small letters are allowed|1|10|
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
	  	Then User should see Submission created successfully tooltip
#	  	And User enters database name in search box
    #	And User clicks on database name 
    	Then User verifies the entry made in the datatable
	 		|textDataInDatabaseRecord|
	 		|0|
     
   @DashboardWidget    @textEdit-email-defaultvalue @1stInExcel
    Scenario: Validate default value is submitted-Text Edit-Email
 			When User enters the below details for creating TextEdit type column with Email subtype
 			|fieldLabel    |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |
 			|textEdit_Email|Hint for textEdit | a@example.com|Info text for textEdit|Help text for textEdit|  ||
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
	  	Then User should see Submission created successfully tooltip
	  	#And User enters database name in search box
    	#And User clicks on database name 
    	Then User verifies the entry made in the datatable
	 		|textDataInDatabaseRecord|
	 		|a@example.com|

   @DashboardWidget     @textEdit-mobile-defaultvalue @1stInExcel
    Scenario: Validate default value is submitted-Text Edit-Mobile
 			When User enters the below details for creating TextEdit type column with Mobile subtype
 			|fieldLabel    |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |
 			|textEdit_Mobile|Hint for textEdit | 9885494478|Info text for textEdit|Help text for textEdit| ||
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
	  	Then User should see Submission created successfully tooltip  
#	  	And User enters database name in search box
    #	And User clicks on database name 
    	Then User verifies the entry made in the datatable
	 		|textDataInDatabaseRecord|
	 		|9885494478|
	 		
	 @DashboardWidget		@textEdit-decimal-defaultvalue @1stInExcel
    Scenario: Validate default value is submitted-Text Edit-Decimal
 			When User enters the below details for creating TextEdit type column with Decimal subtype
 			|fieldLabel    |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |minimumValue|maximumValue|
 			|textEdit_Decimal|Hint for textEdit | 0|Info text for textEdit|Help text for textEdit| ||0|10|
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
	  	Then User should see Submission created successfully tooltip
#	 		And User enters database name in search box
    #	And User clicks on database name 
    	Then User verifies the entry made in the datatable
	 		|textDataInDatabaseRecord|
	 		|0|
	 		
	 @DashboardWidget		@textEdit-otp-defaultvalue @1stInExcel
    Scenario: Validate default value is submitted-Text Edit-Otp
 			When User enters the below details for creating TextEdit type column with Otp subtype
 			|fieldLabel    |hint              |defaultValue              |infoText   						|helpText							| regex       |error message                 |
 			|textEdit_Otp|Hint for textEdit | 0|Info text for textEdit|Help text for textEdit| ||
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
	  	Then User should see Submission created successfully tooltip
#	  	And User enters database name in search box
    #	And User clicks on database name 
    	Then User verifies the entry made in the datatable
	 		|textDataInDatabaseRecord|
	 		|0|
	 		
	@DashboardWidget 		@radiogroup-dependency-validation @3rdInExcel
	    Scenario: Validate Dependency validation-Radio Group
	    When User enters the below details for creating RadioGroup type column with dependent fields
 			|dependentField1       |dependentField2     |fieldLabel     |state1_India |state2_India |state1_USA|state2_USA| country1|country2|Select type value1|Select type value2|
 			|Which state in India? |Which state in USA? |Which country? |Maharashtra  |Telangana    |Georgia   | Texas    |India    |USA     |Show|Hide|
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
	    Then User clicks on Radio button based on visible text <text>
	    |text|
	    |India| 
	    Then User clicks on Radio button based on visible text <text>
	    |text|
	    |USA| 
	    Then User clicks on Submit button
	    Then User should see Submission created successfully tooltip
	    
	 @DashboardWidget   @checkbox-required
	    Scenario: Validate Adding fields to the public database Functionality-CheckBox
	    When User enters the below details for creating CheckBox type column
 			|fieldLabel |hint              |defaultValue               |infoText   						|helpText							 |regex |error message   |
 			|checkbox   |Hint for checkBox | DefaultValue for checkBox |Info text for checkBox|Help text for checkBox|dummy |Sample error msg|
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
	    Then User clicks on checkBox(Required) 
	    Then User clicks on Submit button
	    Then User should see Submission created successfully tooltip
	    #When User click on database
	    When User click on add button
	    Then User clicks on Submit button
	    Then User should see common error message for required fields
	    
	 @DashboardWidget   @phone-requiredfield
    	Scenario: Validate required field is throwing error if blank field is submitted-Phone
 			When User enters the below details for creating Phone type column
     |Field Label |Value     |infoText           |helpText           |regex       | error message                 |
     |phone       |7780212345|Info text for phone|Help text for phone|REGEX('^\d{10}$','{phone}') |Only Indian numbers are allowed|
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
	    Then User clears text input field 
    	And User click on submit button
    	Then User should see common error message for required fields
   
	 @DashboardWidget		@number-integer-requiredfield
    	Scenario: Validate required field is throwing error if blank field is submitted-Number-Integer
 			When User enters the below details for creating Number type column
     |Field Label| value| Min | Max|infoText            |helpText            |regex                      | error message          |
     	|number     |5    |4    | 18 |Info text for number|Help text for number| REGEX('^[a-z]+$','{number}')|Only letters are allowed |
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
    	Then User clears Number input field 
    	And User click on submit button
    	Then User should see common error message for required fields     
    	
   @DashboardWidget 	@urlRequired
    	Scenario: Validate required field is throwing error if blank field is submitted-URL
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
    	Then User clears Url input field
    	And User click on submit button
    	Then User should see common error message for Invalid Format in fields
    	
   @DashboardWidget 	@daterangeRequired
    	Scenario: Validate required field is throwing error if blank field is submitted-Date Range
 			When User enters the below details for creating DateRange type column
     |Field Label|Start Date|End Date  |  infoText              |helpText                  |regex     | error message          |
     |dateRange  |03-12-2023|02-01-2024|Info text for dateRange |Help text for dateRange   |          |                        |
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
    	Then User should see common error message for required fields
    	
   @DashboardWidget 	@containerRequired
    	Scenario: Validate required field is throwing error if blank field is submitted-ContainerRequired
 			When User enters the below details for creating Container type column-Required
      |Dependent Field | Field Label| infoText                  |helpText               |regex     | error message          |
      |textEdit        |containerRequired   |Info text for Container    |Help text for Container|          |                        |
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
    	Then User should see common error message for required fields
    	
   @DashboardWidget 	@matrixRequired
    	Scenario: Validate required field is throwing error if blank field is submitted-MatrixRequired
 			When User enters the below details for creating Matrix type column-Required
      |Dependent Field1 |Dependent Field2 | Field Label        |No of Columns value| infoText                |helpText              |regex     | error message         |
      |textEdit         |	checkbox				|    matrixRequired  |1									 |Info text for Matrix     |Help text for Matrix  |          |                       |
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    And I wait for "1000" milli seconds
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    Then User should see the Updtaed datapoints
	    When User click on add button
    	And User click on submit button
    	Then User should see common error message for required fields
    	
   @DashboardWidget 	@signatureRequired
    	Scenario: Validate required field is throwing error if blank field is submitted-Signature
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
	    And User click on submit button
    	Then User should see common error message for required fields
    	
   @DashboardWidget 	@locationRequired
    	Scenario: Validate required field is throwing error if blank field is submitted-LocationRequired
 			When User enters the below details for creating Location type column-Required
      | Field Label| infoText                |helpText                |regex     | error message         |
      | locationRequired   |Info text for location   |Help text for location |           |                       |
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
    	Then User should see common error message for required fields
    	
   @DashboardWidget 	@qr/barcodescannerRequired
    	Scenario: Validate required field is throwing error if blank field is submitted-QR/Barcode ScannerRequired
 			When User enters the below details for creating QRBarcode Scanner type column-Required
      | Field Label         | infoText                        |helpText                        |regex     | error message         |
      | qr/barcodescannerRequired   |Info text for qr/barcodescanner  |Help text for qr/barcodescanner |          |                       |
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
    	And User click on submit button
    	Then User should see common error message for required fields
    	
  @DashboardWidget  	@actionbuttonRequired
    	Scenario: Validate required field is throwing error if blank field is submitted-Action ButtonRequired
 			When User enters the below details for creating ActionButton type column-Required
      | Field Label  | Action Type      |Choose Form        |Success message |Loading message|Error message|infoText                   |helpText                        |regex     | error message         |
      | actionButtonRequired | Create Submission|db_sharath2        | Success        |Loading        |Error        |Info text for ActionButton |Help text for ActionButton      |          |                       |
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
    	Then User should see common error message for required fields
    	
   @DashboardWidget 	  @textEdit-emailRequired
    Scenario: Validate required field is throwing error if blank field is submitted-Text Edit-Email
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
	    Then User clicks on Submit button
	    And I wait for "1000" milli seconds
	     When User click on add button
	    Then User clicks on Submit button
	    And I wait for "1000" milli seconds
	    #One assertion for only one entry is needed here.
	     When User click on add button
	    Then User clears TextEdit Email input field
	    Then User clicks on Submit button
	  	Then User should see common error message for required fields
	  	
	  	
	 @DashboardWidget 	  @textEdit-mobileRequired
    Scenario: Validate required field is throwing error if blank field is submitted-Text Edit-Mobile
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
	    Then User clears TextEdit Mobile inout field 
	    And I wait for "2000" milli seconds
	    Then User clicks on Submit button
	  	Then User should see common error message for required fields
	  	
	 @DashboardWidget 	  @textEdit-numberRequired
    Scenario: Validate required field is throwing error if blank field is submitted-Text Edit-Number
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
	    Then User clears TextEdit Email input field 
	    #same for all Text edit subtypes 
	    Then User clicks on Submit button
	  	Then User should see common error message for required fields
	  	
	@DashboardWidget  	@textEdit-decimalRequired
    Scenario: Validate required field is throwing error if blank field is submitted-Text Edit-Decimal
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
	    Then User clears TextEdit Email input field 
	    #same for all Text edit subtypes
	    Then User clicks on Submit button
	  	Then User should see common error message for required fields
	  	
	@DashboardWidget  	@textEdit-otpRequired
    Scenario: Validate required field is throwing error if blank field is submitted-Text Edit-Otp
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
	    Then User clears TextEdit Email input field 
	    # same step for TextEdit input field
	    Then User clicks on Submit button
	  	Then User should see common error message for required fields
	  	
	@DashboardWidget  	@triageDefaultvalue  @6thInExcel
	  	Scenario: When field visibility is controlled by triage configuration, the field's value is reset to the default instead of retaining its initially entered value, as it should  
	  	When User enters the below details for creating DropdownList and TextEdit type columns
 			|dependentLabel |fieldLabel    |hint                 |defaultValue                  |infoText   						   |helpText							    |regex |error message   |option1|option2|Select type value1|Select type value2|
 			|textEdit1      |dropdownList  |Hint for dropdownList| DefaultValue for dropdownList|Info text for dropdownList|Help text for dropdownList|dummy |Sample error msg|dd1   | dd2  |Hide             |Show							| 																																																																																												
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
	    Then User fetches the value from TextEdit field
	    Then User enters a value in TextEdit field 
	    |value|
	    |100|
	    Then User clicks on Dropdown list input
	    Then User selects the desired option from Dropdownlist input
	    |option|
	    |dd1|
	    Then User clicks on Dropdown list input
	    Then User selects the desired option from Dropdownlist input
	    |option|
	    |dd2|
	    Then User fetches the value from TextEdit field
	   
	@DashboardWidget   @texteditRegexDefaultvalue
    Scenario: Validate Defaultvalue is following regex-Text Edit 
 			When User enters the below details for creating TextEdit type column for Regex-Defaultvalue
 			|fieldLabel|defaultValue              | regex                         |error message                 |
 			|textEdit  | A| REGEX('^[a-z]*$','{textEdit}')|Only small letters are allowed|
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
	  	Then User should see common error message for Invalid Format in fields  
	  	
	 @DashboardWidget 	@shortTextRegexDefaultvalue
 			Scenario: Validate Defaultvalue is following regex-Short Text
 			When User enters the below details for creating ShortText type column for Regex-Defaultvalue
     |Field Label |defaultValue|regex |error message									|
     |shortText   |short       |REGEX('^[^a-zA-Z0-9]+$','{shortText}')|Only special chars are allowed |
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
    	Then User should see common error message for Invalid Format in fields
			
	@DashboardWidget		@emailRegexDefaultvalue  
    	Scenario: Validate Defaultvalue is following regex-Email
 			When User enters the below details for creating Email type column for Regex-Defaultvalue
     |Field Label | defaultValue    |regex                       |error message                |
     |email       |example@a.com  |REGEX('(.+)@(zvolv.com)$','{email}') |Please enter valid mail address|
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
    	Then User should see common error message for Invalid Format in fields
    	
  @DashboardWidget  	@texteditRequired
    Scenario: Validate required field is throwing error if blank field is submitted-Text Edit 
 			When User enters the below details for creating TextEdit type column as Requiredfield
 			|fieldLabel|hint              |defaultValue              |
 			|textEdit  |Hint for textEdit| DefaultValue for textEdit|
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
	  	Then User clears Text Edit field
	  	Then User clicks on Submit button
	  	Then User should see common error message for required fields
	  	
	 @DashboardWidget 	@datePickerReflectionInFormSearch
	  	Scenario: Validate datepicker format is reflecting in Form/Database Search
	  	When User creates a Datepicker field
	  	|fieldLabel|
	  	|datePicker|
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
	    Then User clicks on DatePicker Input
	    Then User clicks on the desired date
 			|day|month and year| 
 			|1  |Jan 2024      | 
	  	Then User clicks on Submit button
	    Then User should see Submission created successfully tooltip
	    And I wait for "5000" milli seconds
	    And I click on "TY=close"
	    And User creates database and creates a Form/Database Search field
	    |dbName      |fieldLabel         |
	    |formDatabase|form/DatabaseSearch|
	    And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User enters database name in search box from datatable
	    |dbName      |
	    |formDatabase|
    	And User clicks on database name from datatable
    	|dbName      |
	    |formDatabase|
	    When User click on add button
	    Then User verifies the date format
	    Then User clicks on Submit button
	  	
	 @DashboardWidget 	@autonumberScenario1
    	Scenario: Validate Adding fields to the public database Functionality-AutoNumber
 			When User enters the below details for creating AutoNumber type column
      | Field Label| StartSequqnce Value|infoText                |helpText                 |regex     | error message         |
      |autoNumber  |			1							|Info text for AutoNumber |Help text for AutoNumber|          |                       |
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
    	#Then User should see Submission created successfully tooltip
    	#And I see "VT=Submission created successfully" web element
    	And I wait for "2000" milli seconds
    	And User gets Autonumber value from the Entry before deleting 
    	And User clicks on checkbox to select an entry 
    	Then User clicks on Delete icon
    	And I click on "VT=Delete" button
    	#And I see "VT=Submissions are deleted successfully" web element 
    	And I wait for "2000" milli seconds
    	And I click on "VT=Add" button
    	And I wait for "2000" milli seconds
    	And I click on "VT=Submit" button
    	#And I see "VT=Submission created successfully" web element
    	And User gets Autonumber value from the Entry after deleting
    	And User compares Autonumber entries 
    	
   @DashboardWidget 	@autonumberScenario2
    	Scenario: Validate Adding fields to the public database Functionality-AutoNumber
 			When User enters the below details for creating AutoNumber type column
      | Field Label| StartSequqnce Value|infoText                |helpText                 |regex     | error message         |
      |autoNumber  |			1							|Info text for AutoNumber |Help text for AutoNumber|          |                       |
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
    	#Then User should see Submission created successfully tooltip
    	#And I see "VT=Submission created successfully" web element
    	And I wait for "2000" milli seconds
    	And User gets Autonumber value from the Entry before deleting 
    	And User clicks on checkbox to select an entry 
    	Then User clicks on Delete icon
    	And I click on "VT=Delete" button
    	#And I see "VT=Submissions are deleted successfully" web element 
    	And I wait for "2000" milli seconds
    	And I click on "VT=Add" button
    	And I wait for "2000" milli seconds
    	And I click on "VT=Submit" button
    	#And I see "VT=Submission created successfully" web element
    	And User gets Autonumber value from the Entry after deleting
    	And User compares Autonumber entries 
	  	
	@DashboardWidget  	@checkboxBotPredefined
	  	Scenario: Validate Checkbox with Prevalidation bot with ex
	  	When User enters the below details for creating CheckBox type column by selecting Bot in Data validation 
 			|fieldLabel |hint              |defaultValue               |infoText   						|helpText							 |
 			|checkbox   |Hint for checkBox | DefaultValue for checkBox |Info text for checkBox|Help text for checkBox|
			And User click on save button
	    Then User should see an Update form popup
	    When User check on retrofit form checkbox
	    And User click on ok button
	    Then User should see Form updated succcessfully tooltip
	    And User clicks on Builder icon in sidebar
	    And I click on "VT=Automations"
	    And I wait for "2000" milli seconds
	    #And I click on "VT=testbot"
	    And User clicks on "testbot" automation bot in Builder Automations
	    #And User pastes Element ID in Programme editor in Builder Automations 
	    Then User clicks on Save button in Builder Automations
	    And I wait for "6000" milli seconds
	    And User clicks on close icon at top right in Builder Automations
	    And User clicks on Builder icon in sidebar
	    When User again click on databases from side bar
	    Then User should navigated to Databases page
	    And User Enter the database name on searchbox
	    And User click on the displayed database
	    When User click on add button	  
	    Then User clicks on mandatory checkBox 
	    And User fetches the message from Prevalidation bot
	
@DashboardWidget		@FileUpload_ProfileImage_Removal
   Scenario Outline: Validating File Upload Functonality-
   Given User enter the field label as "<Field label>"
   When User click on TextEdit Dropdown
   And User click on File Upload
   And User click on Allowed file Types dropdown 
   And User clicks on "<File Type>"2
   And User enter Maximum Number Of Files as "<Max No>"
   And User enter Maximum File Size as "<Max Size>"
   And User click on Show As Profile Image Picker
   And User click on Helpers
   And User enter Info Text as "<Info Text>"
   And User enter Help Text as "<Help Text>"
   And User click on Advanced 
   And User click on Required
   And User click on Admin only
   And User click on Unique
   When User click On Done Button
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
    And User Uploaded "<File Type>" file
    And User Uploads "<File Type>" file
    #And User uploads "<Max No>" "<File Type>"
    And User click on submit button
    Then User should see submission created successfully tooltip 
    And I wait for "1000" milli seconds
    And User clicks on edit icon beside 1st row in Database
    And I wait for "1000" milli seconds
    Then User removes the uploaded file Profile Image
    And User click on submit button
    Then User should see common error message for required fields
   Examples:
   |Field label|File Type |Max No|Max Size|Info Text          |Help Text          |
   |File Upload|Image     |1     |1000    |This is File Upload|This is File Upload|
   
 @DashboardWidget  @FileUpload_Via_DataImport
   Scenario Outline: Validating File Upload Functonality-
   Given User enter the field label as "<Field label>"
   When User click on TextEdit Dropdown
   And User click on File Upload
   And User click on Allowed file Types dropdown 
   And User clicks on "<File Type>"2
   And User enter Maximum Number Of Files as "<Max No>"
   And User enter Maximum File Size as "<Max Size>"
   And User click on Show As Profile Image Picker
   And User click on Helpers
   And User enter Info Text as "<Info Text>"
   And User enter Help Text as "<Help Text>"
   And User click on Advanced 
   And User click on Required
   And User click on Admin only
   And User click on Unique
   When User click On Done Button
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    And User refreshes the page
    And I wait for "2000" milli seconds
    And I click on "NZ=cloud-upload"  
    Then User uploads the file by clicking on Upload button "<FilePath>"
	    |FilePath																					              |
	    |/Samples/fileUpload.xlsx|
	  And I wait for "5000" milli seconds
    And I click on "VT=Ok" button
   Examples:
   |Field label|File Type |Max No|Max Size|Info Text          |Help Text          |
   |File Upload|Image     |1     |1000    |This is File Upload|This is File Upload|
	
