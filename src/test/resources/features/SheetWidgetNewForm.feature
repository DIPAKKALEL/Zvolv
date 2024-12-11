 
 Feature: Database Dropdowns for Sheet Widgets
   Background:
    Given login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|
    And I click on Avatar
    When Creating public database with below credentials
    |DatabaseType|Description                  |Tag|
    |public      |This is test public database |AutomationDB|
    |private     |This is test private database|AutomationDB|
         
    When User click on searchbox
    And  User enter the created database name
    #Then User should see the database
    When User click on database
    And User wait for 2 Seconds
    And User refresh the page
    #Then User should navigated to database page
    When User click on edit icon
    And User click on edit columns
    Then User should see the datapoints form
    When User click on name textfield
   # Then User should see the configure form
   
@ZvolvDashboards @Dropdown
    Scenario: New Form - Sheet Widget with One Dropdown Field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget Dropdown"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name"
     And User click on Dropdown
     And User click on "Dropdown List" 
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Sai"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Dipak"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Rohit"
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I click on "LABEL1=Employee Name"
    And I wait for 1 Seconds
    And I click on "VT=Sai"[3]
    And User click on "Submit"[1] Button
    And I wait for 2 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
   	Then I see "VT=Sai" web element
   	And I wait for 1 Seconds
  #  And I click on "VT=Download"
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Dropdown New Form.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "VT=Sai" web element
    Then I see "VT=Rohit" web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Sai" web element
    Then I see "VT=Rohit" web element
    And I take Screenshot
    And User wait for 1 Seconds
    
@ZVOLV-1 @DropdownwithDefaultField
    Scenario: New Form - Sheet Widget with One Dropdown with one Default field - Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget Dropdown with default field"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name"
     And User click on Dropdown
     And User click on "Dropdown List" 
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Sai"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Dipak"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Rohit"
     And I click on "LABEL1JS=Allow add options"
     And I click on "VT=Choose Default Value"
     And I wait for 1 Seconds
     And I click on "VT=Dipak"
		 And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
		And I see "VT=Dipak" web element
    And User click on "Submit"[1] Button
    And I wait for 2 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
   	Then I see "VT=Dipak" web element
   	And I wait for 1 Seconds
  #  And I click on "VT=Download"
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Dropdown New Form.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "VT=Dipak" web element
    Then I see "VT=Rohit" web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Dipak" web element
    Then I see "VT=Rohit" web element
    And I take Screenshot
    And User wait for 1 Seconds
    
@ZVOLV-1  @DropdownwithDefaultField-D3
    Scenario: New Form - Sheet Widget with three Dropdown with three defaullt Field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget Dropdown with default field"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name"
     And User click on Dropdown
     And User click on "Dropdown List" 
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Sai"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Dipak"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Rohit"
     And I click on "LABEL1JS=Allow add options"
     And I click on "VT=Choose Default Value"
     And I wait for 1 Seconds
     And I click on "VT=Dipak"
		 And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 2 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name 1"
     And User click on Dropdown
     And User click on "Dropdown List" 
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Sai"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Dipak"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Rohit"
     And I click on "LABEL1JS=Allow add options"
     And I click on "VT=Choose Default Value"
     And I wait for 1 Seconds
     And I click on "VT=Dipak"
		 And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name 3"
     And User click on Dropdown
     And User click on "Dropdown List" 
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Sai"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Dipak"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Rohit"
     And I click on "LABEL1JS=Allow add options"
     And I click on "VT=Choose Default Value"
     And I wait for 1 Seconds
     And I click on "VT=Dipak"
		 And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
		And I see "VT=Dipak"[1] web element
		And I see "VT=Dipak"[2] web element
		And I see "VT=Dipak"[3] web element
    And User click on "Submit"[1] Button
    And I wait for 2 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I see "VT=Dipak"[1] web element
		And I see "VT=Dipak"[2] web element
		And I see "VT=Dipak"[3] web element
   	And I wait for 1 Seconds
  #  And I click on "VT=Download"
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Dropdown New Form.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    And I see "VT=Dipak"[1] web element
		And I see "VT=Dipak"[2] web element
		And I see "VT=Dipak"[3] web element
    Then I see "VT=Rohit" web element
    And I see "VT=Dipak"[4] web element
		And I see "VT=Dipak"[5] web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
		And I see "VT=Dipak"[1] web element
		And I see "VT=Dipak"[2] web element
		And I see "VT=Dipak"[3] web element
    Then I see "VT=Rohit" web element
    And I see "VT=Dipak"[4] web element
		And I see "VT=Dipak"[5] web element    
    And I take Screenshot
    And User wait for 1 Seconds
    
@ZVOLV-1 @Dropdown-D3
    Scenario: New Form - Sheet Widget with three Dropdown Field - Upload one field
     Given User enter "Field Label"[1] as "Sheet Widget Dropdown"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name"
     And User click on Dropdown
     And User click on "Dropdown List" 
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Sai"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Dipak"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Rohit"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name 1"
     And User click on Dropdown
     And User click on "Dropdown List" 
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Sai"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Dipak"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Rohit"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name 2"
     And User click on Dropdown
     And User click on "Dropdown List" 
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Sai"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Dipak"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "Rohit"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I click on "LABEL1=Employee Name"
    And I wait for 2 Seconds
    And I click on "VT=Sai"
    And I click on "LABEL1=Employee Name 1"
    And I wait for 2 Seconds
    And I click on "VT=Sai"[2]
    And I click on "LABEL1=Employee Name 2"
    And I wait for 2 Seconds
    And I click on "VT=Sai"[3]
    And User click on "Submit"[1] Button
    And I wait for 2 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
   	Then I see "VT=Sai"[1] web element
   	Then I see "VT=Sai"[2] web element
   	Then I see "VT=Sai"[3] web element	
   	And I wait for 2 Seconds
  #  And I click on "VT=Download"
    And I wait for 2 Seconds
    And I Import the File "Sheet Widget Dropdown New Form.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "VT=Sai"[1] web element
   	Then I see "VT=Sai"[2] web element
   	Then I see "VT=Sai"[3] web element	
    Then I see "VT=Rohit" web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Sai"[1] web element
   	Then I see "VT=Sai"[2] web element
   	Then I see "VT=Sai"[3] web element	
    Then I see "VT=Rohit" web element
    And I take Screenshot
    And User wait for 1 Seconds

