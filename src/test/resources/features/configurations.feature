#Author: rohit@zvolv.com


@configurations
Feature: configure system settings , sidebar , project listing 

  Background:
 
    Given login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|
    And I click on "VT=Testing_project"
    And I wait for "1000" milli seconds
  
  @systemSettings
  Scenario: validate system settings
    And I click on "CLASS=ft-settings" [2]
    And I click on "VT=System Settings"
    And I refresh the page
    And I wait for "3000" milli seconds
    And I click on "CLASS=panel-title" [2]
    And I click on "VT=Emails"[1]
       And I wait for "2000" milli seconds 
    And I click on "VT=ON"[1]
    And I click on "VT=OFF"[1]
    Then I see ToolTip as "Configuration Updated successfully"
    And I wait for "1000" milli seconds 
    And I click on "CLASS=panel-title" [2]
    And I wait for "3000" milli seconds 
    And I enter "PH=Recipients email" as "rohit@zvolv.com"
    And I click on "VALUE=EMAIL"
    And I click on "CLASS=glyphicon glyphicon-calendar" [1]
    And I click on "VT=Today"
    And I click on "CLASS=glyphicon glyphicon-calendar" [2]
    And I click on "VT=Today"
    And I click on "VT=Send" button
    Then I see ToolTip as "Report will be mailed shortly"
    And I wait for "1000" milli seconds
    And I click on "CLASS=fa pull-right ion-arrow-down-b" [3]
    And I click on "ID=checkboxes-0"
    And I click on "VT=+"[2]
    And I click on "CLASS=glyphicon glyphicon-calendar" [3]
    And I click on "VT=Today"
    And I click on "VT=Submit" button
    Then I see ToolTip as "Configuration Updated successfully"
    And I wait for "1000" milli seconds 
    And I click on "CLASS=fa pull-right ion-arrow-down-b" [4]
    And I enter "PH=Title"[1] as "Test"
    And I enter "PH=Icon"[1] as "Test"
    And I enter "PH=URL"[1] as "app.zvolv.in"
    And I click on "CLASS=form-control ng-pristine ng-valid ng-empty ng-touched" [1]
    And I click on "Testing_project(49)"[1] "DDE=form-control ng-valid ng-touched ng-not-empty ng-dirty ng-valid-parse" by select class
    And I enter "PH=Search..." dropdown value as "System Admin"
    And I wait for "1000" milli seconds 
    And I click on "VT=Save changes" button
    And I click on "CLASS=fa pull-right ion-arrow-down-b" [5]
    And I wait for "1000" milli seconds
    And I click on "CLASS=fa pull-right ion-arrow-down-b" [6] 
    And I click on "CLASS=fa pull-right ion-arrow-down-b" [7]
    And I enter "TYPE=text"[18] as "1"
    And I click on "VT=Save changes" button
    And I click on "CLASS=fa pull-right ion-arrow-down-b" [8]
    
    
    
    
     
    
    
    
    
    
    
    
    

