#Author: rohit@zvolv.com

@Tasks
Feature: Tasks 
    
    Background:
    Given login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|
    And I click on "VT=Testing_project"
    And I wait for "1000" milli seconds

  @Tasks
  Scenario: cheack status of Tasks 
    And I click on "ICON=clipboard"
    And I click on "VT=Tasks"
    And I click on "CLASS=ant-select-selection__rendered" [1]
    And I click on "VT=All Tasks"
    And I click on "CLASS=ft-rotate-cw" [1]
    And I click on "ICON=list"
    And I click on "ICON=calendar"
    And I click on "CLASS=cal-cell-top ng-star-inserted" [5]
    And I wait for "1000" milli seconds
    And I click on "CLASS=cal-event-title ng-star-inserted" [2]
    #And I wait for "5000" milli seconds
    #And I click on "VT=Task"[2] 
    And I wait for "3000" milli seconds
    And I refresh the page
    And I click on task options History
    And I click on "CLASS=accordion-toggle" [2]
    And I wait for "1000" milli seconds
    And I click on "CLASS=accordion-toggle" [3]
    And I click on "VT=Activity"
    And I scroll down the page
    And I click on "VT=Bots"
    And I click on "ICON=clipboard"
    And I click on "title=Current"
    And I click on "VT=All Tasks" 
    And I click on "ICON=calendar"
    And I click on "VT=Week"
    And I wait for "1000" milli seconds
    And I click on "VT=Day"
    And I click on "ICON=grid"
    And I enter "PH=search task" as "t1"
    Then I should see status is "Completed"[1]
    And I click on "CLASS=card-body pb-0" [1]
    And I click on "DI=down"
    And I click on "VT=Active"[3]
    Then I see ToolTip as "Task Edited Successfully"
    And I click on "DI=close"
    And I enter "PH=search task" as "t1"
    Then I should see status is "Active"[1]
    
    
    
    