@ZvolvDashboards @TextEdit-1
    Scenario: New Form - Sheet Widget with One Text Edit Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name"
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I enter "LABEL3=Employee Name" as "Sai"
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
    Then I see text "VT=Sai"[1] of web element
   	And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see text "VT=Sai"[1] of web element
    Then I see text "VT=Rohit"[2] of web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Sai" web element
    Then I see "VT=Rohit" web element
    And I take Screenshot
    And User wait for 1 Seconds
    
@ZVOLV-1  @TextEdit-3
    Scenario: New Form - Sheet Widget with One Text Edit Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name-1"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name-2"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I enter "LABEL3=Employee Name" as "Sai"
     And I enter "LABEL3=Employee Name-1" as "Sai"
      And I enter "LABEL3=Employee Name-2" as "Sai"
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
    Then I see text "VT=Sai"[1] of web element
    Then I see text "VT=Sai"[2] of web element
    Then I see text "VT=Sai"[3] of web element
   	And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see text "VT=Sai"[1] of web element
    Then I see text "VT=Sai"[2] of web element
    Then I see text "VT=Sai"[3] of web element
    Then I see text "VT=Rohit"[4] of web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Sai"[1] web element
    Then I see "VT=Sai"[2] web element
    Then I see "VT=Sai"[3] web element
    Then I see "VT=Rohit"[1] web element
    And I take Screenshot
    And User wait for 1 Seconds
    
    
@ZVOLV-1  @TextEdit-1DefaultField
    Scenario: New Form - Sheet Widget with One Text Edit with Default field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name"
     And I click on "VT=Default Value"
     And I enter "PH=Default value" as "Sai"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    Then I see text "VT=Sai"[1] of web element
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
    Then I see text "VT=Sai"[1] of web element
   	And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see text "VT=Sai"[1] of web element
    Then I see text "VT=Rohit"[2] of web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Sai"[1] web element
    Then I see "VT=Rohit"[1] web element
    And I take Screenshot
    And User wait for 1 Seconds
    
    
@ZVOLV-1  @TextEdit-3DefaultField 
    Scenario: New Form - Sheet Widget with One Text Edit with Default field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name"
     And I click on "VT=Default Value"
     And I enter "PH=Default value" as "Sai"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name-1"
     And I click on "VT=Default Value"
     And I enter "PH=Default value" as "Sai"
     And User click on "Done"[2] button 
      And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name-2"
     And I click on "VT=Default Value"
     And I enter "PH=Default value" as "Sai"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    Then I see text "VT=Sai"[1] of web element
    Then I see text "VT=Sai"[2] of web element
    Then I see text "VT=Sai"[3] of web element
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
    And I take Screenshot
    Then I see text "VT=Sai"[1] of web element
    Then I see text "VT=Sai"[2] of web element
    Then I see text "VT=Sai"[3] of web element
   	And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see text "VT=Sai"[1] of web element
    Then I see text "VT=Sai"[2] of web element
    Then I see text "VT=Sai"[3] of web element
    Then I see text "VT=Rohit"[4] of web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Sai"[1] web element
    Then I see "VT=Sai"[2] web element
    Then I see "VT=Sai"[3] web element
    Then I see "VT=Sai"[4] web element
    Then I see "VT=Sai"[5] web element
    Then I see "VT=Rohit"[1] web element
    And I take Screenshot
    And User wait for 1 Seconds
    
@ZvolvDashboards	@CheckBox-1
    Scenario: New Form - Sheet Widget with One Check Box field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Check Box"
     And User click on Dropdown
     And I click on "VT=Check Box"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for "3000" milli seconds
    Then I see "LABLE=Check Box"[1] web element
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
    Then I see "LABLE=Check Box"[1] web element
   	And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget Checkbox.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "LABLE=Check Box"[1] web element
    Then I see "LABLE=Check Box"[2] Selected Checkbox
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "LABLE=Check Box"[1] Selected Checkbox
    Then I see "LABLE=Check Box"[2] Selected Checkbox
    And I take Screenshot
    
    
@ZVOLV-1  @CheckBox-3
    Scenario: New Form - Sheet Widget with One Check Box field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Check Box"
     And User click on Dropdown
     And I click on "VT=Check Box"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Check Box-1"
     And User click on Dropdown
     And I click on "VT=Check Box"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Check Box-2"
     And User click on Dropdown
     And I click on "VT=Check Box"
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    Then I see "LABLE=Check Box"[1] web element
    Then I see "LABLE=Check Box-1"[1] web element
    Then I see "LABLE=Check Box-2"[1] web element
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
    Then I see "LABLE=Check Box"[1] web element
    Then I see "LABLE=Check Box-1"[1] web element
    Then I see "LABLE=Check Box-2"[1] web element
    Then I see "LABLE=Check Box"[2] Selected Checkbox
   	And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget Checkbox.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "LABLE=Check Box"[1] web element
    Then I see "LABLE=Check Box-1"[1] web element
    Then I see "LABLE=Check Box-2"[1] web element
    Then I see "LABLE=Check Box"[2] Selected Checkbox
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "LABLE=Check Box"[1] Selected Checkbox
    Then I see "LABLE=Check Box-1"[1] Selected Checkbox
    Then I see "LABLE=Check Box-2"[1] Selected Checkbox
    Then I see "LABLE=Check Box"[2] Selected Checkbox
    And I take Screenshot
    
