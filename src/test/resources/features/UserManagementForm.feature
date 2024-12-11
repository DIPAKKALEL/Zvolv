@StressTest
Feature: Stress Test on New Form
 Maximum field adding in the form
  
 Background: 
Given login into the Testing zvolv application with below credentials
      |dragon_1|testing@zvolv.com|Zvolv@123|


  @50FieldsUser
Scenario: Adding 1000 fileds to new Form

#When Creating public database for User Management with below credentials
 #|DatabaseType|Description                  |Tag|
 #|public      |This is test public database |AutomationDB|
 #|private     |This is test private database|AutomationDB| 
And I click on "VTJS=UserManagement500K-03" button
And I wait for 2 Seconds
And User clicks on Databases from side bar
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
When User click on searchbox
And I wait for 2 Seconds
And I enter "PH=search by title" as "2LAC SUBMISSION-06"
And I wait for 2 Seconds
And I click on "VT=2LAC SUBMISSION-06"
And I wait for 1 Seconds
#And I enter the Stress test created database name
#When User click on database
When User click on edit icon
And User click on edit columns
Then User should see the datapoints form
And I wait for 1 Seconds
And I Add 1 Text Edit fields in the form
And I Add 1 "VT=CHECK Box" fields in the form
And I Add 1 "VT=DROPDOWN List" fields in the form with 2 dropdown options
And I Add 1 "VT=RADIO Group" fields in the form with 2 dropdown options
And I Add 1 "VT=DATE Picker" fields in the form
And I Add 1 "VT=USER Search" fields in the form
And I Add 1 "VT=TIME Picker" fields in the form
And I Add 1 "VT=DATE-TIME Picker" fields in the form
And I Add 1 "VT=RATING Bar" fields in the form
And I Add 1 "VT=PROGRESS Bar" fields 5 value 2 min 100 max and 5 step value in the form
And I Add 1 "VT=FORM/Database Search" fields with "test" as search form and "Name" as field
And I Add 1 "VT=STATIC Text" fields in the form
And I Add 1 "VT=LOCATION" fields in the form
And I Add 1 "VT=RICH Text Editor" fields in the form
And I Add 1 "VT=SIGNATURE" fields in the form
####And I Add 1 "VT=Section" fields in the form with 2 fields in each section
####And I Add 1 "VT=Stepper" fields in the form with 2 Steps and 2 inner field each Stepper
####And I Add 1 "VT=Container" fields in the form with 2 inner field each Container
And I Add 1 "VT=SHORT Text" fields in the form
And I Add 1 "VT=EMAIL" fields in the form
And I Add 1 "VT=url" fields in the form
And I Add 1 "VT=CURRENCY" fields in the form
And I Add 1 "VT=PERCENT" fields in the form
And I Add 1 "VT=DATE RANGE" fields in the form
And I Add 1 "VT=TIMER" fields in the form
And I Add 1 "VT=TAG" fields with "test" as search form and "Name" as field
And I Add 1 "VT=SEARCH" fields in the form with "test" as search form and "Name" as field
And I Add 1 "VT=COMMENTS" fields in the form
And I Add 1 "VT=AUTO NUMBER" fields in the form
Then User should see Form updated succcessfully tooltip

And User click on the displayed database
