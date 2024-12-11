
Feature: All Global Steps feature

@global
Scenario: All Global Steps Scenario

Given I navigate to web application

Then I should see page title as "Zvolv"
And I see "VT=Login" web element
And I see "ID=email" web element
And I see "NAME=" web element

When I enter "PH=Enter email / phone" as "saikumaroffice786@gmail.com"
And I enter "ID=Enter password" as "Saik@123"
And I enter "NAME=Enter password" as "Saik@123"
And I enter "LABEL=Enter password" as "Saik@123"
And I enter "LABEL1=Enter password" as "Saik@123"
And I enter "LABEL2=Enter password" as "Saik@123"
And User enter "LABEL=" as "demo"

And I enter "PH=" dropdown value as "India"

And I click on "VT="
And I click on "ID="
And I click on "NAME="
And I click on "LABEL="
And I click on "PH=Field label"
And I click on "DI=edit"
And I click on "JS="
And I click on "VT=" button

#rohit
And User click on "VT=" on side navigation bar
And User enter "INPUT=" as "rohit"
And I click on "Icon="
And I Uploaded "<File Type>" file
#And I click on downarrowicon
And I scroll down the page 
#--------
And I click on "VT=Database" button
And I click on "ID=" button
And I click on "NAME=" button
And I click on "VTJS=" button
And I click on "VTAC=" button
And I click on "VTEQ=Create" button

And I click on "VT=" dropdown
And I click on "LABEL=" dropdown
And I click on "NZPH=" from "LABEL="

And I click on "VT=" in dropdown
And I click on "VT=" from dropdown
And I click on "VT=" dropdown

And I click on "VT=" downarrow

And I click on "VT=" form

And I doubleclick on ""  

And I move to "VT="
And I move to "VT=" and click
And User click on "VT=" button
And User click on "VT=" Button
And User click on "LABEL=" and "VT="
And I wait for "1000" milli seconds
Then Webelement "VT=" is Not Visible

And I2 enter "LABEL=Description" as "Doughnut Chart Description"
And I click on "VT=Filter" from tablist of data point
Then Created Zapp "Access-" not visible for user in zapp list
Then Created Zapp "Access-" visible for user in zapp list
And I enter "PH=Enter zapp name" as "Access-" zapp name
Then User clicks on "ESCAPE" button on Keyboard
And I refresh the page