@ZVOLV-1 @CheckBox-1Default
    Scenario: New Form - Sheet Widget with One Check Box Default field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Check Box"
     And User click on Dropdown
     And I click on "VT=Check Box"
     And I wait for 1 Seconds
     And I click on "LABEL1JS=Default value"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for "3000" milli seconds
    Then I see "LABLE=Check Box"[1] web element
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
    Then I see "LABLE=Check Box"[1] web element
   	And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget Checkbox.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "LABLE=Check Box"[1] web element
    Then I see "LABLE=Check Box"[2] Selected Checkbox
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "LABLE=Check Box"[1] Selected Checkbox
    Then I see "LABLE=Check Box"[2] Selected Checkbox
    And I take Screenshot
    
    
@ZVOLV-1  @CheckBox-3Default
    Scenario: New Form - Sheet Widget with One Check Box Default field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Check Box"
     And User click on Dropdown
     And I click on "VT=Check Box"
     And I click on "LABEL1JS=Default value"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Check Box-1"
     And User click on Dropdown
     And I click on "VT=Check Box"
      And I click on "LABEL1JS=Default value"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Check Box-2"
     And User click on Dropdown
     And I click on "VT=Check Box"
      And I click on "LABEL1JS=Default value"
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    Then I see "LABLE=Check Box"[1] Selected Checkbox
    Then I see "LABLE=Check Box-1"[1] Selected Checkbox
    Then I see "LABLE=Check Box-2"[1] Selected Checkbox
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
    Then I see "LABLE=Check Box"[1] Selected Checkbox
    Then I see "LABLE=Check Box-1"[1] Selected Checkbox
    Then I see "LABLE=Check Box-2"[1] Selected Checkbox
   	And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget Checkbox.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "LABLE=Check Box"[1] Selected Checkbox
    Then I see "LABLE=Check Box-1"[1] Selected Checkbox
    Then I see "LABLE=Check Box-2"[1] Selected Checkbox
    Then I see "LABLE=Check Box"[2] Selected Checkbox
    Then I see "LABLE=Check Box-1"[2] Selected Checkbox
    Then I see "LABLE=Check Box-2"[2] Selected Checkbox
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "LABLE=Check Box"[1] Selected Checkbox
    Then I see "LABLE=Check Box-1"[1] Selected Checkbox
    Then I see "LABLE=Check Box-2"[1] Selected Checkbox
    Then I see "LABLE=Check Box"[2] Selected Checkbox
    Then I see "LABLE=Check Box-1"[2] Selected Checkbox
    Then I see "LABLE=Check Box-2"[2] Selected Checkbox
    And I take Screenshot
    

 @ZvolvDashboards   @RadioGroup-1
    Scenario: New Form - Sheet Widget with One radio Group field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Radio Group"
     And User click on Dropdown
     And I click on "VT=Radio Group"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "YES"
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "NO"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    Then I see "VT=Radio Group" web element
    Then I see "VT=YES" web element
    Then I see "VT=NO" web element
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I see "VT=Invalid formats detected for certain fields. Please review entries marked in red" web element
    And I click on "LABEL1=YES"
     And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
    Then I see "VT=Radio Group" web element
    Then I see "VT=YES" web element
    Then I see "VT=NO" web element
   	And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget Radio Group.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "VT=Radio Group"[1] web element
    Then I see "VT=YES"[1] web element
    Then I see "VT=NO"[1] web element
    Then I see "VT=Radio Group"[2] web element
    Then I see "VT=YES"[2] web element
    Then I see "VT=NO"[2] web element
    Then I see "VT=Radio Group"[3] web element
    Then I see "VT=YES"[3] web element
    Then I see "VT=NO"[3] web element
    Then I see "VT=Radio Group"[4] web element
    Then I see "VT=YES"[4] web element
    Then I see "VT=NO"[4] web element
    Then I see "VT=Radio Group"[5] web element
    Then I see "VT=YES"[5] web element
    Then I see "VT=NO"[5] web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Radio Group"[1] web element
    Then I see "VT=YES"[1] web element
    Then I see "VT=YES"[2] web element
    Then I see "VT=YES"[3] web element
    Then I see "VT=NO"[1] web element
    Then I see "VT=NO"[2] web element
    And I take Screenshot
    
    
@ZVOLV-1 @RadioGroup-3
    Scenario: New Form - Sheet Widget with three Radio Group field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Radio Group"
     And User click on Dropdown
     And I click on "VT=Radio Group"
     And I wait for 1 Seconds
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "YES"
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "NO"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Radio Group-1"
     And User click on Dropdown
     And I click on "VT=Radio Group"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "YES"
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "NO"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Radio Group-2"
     And User click on Dropdown
     And I click on "VT=Radio Group"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "YES"
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "NO"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    Then I see "VT=Radio Group"[1] web element
    Then I see "VT=YES"[1] web element
    Then I see "VT=NO"[1] web element
    Then I see "VT=Radio Group-1"[1] web element
    Then I see "VT=YES"[2] web element
    Then I see "VT=NO"[2] web element
    Then I see "VT=Radio Group-2"[1] web element
    Then I see "VT=YES"[3] web element
    Then I see "VT=NO"[3] web element
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I see "VT=Invalid formats detected for certain fields. Please review entries marked in red" web element
    And I click on "LABEL1=YES"
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
  #  And I click on Checkbox
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
   # And I click on "NZIN=edit"[2] Button
    And I wait for 1 Seconds
  # And I click on "VT=Download"
    And I Import the File "Sheet Widget Radio Group.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "VT=Radio Group"[1] web element
    Then I see "VT=YES"[1] web element
    Then I see "VT=NO"[1] web element
    Then I see "VT=Radio Group-1"[1] web element
    Then I see "VT=YES"[2] web element
    Then I see "VT=NO"[2] web element
    Then I see "VT=Radio Group-2"[1] web element
    Then I see "VT=YES"[3] web element
    Then I see "VT=NO"[4] web element
    Then I see "VT=YES"[4] web element
    Then I see "VT=NO"[5] web element
    Then I see "VT=YES"[5] web element
    Then I see "VT=NO"[6] web element
    Then I see "VT=YES"[6] web element
    Then I see "VT=NO"[7] web element
    Then I see "VT=YES"[7] web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Radio Group"[1] web element
    Then I see "VT=YES"[1] web element
    Then I see "VT=NO"[1] web element
    Then I see "VT=YES"[2] web element
    Then I see "VT=NO"[2] web element
    Then I see "VT=YES"[3] web element
    Then I see "VT=Radio Group-1"[1] web element
    Then I see "VT=Radio Group-2"[1] web element
    And I take Screenshot
    
    
