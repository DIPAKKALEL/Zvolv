@UserManagementWiget
Feature: User Management adding widget in dashboard

  
    Background: 
    	Given login into the Testing zvolv application with below credentials
      |dragon_1|testing@zvolv.com|Zvolv@123|
      And I wait for 2 Seconds
      And I click on "VTJS=UserManagement500K-02" button
      And I wait for 2 Seconds
  
  @UserDashboardWidget
Scenario: Widget configuration in dashboard
And I click on "VT=D-17"
And I wait for 1 Seconds
And I click on "VT=Edit" button
And I click on "VT=Add widget" button
And I wait for 2 Seconds
And User click on "VT=Data Table" widget
And I click on "VT=Data Points"
And I wait for 2 Seconds
And I click on "VT=New Form Framework"
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "VT=Choose form" button
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "1.5LAC SUBMISSION-04"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Name"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "VT=Choose form" button
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "1.5LAC SUBMISSION-04"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Dropdown List-1"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "VT=Choose form" button
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "1.5LAC SUBMISSION-04"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Rating Bar-1"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "VT=Choose form" button
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "1.5LAC SUBMISSION-04"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "Form Search-1"
And I wait for 2 Seconds
And I click on "VT=Done"[2]
And I wait for 2 Seconds
And User click on "VT=Add" Button
And I wait for 2 Seconds
And I click on "VT=Choose form" button
And I wait for 2 Seconds
And I enter "LABEL1=Choose Form" as "1.5LAC SUBMISSION-04"
And I click on "LABEL=Choose field" dropdown
And I enter "LABEL1=Choose field" as "User Search-1"
And I wait for 2 Seconds
And I click on "VT=Done"[2]

#//
And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Name" from dropdown 
    And I enter "PH=Column header" as "Name"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Dropdown List-1" from dropdown 
    And I enter "PH=Column header" as "Dropdown List"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Generic" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Rating Bar-1" from dropdown 
    And I enter "PH=Column header" as "Rating Bar"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Rating Bar" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Form Search-1" from dropdown 
    And I enter "PH=Column header" as "Form Search"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=Form Search" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I wait for 1 Seconds
    And I click on "VT=Add" button from "VT=Columns"
    And I click on "NZPH=Select data point" dropdown
    And I wait for 1 Seconds
    And I click on "VT=User Search-1" from dropdown 
    And I enter "PH=Column header" as "User Search"
    And I click on "NZPH=Select column type" dropdown
    And I wait for 1 Seconds
    And I click on "VT=User Search" from dropdown
    And I click on "VT=OK" button
    And I wait for 1 Seconds
    
    And I click on "VT=Save" button


