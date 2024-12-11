@StressTest
Feature: Stress Test on New Form
 Maximum field adding in the form
  
 Background: 
Given login into the zvolv application with below credentials
  |dragon_1|saikumaroffice786@gmail.com|Saik@123|


  @1000Fields
Scenario: Adding 1000 fileds to new Form
#
#When Creating public database for stress with below credentials
 #|DatabaseType|Description                  |Tag|
 #|public      |This is test public database |AutomationDB|
 #|private     |This is test private database|AutomationDB| 
Given I click on "VT=End to End"
And I wait for 2 Seconds
And User clicks on Databases from side bar
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
When User click on searchbox
And I wait for 2 Seconds
And I enter "PH=search by title" as "1Lac Submission 50 Field"
And I wait for 2 Seconds
And I click on "VT=1Lac Submission 50 Field"
And I wait for 30 Seconds
#And I enter the Stress test created database name
#When User click on database
When User click on edit icon
And User click on edit columns
Then User should see the datapoints form
And I wait for 30 Seconds
And I Add 50 Text Edit fields in the form
#And I Add 1000 "VT=Rich Text Editor" fields in the form
#And I Add 1000 "VT=Check Box" fields in the form
#And I Add 1000 "VT=Dropdown List" fields in the form with 2 dropdown options
#And I Add 1000 "VT=Radio Group" fields in the form with 2 dropdown options
#And I Add 1000 "VT=Date Picker" fields in the form
#And I Add 1000 "VT=User Search" fields in the form
#And I Add 1000 "VT=Time Picker" fields in the form
#And I Add 1000 "VT=Date-time Picker" fields in the form
#And I Add 1000 "VT=Section" fields in the form with 2 fields in each section
#And I Add 1000 "VT=Stepper" fields in the form with 2 Steps and 2 inner field each Stepper
#And I Add 1000 "VT=Container" fields in the form with 2 inner field each Container
Then User should see Form updated succcessfully tooltip




 @50Fields
Scenario: Adding 500 fileds to new Form
#
#When Creating public database for stress with below credentials
 #|DatabaseType|Description                  |Tag|
 #|public      |This is test public database |AutomationDB|
 #|private     |This is test private database|AutomationDB| 
Given I click on "VT=End to End"
And I wait for 2 Seconds
And User clicks on Databases from side bar
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
When User click on searchbox
And I wait for 2 Seconds
And I enter "PH=search by title" as "Stress Test 7592"
And I wait for 2 Seconds
And I click on "VT=Stress Test 7592"
And I wait for 10 Seconds
#And I click on "DI=edit"[2] button
And I click on "VT=Add" button
And I wait for 10 Seconds
And I submit all the submission
And I click on "VT=Submit" button

#And I enter the Stress test created database name
#When User click on database
#When User click on edit icon
#And User click on edit columns
#Then User should see the datapoints form
#And I wait for 2 Seconds
#And I Add 50 Text Edit fields in the form
#And I Add 50 "VT=Rich Text Editor" fields in the form
#And I Add 50 "VT=Check Box" fields in the form
#And I Add 50 "VT=Section" fields in the form with 2 fields in each section
#And I Add 50 "VT=Stepper" fields in the form with 2 Steps and 2 inner field each Stepper
#And I Add 50 "VT=Container" fields in the form with 2 inner field each Container
#And I Add 50 "VT=Dropdown List" fields in the form with 2 dropdown options
#And I Add 50 "VT=Radio Group" fields in the form with 2 dropdown options
#And I Add 50 "VT=Date Picker" fields in the form
#And I Add 10 "VT=User Search" fields in the form
#And I Add 20 "VT=Time Picker" fields in the form
#And I Add 20 "VT=Date-time Picker" fields in the form
#Then User should see Form updated succcessfully tooltip


 @masterForDataFilter
Scenario: Adding submissions to new form to test date filter functionality
#
#When Creating public database for stress with below credentials
 #|DatabaseType|Description                  |Tag|
 #|public      |This is test public database |AutomationDB|
 #|private     |This is test private database|AutomationDB| 
Given I click on "VT=End to End"
And I wait for 2 Seconds
And User clicks on Databases from side bar
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
When User click on searchbox
And I wait for 2 Seconds
And I enter "PH=search by title" as "Dashboard Date Filter"
And I wait for 2 Seconds
And I click on "VT=Dashboard Date Filter"
And I wait for 10 Seconds
#And I click on "DI=edit"[2] button
And I click on "VT=Add" button
And I wait for 10 Seconds
And I submit all the taxi booking submission
And I click on "VT=Submit" button