@ZVOLV-1  @RadioGroup-3Default
    Scenario: New Form - Sheet Widget with three Radio Group with default field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Radio Group"
     And User click on Dropdown
     And I click on "VT=Radio Group"
     And I wait for 1 Seconds
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "YES"
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "NO"
     And I wait for 1 Seconds
     And I click on "VT=Choose Default Value"
     And I click on "VT=YES" dropdown
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Radio Group-1"
     And User click on Dropdown
     And I click on "VT=Radio Group"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "YES"
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "NO"
     And I wait for 1 Seconds
     And I click on "VT=Choose Default Value"
     And I click on "VT=NO" dropdown
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Radio Group-2"
     And User click on Dropdown
     And I click on "VT=Radio Group"
     And I wait for 1 Seconds
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "YES"
     And I click on "VT=Add option"
     And I enter "LABEL1=Add option" as "NO"
     And I wait for 1 Seconds
     And I click on "VT=Choose Default Value"
     And I click on "VT=YES" dropdown
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    Then I see "VT=Radio Group"[1] web element
    Then I see "VT=YES"[1] web element
    Then I see "VT=NO"[1] web element
    Then I see "VT=Radio Group-1"[1] web element
    Then I see "VT=YES"[2] web element
    Then I see "VT=NO"[2] web element
    Then I see "VT=Radio Group-2"[1] web element
    Then I see "VT=YES"[3] web element
    Then I see "VT=NO"[3] web element
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Radio Group.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    Then I see "VT=Radio Group"[1] web element
    Then I see "VT=YES"[1] web element
    Then I see "VT=NO"[1] web element
    Then I see "VT=Radio Group-1"[1] web element
    Then I see "VT=YES"[2] web element
    Then I see "VT=NO"[2] web element
    Then I see "VT=Radio Group-2"[1] web element
    Then I see "VT=YES"[3] web element
    Then I see "VT=NO"[4] web element
    Then I see "VT=YES"[4] web element
    Then I see "VT=NO"[5] web element
    Then I see "VT=YES"[5] web element
    Then I see "VT=NO"[6] web element
    Then I see "VT=YES"[6] web element
    Then I see "VT=NO"[7] web element
    Then I see "VT=YES"[7] web element
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=Radio Group"[1] web element
    Then I see "VT=YES"[1] web element
    Then I see "VT=NO"[1] web element
    Then I see "VT=YES"[2] web element
    Then I see "VT=NO"[2] web element
    Then I see "VT=YES"[3] web element
    Then I see "VT=Radio Group-1"[1] web element
    Then I see "VT=YES"[4] web element
    Then I see "VT=Radio Group-2"[1] web element
    Then I see "VT=YES"[5] web element
    And I take Screenshot
    
    
@ZvolvDashboards   @USERSearchSheetWidget
    Scenario: New Form - Sheet Widget with One User Search field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "User Search"
     And User click on Dropdown
     And I click on "VT=User Search"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I click on "VT=ADD" button
    And I click on "LABEL2=User Search"[2]
    And I wait for 3 Seconds
    And I click on "VT=admin"[2]
    And I wait for 1 Seconds
    And I click on "VT=Add"[2] button
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I see "VT=admin" web element
    And I Import the File "Sheet Widget User Search.xlsx" with same data points
    And User wait for 2 Seconds
    And I see "VT=admin"[1] web element
    And I see "VT=admin"[2] web element
    And I take Screenshot
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=admin"[1] web element
    And I see "VT=admin"[2] web element
    And I take Screenshot
    
@ZvolvDashboards  @SWFileUpload_deprecated
    Scenario: New Form - Sheet Widget with One File Upload deprecated field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "FileUpload_deprecated"
     And I wait for 1 Seconds
     And User click on Dropdown
     And I click on "VT=File Upload(deprecated)"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I click on "VT=ADD" button
    And I Import the File "Dashboard Image.png" with same data points
    And I click on "VT=Add"[2] button
    #And I wait for 1 Seconds
    #And I wait for "1000" milli seconds
    #And I click on "DIIN=edit"[2]  form Button 
    #And I wait for 1 Seconds
    #And I see "VT=admin" web element
    #And I Import the File "Sheet Widget User Search" with same data points
    #And User wait for 2 Seconds
    #And I see "VT=admin"[1] web element
    #And I see "VT=admin"[2] web element
    #And I take Screenshot
    #And I click on "VT=Submit" button
    #And I wait for 2 Seconds
    #And I click on "VT=View" button
    #And I wait for 2 Seconds
    #And I see "VT=admin"[1] web element
    #And I see "VT=admin"[2] web element
    #And I take Screenshot
    
    
@ZvolvDashboards  @SWFileUpload
    Scenario: New Form - Sheet Widget with One File Upload deprecated field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "FileUpload"
     And I wait for 1 Seconds
     And User click on Dropdown
     And I click on "VT=File Upload"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget User Search.xlsx" with same data points
    And I Import the File "Dashboard Image.png" with same data points
 		And I click on "VT=Submit" button
    And I wait for 1 Seconds
    #And I click on "VT=admin"
    #And I wait for 1 Seconds
    #And User click on "Submit"[1] Button
    #And I wait for 1 Seconds
    #And I wait for "1000" milli seconds
    #And I click on "DIIN=edit"[2]  form Button 
    #And I wait for 1 Seconds
    #And I see "VT=admin" web element
    #And I Import the File "Sheet Widget User Search" with same data points
    #And User wait for 2 Seconds
    #And I see "VT=admin"[1] web element
    #And I see "VT=admin"[2] web element
    #And I take Screenshot
    #And I click on "VT=Submit" button
    #And I wait for 2 Seconds
    #And I click on "VT=View" button
    #And I wait for 2 Seconds
    #And I see "VT=admin"[1] web element
    #And I see "VT=admin"[2] web element
    #And I take Screenshot
    
@ZvolvDashboards @SWRating_Bar
    Scenario: New Form - Sheet Widget with One User Search field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Rating Bar"
     And User click on Dropdown
     And I click on "VT=Rating Bar"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I click on "TY=star"[10]
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I take Screenshot
    #Then I see 5 rating on the rating bar
    And I Import the File "Sheet Widget Rating Bar.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I take Screenshot

@ZvolvDashboards @SWProgressBar
    Scenario: New Form - Sheet Widget with One User Search field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Progress Bar"
     And User click on Dropdown
     And I click on "VT=Progress Bar"
     And I wait for 1 Seconds
     And I click on "VT=Value"
     And I enter "PH=Value" as "5"
     And I click on "VT=Min"
     And I enter "PH=Min" as "1"
     And I click on "VT=Max"[2]
     And I wait for "1000" milli seconds
     And I enter "PH=Max" as "100"
     And I click on "VT=Step size"
     And I enter "PH=Step size" as "1"
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
  #  And I click on "TY=star"[10]
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    Then I see 5 rating on the rating bar
    And I Import the File "Sheet Widget Progress Bar.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I take Screenshot
    
 @ZvolvDashboards   @SWForm/DatabaseSearch
    Scenario: New Form - Sheet Widget with One User Search field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Form/Database Search"
     And User click on Dropdown
     And I click on "VT=Form/Database Search"
     And I wait for 1 Seconds
     And I click on "VT=Choose Form"
     And I wait for 1 Seconds
     And I click on "VT=Activity Feed"
      And I wait for 1 Seconds
     And I click on "NZPH=Search Field"[1]
     And I click on "VT=NAME"
     And I wait for 1 Seconds
     And I click on "NZPH=Select Field"[1]
     And I click on "VT=NAME"
     And I wait for 1 Seconds
     And I click on "NZPH=Display Field"[1]
     And I click on "VT=NAME"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I click on "LABEL1=Form/Database Search"
    And I wait for 1 Seconds
    And I click on "VT=DIPAK KALEL"
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
		Then I see "VT=DIPAK KALEL" web element    
    And I Import the File "Sheet Widget Form Search.xlsx" with same data points
    And User wait for 2 Seconds
    Then I see "VT=DIPAK KALEL"[1] web element
    Then I see "VT=DIPAK KALEL"[2] web element
    And I take Screenshot
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=DIPAK KALEL"[1] web element
    Then I see "VT=DIPAK KALEL"[2] web element
    And I take Screenshot
    
 @ZvolvDashboards   @SWStaticText
    Scenario: New Form - Sheet Widget with One User Search field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "<b>This is bold text</b>"
     And User click on Dropdown
     And I click on "VT=Static Text"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    Then I see "VT=This is bold text" web element
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    Then I see "VT=This is bold text" web element
#    And I Import the File "Sheet Widget Form Search.xlsx" with same data points
    And User wait for 2 Seconds
    And I take Screenshot
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    Then I see "VT=<b>This is bold text</b>" web element
    And I take Screenshot
    
    
 @ZvolvDashboards   @SWLocation
    Scenario: New Form - Sheet Widget with Location field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Location"
     And User click on Dropdown
     And I click on "VT=Location"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
   # Then I see "VT=This is bold text" web element
    #And User click on "Submit"[1] Button
    #And I wait for 1 Seconds
    #And I wait for "1000" milli seconds
    #And I click on "DIIN=edit"[2]  form Button 
    #And I wait for 1 Seconds
    #Then I see "VT=This is bold text" web element
#    And I Import the File "Sheet Widget Form Search.xlsx" with same data points
    #And User wait for 2 Seconds
    #And I take Screenshot
    #And I click on "VT=Submit" button
    #And I wait for 2 Seconds
    #And I click on "VT=View" button
    #And I wait for 2 Seconds
    #Then I see "VT=<b>This is bold text</b>" web element
    #And I take Screenshot
    
    
@ZvolvDashboards  @SWRichTextEditor
    Scenario: New Form - Sheet Widget with Rich Text Editor field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Add Your Rich Text"
     And User click on Dropdown
     And I click on "VT=Rich Text Editor"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=Add Your Rich Text" web element
    And I click on "LABEL22=Add Your Rich Text"[2]
    And I click on "VT=Heading 1"
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I see "VT=Add Your Rich Text" web element
    And I Import the File "Sheet Widget Rich Text Editor.xlsx" with same data points
    And User wait for 2 Seconds
    And I see "VT=Add Your Rich Text" web element
    And I see "VT=India Won T20 World Cup" web element
    And I take Screenshot
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I click on "VT=Preview"[1] button
    And I see "VT=Add Your Rich Text" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I click on "VT=Preview"[2] button
    And I see "VT=India Won T20 World Cup" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I take Screenshot
    
@ZVOLV-1  @SWRichTextEditorDefaultValue
    Scenario: New Form - Sheet Widget with Rich Text Editor field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Add Your Rich Text"
     And User click on Dropdown
     And I click on "VT=Rich Text Editor"
     And I wait for 1 Seconds
     And I click on "PH=Default value"
     And I enter "DataPH=Default value" as "ENTER YOUR RICH TEXT"
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And I click on "LABEL22=ENTER YOUR RICH TEXT"[2]
    And I click on "VT=Heading 1"
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And I Import the File "Sheet Widget Rich Text Editor.xlsx" with same data points
    And User wait for 2 Seconds
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And I see "VT=India Won T20 World Cup" web element
    And I take Screenshot
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I click on "VT=Preview"[1] button
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I click on "VT=Preview"[2] button
    And I see "VT=India Won T20 World Cup" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I take Screenshot
    
    
 @ZVOLV-1   @SWRichTextEditorDefaultValue-3
    Scenario: New Form - Sheet Widget with Rich Text Editor field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Add Your Rich Text"
     And User click on Dropdown
     And I click on "VT=Rich Text Editor"
     And I wait for 1 Seconds
     And I click on "PH=Default value"
     And I enter "DataPH=Default value" as "ENTER YOUR RICH TEXT"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Add Your Rich Text-1"
     And User click on Dropdown
     And I click on "VT=Rich Text Editor"
     And I wait for 1 Seconds
     And I click on "PH=Default value"
     And I enter "DataPH=Default value" as "ENTER YOUR RICH TEXT-1"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Add Your Rich Text-2"
     And User click on Dropdown
     And I click on "VT=Rich Text Editor"
     And I wait for 1 Seconds
     And I click on "PH=Default value"
     And I enter "DataPH=Default value" as "ENTER YOUR RICH TEXT-2"
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And I see "VT=ENTER YOUR RICH TEXT-1" web element
    And I see "VT=ENTER YOUR RICH TEXT-2" web element
    And I click on "LABEL22=ENTER YOUR RICH TEXT"[2]
    And I click on "VT=Heading 1"
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And I see "VT=ENTER YOUR RICH TEXT-1"[1] web element
    And I see "VT=ENTER YOUR RICH TEXT-2"[1] web element
    And I Import the File "Sheet Widget Rich Text Editor.xlsx" with same data points
    And User wait for 2 Seconds
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And I see "VT=ENTER YOUR RICH TEXT-1"[1] web element
    And I see "VT=ENTER YOUR RICH TEXT-2"[1] web element
    And I see "VT=India Won T20 World Cup" web element
    And I see "VT=ENTER YOUR RICH TEXT-1"[2] web element
    And I see "VT=ENTER YOUR RICH TEXT-2"[2] web element
    And I take Screenshot
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I click on "VT=Preview"[1] button
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I click on "VT=Preview"[2] button
    And I see "VT=ENTER YOUR RICH TEXT" web element
    #And I see "VT=India Won T20 World Cup" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I click on "VT=Preview"[3] button
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I click on "VT=Preview"[4] button
    And I see "VT=India Won T20 World Cup" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I click on "VT=Preview"[5] button
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I click on "VT=Preview"[6] button
    And I see "VT=ENTER YOUR RICH TEXT" web element
    And User clicks on "ESCAPE" button on Keyboard
    And I take Screenshot
    
@ZvolvDashboards  @SWActionButton
    Scenario: New Form - Sheet Widget with Rich Text Editor field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Action Button"
     And User click on Dropdown
     And I click on "VT=Action Button"
     And I wait for 1 Seconds
     And I click on "VT=Action Type"
     And I click on "VT=Create Submission"
     And I wait for 1 Seconds
     And I click on "VT=Choose Form"
     And I wait for 1 Seconds
     And I click on "VT=ActionButtonForm"
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=Action Button" web element
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Action Button.xlsx" with same data points
    And User wait for 2 Seconds
    And I see "VT=Action Button" web element
    And I see "VT=Action Button" web element
    And I click on "VT=Action Button"[1] button
    And I enter "LABEL2=Name" as "One"
    And I enter "LABEL3=Address" as "Address-1"
    And I click on "VT=Submit"[2] button
    And I wait for 2 Seconds
    And I click on "VT=Action Button"[2] button
    And I enter "LABEL2=Name" as "Two"
    And I enter "LABEL3=Address" as "Address-2"
    And I click on "VT=Submit"[2] button
    And I wait for 1 Seconds
    And I click on "VT=Submit" button
    And I wait for 1 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=ACTION_BUTTON"[1] web element
    And I see "VT=ACTION_BUTTON"[2] web element
    And I take Screenshot
    
    
 @ZvolvDashboards   @SWSection
    Scenario: New Form - Sheet Widget with Section Field field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Text-1"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Text-2"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Section"
		 And User click on Dropdown
     And User click on "Section"
     And I wait for 1 Seconds
     And I click on "VT=Select Fields"[2] button
     And I wait for 1 Seconds
     And I click on "VT=Text-1"
     And I click on "VT=Text-2"
     And I wait for 1 Seconds
     Then User clicks on "TAB" button on Keyboard
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=Text-1" web element
    And I see "VT=Text-2" web element
    And I see "VT=Section" web element
    And I click on "VT=ADD" button
    And I wait for "1000" milli seconds
    And I click on "VT=Section"[3]
    And I wait for "1000" milli seconds
    And I enter "LABLE2=Text-1"[3] as "One"
    And I enter "LABLE2=Text-2"[3] as "Two"
    And I click on "VT=Add"[2] button
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Section.xlsx" with same data points
    And User wait for 2 Seconds
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=One"[2] web element
    And I see "VT=Two"[2] web element
    And I see "VT=Pune"[1] web element
    And I see "VT=Mumbai"[1] web element
    And I see "VT=GROUP_VIEW"[1] web element
    And I see "VT=GROUP_VIEW"[2] web element
    And I take Screenshot
    
 @ZvolvDashboards   @SWStepper
    Scenario: New Form - Sheet Widget with Stepper Field field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Text-1"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Text-2"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Stepper"
		 And User click on Dropdown
     And User click on "Stepper"
     And I click on "VT=Add Step"
     And I click on "VT=Select Inner Fields"
     And I click on "VT=Text-1"[1]
     Then User clicks on "TAB" button on Keyboard
     And I click on "VT=Add Step"
     And I click on "VT=Select Inner Fields"
     And I click on "VT=Text-2"[1]
     Then User clicks on "TAB" button on Keyboard
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=Text-1" web element
    And I see "VT=Text-2" web element
    And I click on "VT=ADD" button
    And I enter "LABLE2=Text-1"[1] as "One"
    And I click on "VT=Next"[2] button
    And I enter "LABLE2=Text-2"[1] as "Two"
    And I click on "VT=Add"[2] button
    And I wait for 2 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Stepper.xlsx" with same data points
    And User wait for 2 Seconds
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=One"[2] web element
    And I see "VT=Two"[2] web element
    And I see "VT=Pune"[1] web element
    And I see "VT=Mumbai"[1] web element
    And I see "VT=GROUP_VIEW"[1] web element
    And I see "VT=GROUP_VIEW"[2] web element
    And I take Screenshot
    
    
@ZvolvDashboards  @SWTAB
    Scenario: New Form - Sheet Widget with TAB Field field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Text-1"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Text-2"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "TAB"
		 And User click on Dropdown
     And User click on "Tab"
     And I click on "VT=Add Tab"
     And I click on "VT=Select Inner Fields"
     And I click on "VT=Text-1"[1]
     Then User clicks on "TAB" button on Keyboard
     And I click on "VT=Add Tab"
     And I click on "VT=Select Inner Fields"
     And I click on "VT=Text-2"[1]
     Then User clicks on "TAB" button on Keyboard
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=Text-1" web element
    And I see "VT=Text-2" web element
    And I see "VT=Section" web element
    And I click on "VT=ADD" button
    And I enter "LABLE2=Text-1"[3] as "One"
    And I click on "VTEQ=Tab"[4]
    And I enter "LABLE2=Text-2"[2] as "Two"
    And I click on "VT=Add"[2] button
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Tab.xlsx" with same data points
    And User wait for 2 Seconds
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=One"[2] web element
    And I see "VT=Two"[2] web element
    And I see "VT=Pune"[1] web element
    And I see "VT=Mumbai"[1] web element
    And I see "VT=GROUP_VIEW"[1] web element
    And I see "VT=GROUP_VIEW"[2] web element
    And I take Screenshot
    
    
@ZvolvDashboards  @SWContainer
    Scenario: New Form - Sheet Widget with Container field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Text-1"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Text-2"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Container"
		 And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Container"[2]
    #And User click on "Container"[2]
     And I wait for 1 Seconds
     And I click on "VT=Select Fields"[2]
     And I wait for 1 Seconds
     And I click on "VT=Text-1"[1]
     And I click on "VT=Text-2"[1]
     Then User clicks on "TAB" button on Keyboard
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=Text-1" web element
    And I see "VT=Text-2" web element
  # And I see "VT=Container" web element
    And I click on "VT=ADD" button
    And I enter "LABEL2=Text-1" as "One"
    And I enter "LABEL2=Text-2" as "Two"
    And I click on "VT=Add"[2] button
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Container.xlsx" with same data points
    And User wait for 2 Seconds
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=One"[2] web element
    And I see "VT=Two"[2] web element
    And I see "VT=Pune"[1] web element
    And I see "VT=Mumbai"[1] web element
    And I see "VT=GROUP_VIEW"[1] web element
    And I see "VT=GROUP_VIEW"[2] web element
    And I take Screenshot
    
@ZvolvDashboards  @SWShortText-3
    Scenario: New Form - Sheet Widget with Short Text field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Short Text-1"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Short Text"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Short Text-2"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Short Text"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Short Text-3"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Short Text"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=Text-1" web element
    And I see "VT=Text-2" web element
    And I see "VT=Text-3" web element
  # And I see "VT=Container" web element
    And I click on "VT=ADD" button
    And I enter "LABEL=Short Text-1"[2] as "One"
    And I enter "LABEL=Short Text-2"[2] as "Two"
    And I enter "LABEL=Short Text-3"[2] as "Three"
    And I click on "VT=Add"[2] button
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Short Text.xlsx" with same data points
    And User wait for 2 Seconds
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=One"[2] web element
    And I see "VT=Two"[2] web element
    And I see "VT=Three"[2] web element
    And I see "VT=Pune"[1] web element
    And I see "VT=Mumbai"[1] web element
    And I see "VT=Satara"[1] web element
    And I take Screenshot
    
    
@ZVOLV-1  @SWShortTextDefault-3
    Scenario: New Form - Sheet Widget with Short Text with default field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Short Text-1"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Short Text"
		 And I enter "PH=Value" as "T20 Cup India WON"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Short Text-2"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Short Text"
		 And I enter "PH=Value" as "T20 Cup India WON"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Short Text-3"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Short Text"
		 And I enter "PH=Value" as "T20 Cup India WON"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
  # And I see "VT=Container" web element
    And I click on "VT=ADD" button
    And I click on "VT=Add"[2] button
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Short Text.xlsx" with same data points
    And User wait for 2 Seconds
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=T20 Cup India WON"[1] web element
    And I see "VT=T20 Cup India WON"[2] web element
    And I see "VT=T20 Cup India WON"[3] web element
    And I see "VT=T20 Cup India WON"[4] web element
    And I see "VT=T20 Cup India WON"[5] web element
    And I see "VT=T20 Cup India WON"[6] web element
    And I see "VT=Pune"[1] web element
    And I see "VT=Mumbai"[1] web element
    And I see "VT=Satara"[1] web element
    And I take Screenshot
    
    
@ZVOVL-1  @SWEmail-3
    Scenario: New Form - Sheet Widget with Email field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Email-1"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Email"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Email-2"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Email"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Email-3"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Email"
     And I wait for 1 Seconds
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
    And I see "VT=Email-1" web element
    And I see "VT=Email-2" web element
    And I see "VT=Email-3" web element
  # And I see "VT=Container" web element
    And I click on "VT=ADD" button
    #And I click on "VT=Submit"[1] Button
    #And I see "VT=
    And I enter "LABEL=Email-1"[2] as "One@xyz.com"
    And I enter "LABEL=Email-2"[2] as "Two@abc.com"
    And I enter "LABEL=Email-3"[2] as "Three@def.com"
    And I click on "VT=Add"[2] button
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Email.xlsx" with same data points
    And User wait for 2 Seconds
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=One@xyz.com"[2] web element
    And I see "VT=Two@abc.com"[2] web element
    And I see "VT=Three@def.com"[2] web element
    And I see "VT=upload-1@abc.com"[1] web element
    And I see "VT=upload-2@abc.com"[2] web element
    And I see "VT=upload-3@abc.com"[3] web element
    And I take Screenshot
    
    
@ZVOLV-1  @SWEmailDefault-3
    Scenario: New Form - Sheet Widget with Email with default field Upload One Field
     Given User enter "Field Label"[1] as "Sheet Widget"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Email-1"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Email"
		 And I enter "PH=Value" as "deep@dft.com"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Email-2"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Email"
		  And I enter "PH=Value" as "deep@dft.com"
     And User click on "Done"[2] button 
     And I wait for 1 Seconds
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Email-3"
     And I wait for 1 Seconds
     And User click on Dropdown
		 And I wait for 1 Seconds
		 And I click on "VT=Email"
     And I wait for 1 Seconds
      And I enter "PH=Value" as "deep@dft.com"
     And User click on "Done"[2] button 
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     And User click on "Hide Delete button"
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
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
    And I wait for 1 Seconds
  # And I see "VT=Container" web element
    And I click on "VT=ADD" button
    #And I click on "VT=Submit"[1] Button
    #And I see "VT=
    And I click on "VT=Add"[2] button
    And I wait for 1 Seconds
    And User click on "Submit"[1] Button
    And I wait for 1 Seconds
    And I wait for "1000" milli seconds
    And I click on "DIIN=edit"[2]  form Button 
    And I wait for 1 Seconds
    And I Import the File "Sheet Widget Email.xlsx" with same data points
    And User wait for 2 Seconds
    And I click on "VT=Submit" button
    And I wait for 2 Seconds
    And I click on "VT=View" button
    And I wait for 2 Seconds
    And I see "VT=deep@dft.com"[1] web element
    And I see "VT=deep@dft.com"[2] web element
    And I see "VT=deep@dft.com"[3] web element
    And I see "VT=deep@dft.com"[4] web element
    And I see "VT=deep@dft.com"[5] web element
    And I see "VT=deep@dft.com"[6] web element
    And I see "VT=upload-1@abc.com"[1] web element
    And I see "VT=upload-2@abc.com"[2] web element
    And I see "VT=upload-3@abc.com"[3] web element
    And I take Screenshot
    
    #@SWPhone-3
    #Scenario: New Form - Sheet Widget with Phone field Upload One Field
     #Given User enter "Field Label"[1] as "Sheet Widget"
     #And User click on Dropdown
     #And User click on "Table" 
     #And User click on "Add Column"
     #And User enter "Field Label"[2] as "Phone-1"
     #And I wait for 1 Seconds
     #And User click on Dropdown
#		 And I wait for 1 Seconds
#		 And I click on "VT=Phone"
     #And User click on "Done"[2] button 
     #And I wait for 1 Seconds
     #And User click on "Add Column"
     #And User enter "Field Label"[2] as "Phone-2"
     #And I wait for 1 Seconds
     #And User click on Dropdown
#		 And I wait for 1 Seconds
#		 And I click on "VT=Phone"
     #And User click on "Done"[2] button 
     #And I wait for 1 Seconds
     #And User click on "Add Column"
     #And User enter "Field Label"[2] as "Phone-3"
     #And I wait for 1 Seconds
     #And User click on Dropdown
#		 And I wait for 1 Seconds
#		 And I click on "VT=Phone"
     #And I wait for 1 Seconds
     #And User click on "Done"[2] button 
     #And User click on "Add Static Row"
     #And User click on "Show table row as grid"
     #And User click on "Add or Edit Submission via popup"
     #And User click on "Hide Delete button"
     #And User click on "Download Button Label"
     #And User enter "Download Button Label"[1] as "Download"
     #And User click on "Upload Button Label"
     #And User enter "Upload Button Label"[1] as "Upload"
     #And User click on "Expand Button Label" 
     #And User enter "Expand Button Label"[1] as "Expand"
     #And User click on "Done"[1] button
    #And User click on save button
    #Then User should see an Update form popup
    #When User check on retrofit form checkbox
    #And User click on ok button
    #Then User should see Form updated succcessfully tooltip
    #When User again click on databases from side bar
    #Then User should navigated to Databases page
    #And User Enter the database name on searchbox
    #And User click on the displayed database
    #When User click on add button
    #And I wait for 1 Seconds
    #And I see "VT=Phone-1" web element
    #And I see "VT=Phone-2" web element
    #And I see "VT=Phone-3" web element
  # And I see "VT=Container" web element
    #And I click on "VT=ADD" button
    #And I click on "VT=Submit"[1] Button
    #And I see "VT=
    #And I enter "LABEL=Phone-1"[2] as "8769584630"
    #And I enter "LABEL=Phone-2"[2] as "9876543210"
    #And I enter "LABEL=Phone-3"[2] as "9871234560"
    #And I click on "VT=Add"[2] button
    #And I wait for 1 Seconds
    #And User click on "Submit"[1] Button
    #And I wait for 1 Seconds
    #And I wait for "1000" milli seconds
    #And I click on "DIIN=edit"[2]  form Button 
    #And I wait for 1 Seconds
    #And I Import the File "Sheet Widget Email.xlsx" with same data points
    #And User wait for 2 Seconds
    #And I click on "VT=Submit" button
    #And I wait for 2 Seconds
    #And I click on "VT=View" button
    #And I wait for 2 Seconds
    #And I see "VT=One@xyz.com"[2] web element
    #And I see "VT=Two@abc.com"[2] web element
    #And I see "VT=Three@def.com"[2] web element
    #And I see "VT=upload-1@abc.com"[1] web element
    #And I see "VT=upload-2@abc.com"[2] web element
    #And I see "VT=upload-3@abc.com"[3] web element
    #And I take Screenshot
    #
    