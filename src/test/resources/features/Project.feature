@Project
Feature: For project
   
 
  Background:
 
    Given login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|
    And I click on "VT=Testing_project"
    And I wait for "1000" milli seconds
  
    
@CreateProject @Project
 Scenario Outline: Create Project

  And I click on "ICON=copy"
  And I wait for "1000" milli seconds
  And I click on "VT=Workflow"
  And I click on "TYI=checkbox"[7]
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s1"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=START"
  And I enter "PH=Task name" as "t1"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "name"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "Age"
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
  And I click on "VT=Logic"

  And I click on "VT=Automation"[2]
  And I click on "VT= Add Bot "
  And I enter "PH=Bot name" as "Rohit"
  And I wait for "1000" milli seconds
  And I enter "PH=Describe in brief what this bot does..." as "test"
  And I click on "VT=Done"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 mr-1"
  And I wait for "1000" milli seconds 
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"

  And I refresh the page
  And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s2"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=s2"
  And I enter "PH=Task name" as "t2"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "phone"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I wait for "2000" milli seconds
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
  And I click on "VT=Logic"
   And I click on "VT=Automation"[2]
   And I click on "VT=Data"[2]
   And I click on "ICON=check font-medium-2 mr-1"
   
  And I click on "VT=Project Initiation"
  And I click on "CLASS=form-group" [4]
  And I click on "VT=Delete"
  And I click on Acceptalert
  And I click on "CLASS=btn btn-outline-primary pull-right" [1]
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I click on "VT=Done"
  And I click on "CLASS=success p-0" [1]
  
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"
  And I click on "NZ=play-circle"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
  And I take Screenshot
  Then I see workflow created successfully
  And I click on "VT=OK"
  

  And I click on "ICON=inbox"
  And I wait for "1000" milli seconds
  And I click on Acceptalert
  And I click on "TYI=checkbox" [1]
  And I click on "ICON=trash-2 danger"
  And I click on "VT=Delete" button
  And I click on "VT=Yes" button
  And I click on "ICON=rotate-cw"
  And I click on "ICON=grid"
  And I wait for "1000" milli seconds 
  And I click on "ICON=list"
  And I click on "VT=Create project" button
  And I click on "LABEL1=Status"
  And I click on "VT= Active"[2]
  And I click on "LABEL2=Name"
  And I enter "LABEL2=Name" as "Zvolv"
  And I click on "LABEL2=email"
  And I enter "LABEL2=email" as "demo@gmail.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  Then I see project Created Successfully
  And I enter "PH=search project by title" as "Zvolv"
  And I click on "VT=Zvolv"[2]
  #And I click on "CLASS=card-title" [1]
  And I wait for "2000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [58]
  #And I click on "VT=Active"
  And I enter "LABEL2=name"[1] as "test"
  And I enter "LABEL2=Age"[1] as "18"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  Then I should see status is "Completed"[1]
  And I wait for "1000" milli seconds
  #And I click on "VT=t2"
  And I click on "CLASS=ng-star-inserted" [62]
  And I enter "LABEL2=phone"[1] as "123456789"
  And I enter "LABEL2=email"[1] as "demo@zvolv.com"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  Then I should see status is "Completed"[2]
  And I wait for "2000" milli seconds 
  
  And I click on "VT=Add Column" button
  And I click on "VT=Next Stage"
  And I click on "VT=Add Column" button
  And I click on "VT=Previous Stage"[1]
  And I click on "VT=Add Column" button
  And I click on "VT=Rework"
  And I click on "VT=Add Column" button
  And I click on "VT=Duration"
  And I click on "VT=Add Column" button
  And I click on "VT=Escalation Delay"
  And I click on "VT=Add Column" button
  And I click on "VT=Current Escalation Level"
  And I click on "VT=Add Column" button
  And I click on "VT=Modified At"
  And I click on "VT=Add Column" button
  And I click on "VT=Skip"
  And I wait for "1000" milli seconds 
    
  And I click on "VT=Board"
  And I wait for "1000" milli seconds 
  And I click on "CLASS=card-title" [1]
  And I click on "DI=down"
  And I click on "VT=Assigned"[3]
  And I wait for "2000" milli seconds
  Then I see ToolTip as "Task Edited Successfully"
  And I click on "VT=Dependencies" button
  And I wait for "2000" milli seconds 
  And I click on "DII=close"[2]
  And I click on "DII=branches"[2]
  And I wait for "1000" milli seconds
  And I click on "DII=close"[2]
  And I click on "DI=unordered-list"
  And I click on "CLASS=ant-card-meta-title ng-star-inserted" [1]
  And I wait for "1000" milli seconds
  And I click on "DII=close"[2]
  And I click on "CLASS=ant-card-meta-title ng-star-inserted" [2]
  And I wait for "1000" milli seconds
  And I click on "DII=close"[2]
  And I click on "DI=edit"
  And I click on "DI=bars"
  And I wait for "2000" milli seconds 
  And I click on "DI=history"
  And I wait for "1000" milli seconds
  And I click on "DI=fullscreen"
  And I click on "DI=close"[2]
   And I wait for "1000" milli seconds
  And I click on "DI=double-left"
  And I click on "DII=close"[2]
  And I wait for "1000" milli seconds
  And I click on "DII=close"[1]
  
  And I click on "CLASS=card-title" [2]
  And I click on "DI=down"
  And I click on "VT=Not Assigned"
  And I wait for "1000" milli seconds
  Then I see ToolTip as "Task Edited Successfully"
    And I click on "VT=Dependencies" button
  And I wait for "2000" milli seconds 
  And I click on "DII=close"[2]
  And I click on "DII=branches"[2]
  And I wait for "1000" milli seconds
  And I click on "DII=close"[2]
  And I click on "DI=unordered-list"
  And I click on "CLASS=ant-card-body" [1]
  And I wait for "1000" milli seconds
  And I click on "DII=close"[2]
  And I click on "CLASS=ant-card-body" [2]
  And I wait for "1000" milli seconds
  And I click on "DII=close"[2]
  And I click on "DI=edit"
  And I click on "DI=bars"
  And I wait for "2000" milli seconds 
  And I click on "DI=history"
  And I wait for "1000" milli seconds
  And I click on "DI=fullscreen"
  And I click on "DI=close"[2]
   And I wait for "1000" milli seconds
  And I click on "DI=double-left"
  And I click on "DII=close"[2]
  And I wait for "1000" milli seconds
  And I click on "DII=close"[1]
  
  And I click on "VT=Gantt"
  And I click on "VT=Mind Map"
  And I click on "VT=Files"
  
  And I click on "DI=alert"
  And I click on "VT=Edit" button
  And I wait for "1000" milli seconds
  And I enter "LABEL2=Name" as "Zvolv"
  And I enter "LABEL2=email" as "zvolv@zvolv.com" 
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  And I click on "DI=schedule"
  And I enter "TYPE=date"[1] as "03-03-2000"
  And I enter "TYPE=date"[2] as "03-03-2000"
  #And I click on "TYI=date" [2]
  #And I click on "VT=Today"
  And I enter "TYPE=number"[1] as "1"
  And I enter "TYPE=number"[3] as "1"
  And I enter "TYPE=number"[2] as "0"
  And I enter "TYPE=number"[4] as "0"
  And I click on "VT=rohit"[1]
  And I wait for "1000" milli seconds
  And I enter "LABEL=rohit"[1] as "None"
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ant-select-dropdown-menu-item ng-star-inserted" [1]
  And I wait for "1000" milli seconds
  And I click on "VT=rohit"[1]
  And I wait for "1000" milli seconds
  And I enter "LABEL=rohit"[1] as "None"
  And I wait for "1000" milli seconds 
   And I click on "CLASS=ant-select-dropdown-menu-item ng-star-inserted" [1]
  #And I click on "VT=None"[3]
  And I wait for "1000" milli seconds
  And I click on "VT=Submit" button
  And I wait for "1000" milli seconds
  Then I see ToolTip as "Task Edited Successfully"
  And I click on "DI=close"
  And I click on "DI=message"
  And I wait for "1000" milli seconds
  And I enter "PH=Type message" dropdown value as "zvolv test"
  And I click on "TY=submit"
  #And I move to "DI=filter"
  #And I click on "DI=filter"
  #And I wait for "2000" milli seconds
  #And I click on "VT=All"
  #And I wait for "2000" milli seconds
  #And I move to "DI=filter"
  #And I click on "VT=User"
  #And I move to "DI=filter"
  #And I wait for "2000" milli seconds
  #And I click on "VT=System"
  #And I wait for "1000" milli seconds 
  And I click on "DI=upload"
  And I Uploaded "<File Type>" file
  And I wait for "2000" milli seconds
  And I click on "TY=submit"
  And I click on "DI=close"
  And I click on "DI=download"
  And I click on "DI=folder-open"
  And I wait for "2000" milli seconds
  And I click on "VT=user" [1]
  And I wait for "1000" milli seconds 
  And I switched to parent Tab
  #And I click on "DI=delete"
  #And I wait for "2000" milli seconds
  #And I click on "VT=Delete" button
   #And I click on "VT=Are you sure you want to delete this project?" from "VT=Delete"
  #And I wait for "2000" milli seconds
  #Then I see ToolTip as "Workflow Deleted Successfully"
  
  
  
   Examples:
  |File Type |
  |/Samples/Samples.png|
   
@CreateTaskWithEqualsCondition @Project
   Scenario: Create task with equals Dependency condition 
   
  And I click on "ICON=copy"
  And I wait for "1000" milli seconds
  And I click on "VT=Workflow"
  And I click on "TYI=checkbox"[7]
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s1"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=START"
  And I enter "PH=Task name" as "t1"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "name"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "Age"
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
 
  And I click on "VT=Logic"
  #And I click on "VT=Add Next Task"
  #And I click on "CLASS=ft-plus ng-tns-c53-103 ng-star-inserted" [1]
  #And I enter "LABEL1=Select a field" as "name"
  #And I wait for "1000" milli seconds
  #And I enter "LABEL1=Select/Type" as "zvolv"
  #And I wait for "1000" milli seconds 
  #And I click on "TYI=button" [4]
  
  
  And I click on "VT=Automation"[2]
  And I click on "VT= Add Bot "
  And I enter "PH=Bot name" as "Rohit"
  And I wait for "1000" milli seconds
  And I enter "PH=Describe in brief what this bot does..." as "test"
  And I click on "VT=Done"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 mr-1"
  And I wait for "1000" milli seconds 
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"

    And I refresh the page
   And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s2"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=s2"
  And I enter "PH=Task name" as "t2"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "phone"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I wait for "2000" milli seconds
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
  And I click on "VT=Logic"
  
   And I click on "VT=Automation"[2]
   And I click on "VT=Data"[2]
   And I click on "ICON=check font-medium-2 mr-1"
   
  And I click on "VT=START"
  And I click on "VT=Logic"
  And I click on "CLASS=mat-accordion" [1]
  And I click on "VT=IF" 
  And I enter "LIE=Select a field"[1] as "name"
  And I click on "CLASS=col-2" [2]
  And I wait for "1000" milli seconds
  And I click on "Equals"[1] dropdown by select class
  And I enter "LIE=Select/Type"[1] as "zvolv"
  #And I click on "CLASS=ft-x font-medium-2" [2]
  #And I click on Acceptalert
  And I click on "VT=+ OR"
  And I enter "LIE=Select a field"[2] as "Age"
  And I click on "CLASS=col-2" [3]
  And I wait for "1000" milli seconds  
  And I click on "Equals"[1] dropdown by select class
  And I enter "LIE=Select/Type"[2] as "18"
  And I click on "TYI=button" [4]
  And I click on "ICON=check font-medium-2 mr-1"
   And I click on "VT=Project Initiation"
  And I click on "CLASS=form-group" [4]
  And I click on "VT=Delete"
  And I click on Acceptalert
  And I click on "CLASS=btn btn-outline-primary pull-right" [1]
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I click on "VT=Done"
  And I click on "CLASS=success p-0" [1]  
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"
  And I click on "NZ=play-circle"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
  And I take Screenshot
  Then I see workflow created successfully
  And I click on "VT=OK"
  

  And I click on "ICON=inbox"
  And I wait for "1000" milli seconds
  And I click on Acceptalert
  And I click on "TYI=checkbox" [1]
  And I click on "ICON=trash-2 danger"
  And I click on "VT=Delete" button
  And I click on "VT=Yes" button
  And I click on "VT=Create project" button
  And I click on "LABEL1=Status"
  And I click on "VT= Active"[2]
  And I click on "LABEL2=Name"
  And I enter "LABEL2=Name" as "Zvolv"
  And I click on "LABEL2=email"
  And I enter "LABEL2=email" as "demo@gmail.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  And I enter "PH=search project by title" as "Zvolv"
  And I click on "VT=Zvolv"[2]
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [58]
  #And I click on "VT=Active"
  And I enter "LABEL2=name"[1] as "test"
  And I enter "LABEL2=Age"[1] as "17"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  Then I should see status is "Completed"[1]
  And I wait for "1000" milli seconds
  Then I should see status is "Assigned"[1]
  And I wait for "2000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [58]
  And I click on "DI=down"
  And I click on "VT=Active"[3]
  #And I click on "VT=Edit" button
  And I wait for "1000" milli seconds
   And I enter "LABEL2=name"[1] as "zvolv"
  And I enter "LABEL2=Age"[1] as "10"
  And I click on "VT=Submit" button
   And I wait for "3000" milli seconds 
  #And I click on "VT=t2"
  And I click on "CLASS=ng-star-inserted" [62]
  And I click on "DI=down"
  And I wait for "1000" milli seconds 
  And I click on "VT=Assigned"[3]
  And I click on "DI=close"
  And I refresh the page
  Then I should see status is "Assigned"[1]
  And I wait for "1000" milli seconds
  And I click on "CLASS=ng-star-inserted" [59]
  And I click on "DI=down"
  And I click on "VT=Active"[5]
  #And I click on "VT=Edit" button
  And I wait for "1000" milli seconds
   And I enter "LABEL2=name"[1] as "xyz"
  And I enter "LABEL2=Age"[1] as "18"
  And I click on "VT=Submit" button
  Then I should see status is "Active"[1]
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [62]
  And I enter "LABEL2=phone"[1] as "123456789"
  And I enter "LABEL2=email"[1] as "demo@zvolv.com"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  And I wait for "1000" milli seconds
  Then I should see status is "Completed"[2]
  
@CreateTaskWithNotEqualsToCondition @Project
   Scenario: Create task with not equals to Dependency condition 
   
  And I click on "ICON=copy"
  And I wait for "1000" milli seconds
  And I click on "VT=Workflow"
  And I click on "TYI=checkbox"[7]
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s1"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=START"
  And I enter "PH=Task name" as "t1"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "name"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "Age"
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "1000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
 
  And I click on "VT=Logic"
  #And I click on "VT=Add Next Task"
  #And I click on "CLASS=ft-plus ng-tns-c53-103 ng-star-inserted" [1]
  #And I enter "LABEL1=Select a field" as "name"
  #And I wait for "1000" milli seconds
  #And I enter "LABEL1=Select/Type" as "zvolv"
  #And I wait for "1000" milli seconds 
  #And I click on "TYI=button" [4]
  
  
  And I click on "VT=Automation"[2]
  And I click on "VT= Add Bot "
  And I enter "PH=Bot name" as "Rohit"
  And I wait for "1000" milli seconds
  And I enter "PH=Describe in brief what this bot does..." as "test"
  And I click on "VT=Done"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 mr-1"
  And I wait for "1000" milli seconds 
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"

  And I refresh the page  
   And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s2"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=s2"
  And I enter "PH=Task name" as "t2"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "phone"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I wait for "2000" milli seconds
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
  And I click on "VT=Logic"
  
   And I click on "VT=Automation"[2]
   And I click on "VT=Data"[2]
   And I click on "ICON=check font-medium-2 mr-1"
   
  And I click on "VT=START"
  And I click on "VT=Logic"
  And I click on "CLASS=mat-accordion" [1]
  And I click on "VT=IF" 
  And I enter "LABEL1=Select a field" as "name"
  And I wait for "1000" milli seconds
  And I click on "CLASS=col-2" [2]
  And I wait for "1000" milli seconds
  And I click on "Not equal to"[1] dropdown by select class
  And I enter "LABEL1=Select/Type" as "zvolv"
  And I wait for "1000" milli seconds 
  And I click on "TYI=button" [4]
  And I click on "ICON=check font-medium-2 mr-1"
  
   And I click on "VT=Project Initiation"
  And I click on "CLASS=form-group" [4]
  And I click on "VT=Delete"
  And I click on Acceptalert
  And I click on "CLASS=btn btn-outline-primary pull-right" [1]
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I click on "VT=Done"
  And I click on "CLASS=success p-0" [1]
  

  
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"
  And I click on "NZ=play-circle"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
  And I take Screenshot
  Then I see workflow created successfully
  And I click on "VT=OK"
  

  And I click on "ICON=inbox"
  And I wait for "1000" milli seconds
  And I click on Acceptalert
  And I click on "TYI=checkbox" [1]
  And I click on "ICON=trash-2 danger"
  And I click on "VT=Delete" button
  And I click on "VT=Yes" button
  And I click on "VT=Create project" button
  And I click on "LABEL1=Status"
  And I click on "VT= Active"[2]
  And I click on "LABEL2=Name"
  And I enter "LABEL2=Name" as "Zvolv"
  And I click on "LABEL2=email"
  And I enter "LABEL2=email" as "demo@gmail.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  And I enter "PH=search project by title" as "Zvolv"
  And I click on "VT=Zvolv"[2]
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [58]
  #And I click on "VT=Active"
  And I enter "LABEL2=name"[1] as "zvolv"
  And I enter "LABEL2=Age"[1] as "10"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  Then I should see status is "Completed"[1]
  And I wait for "1000" milli seconds
  Then I should see status is "Assigned"[1]
  And I click on "CLASS=ng-star-inserted" [58]
  And I click on "DI=down"
  And I click on "VT=Active"[3]
  #And I click on "VT=Edit" button
  And I wait for "1000" milli seconds
   And I enter "LABEL2=name"[1] as "test"
  And I enter "LABEL2=Age"[1] as "10"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  #And I click on "VT=t2"
  And I click on "CLASS=ng-star-inserted" [62]
  And I enter "LABEL2=phone"[1] as "123456789"
  And I enter "LABEL2=email"[1] as "demo@zvolv.com"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds
  Then I see ToolTip as "Form Submitted Successfully"
  And I wait for "2000" milli seconds
  Then I should see status is "Completed"[2]
  
  
@CreateTaskWithLessThanCondition @Project
   Scenario: Create task with less than Dependency condition 
   
  And I click on "ICON=copy"
  And I wait for "1000" milli seconds
  And I click on "VT=Workflow"
  And I click on "TYI=checkbox"[7]
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s1"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=START"
  And I enter "PH=Task name" as "t1"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "name"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "Age"
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "1000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
 
  And I click on "VT=Logic"
  #And I click on "VT=Add Next Task"
  #And I click on "CLASS=ft-plus ng-tns-c53-103 ng-star-inserted" [1]
  #And I enter "LABEL1=Select a field" as "name"
  #And I wait for "1000" milli seconds
  #And I enter "LABEL1=Select/Type" as "zvolv"
  #And I wait for "1000" milli seconds 
  #And I click on "TYI=button" [4]
  
  
  And I click on "VT=Automation"[2]
  And I click on "VT= Add Bot "
  And I enter "PH=Bot name" as "Rohit"
  And I wait for "1000" milli seconds
  And I enter "PH=Describe in brief what this bot does..." as "test"
  And I click on "VT=Done"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 mr-1"
  And I wait for "1000" milli seconds 
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"

  And I refresh the page  
   And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s2"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=s2"
  And I enter "PH=Task name" as "t2"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "phone"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I wait for "2000" milli seconds
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
  And I click on "VT=Logic"
  
   And I click on "VT=Automation"[2]
   And I click on "VT=Data"[2]
   And I click on "ICON=check font-medium-2 mr-1"
   
  And I click on "VT=START"
  And I click on "VT=Logic"
  And I click on "CLASS=mat-accordion" [1]
  And I click on "VT=IF" 
  And I enter "LABEL1=Select a field" as "age"
  And I wait for "1000" milli seconds
  And I click on "CLASS=col-2" [2]
  And I wait for "1000" milli seconds
  And I click on "Less than"[1] dropdown by select class
  And I enter "LABEL1=Select/Type" as "18"
  And I wait for "1000" milli seconds 
  And I click on "TYI=button" [4]
  And I click on "ICON=check font-medium-2 mr-1"
  
   And I click on "VT=Project Initiation"
  And I click on "CLASS=form-group" [4]
  And I click on "VT=Delete"
  And I click on Acceptalert
  And I click on "CLASS=btn btn-outline-primary pull-right" [1]
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I click on "VT=Done"
  And I click on "CLASS=success p-0" [1]
  

  
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"
  And I click on "NZ=play-circle"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
  And I take Screenshot
  Then I see workflow created successfully
  And I click on "VT=OK"
  

  And I click on "ICON=inbox"
  And I wait for "1000" milli seconds
  And I click on Acceptalert
  And I click on "TYI=checkbox" [1]
  And I click on "ICON=trash-2 danger"
  And I click on "VT=Delete" button
  And I click on "VT=Yes" button
  And I click on "VT=Create project" button
  And I click on "LABEL1=Status"
  And I click on "VT= Active"[2]
  And I click on "LABEL2=Name"
  And I enter "LABEL2=Name" as "Zvolv"
  And I click on "LABEL2=email"
  And I enter "LABEL2=email" as "demo@gmail.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  And I enter "PH=search project by title" as "Zvolv"
  And I click on "VT=Zvolv"[2]
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [58]
  #And I click on "VT=Active"
  And I enter "LABEL2=name"[1] as "zvolv"
  And I enter "LABEL2=Age"[1] as "19"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  Then I should see status is "Completed"[1]
  And I wait for "1000" milli seconds
  Then I should see status is "Assigned"[1]
  And I click on "CLASS=ng-star-inserted" [58]
  And I click on "DI=down"
  And I click on "VT=Active"[3]
  #And I click on "VT=Edit" button
  And I wait for "1000" milli seconds
   And I enter "LABEL2=name"[1] as "test"
  And I enter "LABEL2=Age"[1] as "10"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds
  #And I click on "VT=t2"
  And I click on "CLASS=ng-star-inserted" [62]
  And I enter "LABEL2=phone"[1] as "123456789"
  And I enter "LABEL2=email"[1] as "demo@zvolv.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  Then I see ToolTip as "Form Submitted Successfully"
  And I wait for "1000" milli seconds
  Then I should see status is "Completed"[2]
  
  
@CreateTaskWithLessThanEqualTo @Project
   Scenario: Create task with less than equals to Dependency condition 
   
  And I click on "ICON=copy"
  And I wait for "1000" milli seconds
  And I click on "VT=Workflow"
  And I click on "TYI=checkbox"[7]
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s1"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=START"
  And I enter "PH=Task name" as "t1"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "name"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "Age"
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "1000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
 
  And I click on "VT=Logic"
  #And I click on "VT=Add Next Task"
  #And I click on "CLASS=ft-plus ng-tns-c53-103 ng-star-inserted" [1]
  #And I enter "LABEL1=Select a field" as "name"
  #And I wait for "1000" milli seconds
  #And I enter "LABEL1=Select/Type" as "zvolv"
  #And I wait for "1000" milli seconds 
  #And I click on "TYI=button" [4]
  
  
  And I click on "VT=Automation"[2]
  And I click on "VT= Add Bot "
  And I enter "PH=Bot name" as "Rohit"
  And I wait for "1000" milli seconds
  And I enter "PH=Describe in brief what this bot does..." as "test"
  And I click on "VT=Done"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 mr-1"
  And I wait for "1000" milli seconds 
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"

  And I refresh the page  
   And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s2"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=s2"
  And I enter "PH=Task name" as "t2"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "phone"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I wait for "2000" milli seconds
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
  And I click on "VT=Logic"
  
   And I click on "VT=Automation"[2]
   And I click on "VT=Data"[2]
   And I click on "ICON=check font-medium-2 mr-1"
   
  And I click on "VT=START"
  And I click on "VT=Logic"
  And I click on "CLASS=mat-accordion" [1]
  And I click on "VT=IF" 
  And I enter "LABEL1=Select a field" as "age"
  And I wait for "1000" milli seconds
  And I click on "CLASS=col-2" [2]
  And I wait for "1000" milli seconds
  And I click on "Less than or equal to"[2] dropdown by select class
  And I enter "LABEL1=Select/Type" as "18"
  And I wait for "1000" milli seconds 
  And I click on "TYI=button" [4]
  And I click on "ICON=check font-medium-2 mr-1"
  
  And I click on "VT=Project Initiation"
  And I click on "CLASS=form-group" [4]
  And I click on "VT=Delete"
  And I click on Acceptalert
  And I click on "CLASS=btn btn-outline-primary pull-right" [1]
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I click on "VT=Done"
  And I click on "CLASS=success p-0" [1]
  

  
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"
  And I click on "NZ=play-circle"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
  And I take Screenshot
  Then I see workflow created successfully
  And I click on "VT=OK"
  

  And I click on "ICON=inbox"
  And I wait for "1000" milli seconds
  And I click on Acceptalert
  And I click on "TYI=checkbox" [1]
  And I click on "ICON=trash-2 danger"
  And I click on "VT=Delete" button
  And I click on "VT=Yes" button
  And I click on "VT=Create project" button
  And I click on "LABEL1=Status"
  And I click on "VT= Active"[2]
  And I click on "LABEL2=Name"
  And I enter "LABEL2=Name" as "Zvolv"
  And I click on "LABEL2=email"
  And I enter "LABEL2=email" as "demo@gmail.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  And I enter "PH=search project by title" as "Zvolv"
  And I click on "VT=Zvolv"[2]
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [58]
  #And I click on "VT=Active"
  And I enter "LABEL2=name"[1] as "zvolv"
  And I enter "LABEL2=Age"[1] as "24"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  Then I should see status is "Completed"[1]
  And I wait for "1000" milli seconds
  Then I should see status is "Assigned"[1]
  And I click on "CLASS=ng-star-inserted" [58]
  And I click on "DI=down"
  And I click on "VT=Active"[3]
  #And I click on "VT=Edit" button
  And I wait for "1000" milli seconds
   And I enter "LABEL2=name"[1] as "test"
  And I enter "LABEL2=Age"[1] as "18"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds
  #And I click on "VT=t2"
  And I click on "CLASS=ng-star-inserted" [62]
  And I enter "LABEL2=phone"[1] as "123456789"
  And I enter "LABEL2=email"[1] as "demo@zvolv.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  Then I see ToolTip as "Form Submitted Successfully"
  And I wait for "1000" milli seconds
  Then I should see status is "Completed"[2]
  
  
@CreateTaskWithGreaterThan @Project
   Scenario: Create task with Greater than Dependency condition 
   
  And I click on "ICON=copy"
  And I wait for "1000" milli seconds
  And I click on "VT=Workflow"
  And I click on "TYI=checkbox"[7]
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s1"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=START"
  And I enter "PH=Task name" as "t1"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "name"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "Age"
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "1000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
 
  And I click on "VT=Logic"
  #And I click on "VT=Add Next Task"
  #And I click on "CLASS=ft-plus ng-tns-c53-103 ng-star-inserted" [1]
  #And I enter "LABEL1=Select a field" as "name"
  #And I wait for "1000" milli seconds
  #And I enter "LABEL1=Select/Type" as "zvolv"
  #And I wait for "1000" milli seconds 
  #And I click on "TYI=button" [4]
  
  
  And I click on "VT=Automation"[2]
  And I click on "VT= Add Bot "
  And I enter "PH=Bot name" as "Rohit"
  And I wait for "1000" milli seconds
  And I enter "PH=Describe in brief what this bot does..." as "test"
  And I click on "VT=Done"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 mr-1"
  And I wait for "1000" milli seconds 
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"

  And I refresh the page  
   And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s2"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=s2"
  And I enter "PH=Task name" as "t2"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "phone"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I wait for "2000" milli seconds
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
  And I click on "VT=Logic"
  
   And I click on "VT=Automation"[2]
   And I click on "VT=Data"[2]
   And I click on "ICON=check font-medium-2 mr-1"
   
  And I click on "VT=START"
  And I click on "VT=Logic"
  And I click on "CLASS=mat-accordion" [1]
  And I click on "VT=IF" 
  And I enter "LABEL1=Select a field" as "age"
  And I wait for "1000" milli seconds
  And I click on "CLASS=col-2" [2]
  And I wait for "1000" milli seconds
  And I click on "Greater than"[1] dropdown by select class
  And I enter "LABEL1=Select/Type" as "18"
  And I wait for "1000" milli seconds 
  And I click on "TYI=button" [4]
  And I click on "ICON=check font-medium-2 mr-1"
  
  And I click on "VT=Project Initiation"
  And I click on "CLASS=form-group" [4]
  And I click on "VT=Delete"
  And I click on Acceptalert
  And I click on "CLASS=btn btn-outline-primary pull-right" [1]
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I click on "VT=Done"
  And I click on "CLASS=success p-0" [1]
  

  
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"
  And I click on "NZ=play-circle"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
  And I take Screenshot
  Then I see workflow created successfully
  And I click on "VT=OK"
  

  And I click on "ICON=inbox"
  And I wait for "1000" milli seconds
  And I click on Acceptalert
  And I click on "TYI=checkbox" [1]
  And I click on "ICON=trash-2 danger"
  And I click on "VT=Delete" button
  And I click on "VT=Yes" button
  And I click on "VT=Create project" button
  And I click on "LABEL1=Status"
  And I click on "VT= Active"[2]
  And I click on "LABEL2=Name"
  And I enter "LABEL2=Name" as "Zvolv"
  And I click on "LABEL2=email"
  And I enter "LABEL2=email" as "demo@gmail.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  And I enter "PH=search project by title" as "Zvolv"
  And I click on "VT=Zvolv"[2]
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [58]
  #And I click on "VT=Active"
  And I enter "LABEL2=name"[1] as "zvolv"
  And I enter "LABEL2=Age"[1] as "10"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  Then I should see status is "Completed"[1]
  And I wait for "2000" milli seconds
  Then I should see status is "Assigned"[1]
  And I click on "CLASS=ng-star-inserted" [58]
  And I click on "DI=down"
  And I click on "VT=Active"[3]
  And I wait for "1000" milli seconds 
  #And I click on "VT=Edit" button
   And I enter "LABEL2=name"[1] as "test"
  And I enter "LABEL2=Age"[1] as "19"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  #And I click on "VT=t2"
  And I click on "CLASS=ng-star-inserted" [62]
  And I enter "LABEL2=phone"[1] as "123456789"
  And I enter "LABEL2=email"[1] as "demo@zvolv.com"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds
  Then I see ToolTip as "Form Submitted Successfully"
  And I wait for "1000" milli seconds
  Then I should see status is "Completed"[2]
  
  
@CreateTaskWithGreaterThanOrEqualTo @Project
   Scenario: Create task with Greater than or equal to Dependency condition 
   
  And I click on "ICON=copy"
  And I wait for "1000" milli seconds
  And I click on "VT=Workflow"
  And I click on "TYI=checkbox"[7]
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s1"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=START"
  And I enter "PH=Task name" as "t1"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "name"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "Age"
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "1000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
 
  And I click on "VT=Logic"
  #And I click on "VT=Add Next Task"
  #And I click on "CLASS=ft-plus ng-tns-c53-103 ng-star-inserted" [1]
  #And I enter "LABEL1=Select a field" as "name"
  #And I wait for "1000" milli seconds
  #And I enter "LABEL1=Select/Type" as "zvolv"
  #And I wait for "1000" milli seconds 
  #And I click on "TYI=button" [4]
  
  
  And I click on "VT=Automation"[2]
  And I click on "VT= Add Bot "
  And I enter "PH=Bot name" as "Rohit"
  And I wait for "1000" milli seconds
  And I enter "PH=Describe in brief what this bot does..." as "test"
  And I click on "VT=Done"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 mr-1"
  And I wait for "1000" milli seconds 
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"

  And I refresh the page  
   And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s2"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=s2"
  And I enter "PH=Task name" as "t2"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "phone"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I wait for "2000" milli seconds
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
  And I click on "VT=Logic"
  
   And I click on "VT=Automation"[2]
   And I click on "VT=Data"[2]
   And I click on "ICON=check font-medium-2 mr-1"
   
  And I click on "VT=START"
  And I click on "VT=Logic"
  And I click on "CLASS=mat-accordion" [1]
  And I click on "VT=IF" 
  And I enter "LABEL1=Select a field" as "age"
  And I wait for "1000" milli seconds
  And I click on "CLASS=col-2" [2]
  And I wait for "1000" milli seconds
  And I click on "Greater than or equal to"[1] dropdown by select class
  And I enter "LABEL1=Select/Type" as "18"
  And I wait for "1000" milli seconds 
  And I click on "TYI=button" [4]
  And I click on "ICON=check font-medium-2 mr-1"
  
   And I click on "VT=Project Initiation"
  And I click on "CLASS=form-group" [4]
  And I click on "VT=Delete"
  And I click on Acceptalert
  And I click on "CLASS=btn btn-outline-primary pull-right" [1]
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I click on "VT=Done"
  And I click on "CLASS=success p-0" [1]
  

  
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"
  And I click on "NZ=play-circle"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
  And I take Screenshot
  Then I see workflow created successfully
  And I click on "VT=OK"
  

  And I click on "ICON=inbox"
  And I wait for "1000" milli seconds
  And I click on Acceptalert
  And I click on "TYI=checkbox" [1]
  And I click on "ICON=trash-2 danger"
  And I click on "VT=Delete" button
  And I click on "VT=Yes" button
  And I click on "VT=Create project" button
  And I click on "LABEL1=Status"
  And I click on "VT= Active"[2]
  And I click on "LABEL2=Name"
  And I enter "LABEL2=Name" as "Zvolv"
  And I click on "LABEL2=email"
  And I enter "LABEL2=email" as "demo@gmail.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  And I enter "PH=search project by title" as "Zvolv"
  And I click on "VT=Zvolv"[2]
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [58]
  #And I click on "VT=Active"
  And I enter "LABEL2=name"[1] as "zvolv"
  And I enter "LABEL2=Age"[1] as "10"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  Then I should see status is "Completed"[1]
  And I wait for "1000" milli seconds
  Then I should see status is "Assigned"[1]
  And I click on "CLASS=ng-star-inserted" [58]
  And I click on "DI=down"
  And I click on "VT=Active"[3]
  #And I click on "VT=Edit" button
  And I wait for "1000" milli seconds
   And I enter "LABEL2=name"[1] as "test"
  And I enter "LABEL2=Age"[1] as "18"
  And I click on "VT=Submit" button
  
  #And I click on "VT=t2"
  And I wait for "2000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [62]
  And I enter "LABEL2=phone"[1] as "123456789"
  And I enter "LABEL2=email"[1] as "demo@zvolv.com"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds
  Then I see ToolTip as "Form Submitted Successfully"
  And I wait for "1000" milli seconds
  Then I should see status is "Completed"[2]
  
@CreateTaskWithTextContains @Project
   Scenario: Create task with Text Contains Dependency condition 
   
  And I click on "ICON=copy"
  And I wait for "1000" milli seconds
  And I click on "VT=Workflow"
  And I click on "TYI=checkbox"[7]
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s1"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=START"
  And I enter "PH=Task name" as "t1"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "name"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "Age"
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "1000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
 
  And I click on "VT=Logic"
  #And I click on "VT=Add Next Task"
  #And I click on "CLASS=ft-plus ng-tns-c53-103 ng-star-inserted" [1]
  #And I enter "LABEL1=Select a field" as "name"
  #And I wait for "1000" milli seconds
  #And I enter "LABEL1=Select/Type" as "zvolv"
  #And I wait for "1000" milli seconds 
  #And I click on "TYI=button" [4]
  
  
  And I click on "VT=Automation"[2]
  And I click on "VT= Add Bot "
  And I enter "PH=Bot name" as "Rohit"
  And I wait for "1000" milli seconds
  And I enter "PH=Describe in brief what this bot does..." as "test"
  And I click on "VT=Done"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 mr-1"
  And I wait for "1000" milli seconds 
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"

  And I refresh the page  
   And I click on "ID=ttitle"
  And I wait for "1000" milli seconds
  And I enter "ID=ttitle" as "s2"
  And I wait for "1000" milli seconds
  And I click on "ICON=check font-medium-2 font-weight-bold success"
  And I click on "VT=s2"
  And I enter "PH=Task name" as "t2"
  And I enter "PH=Days" as "1"
  And I enter "PH=Hours" as "1"
  And I enter "PH=Minutes" as "1"
  And I click on "TYI=text" [3]
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "phone"
  And I click on "VT=Done" 
  And I click on "ICON=plus font-small-2"
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I wait for "2000" milli seconds
  And I click on "VT=Done" 
  And I click on "VT=People"
  And I click on "title=Clear all"
  And I click on "TYI=text" [2]
  And I enter "LIE=Assign To" as "rohit"
  And I enter "ID=durationE" as "1"
  And I wait for "2000" milli seconds
  And I click on "LABEL=Level 1" dropdown
  And I enter "LIE=Level 1" as "rohit"
  And I click on "TYI=text" [4]
  And I enter "LIE=Level 2" as "rohit"
  And I click on "VT=Logic"
  
   And I click on "VT=Automation"[2]
   And I click on "VT=Data"[2]
   And I click on "ICON=check font-medium-2 mr-1"
   
  And I click on "VT=START"
  And I click on "VT=Logic"
  And I click on "CLASS=mat-accordion" [1]
  And I click on "VT=IF" 
  And I enter "LABEL1=Select a field" as "name"
  And I wait for "1000" milli seconds
  And I click on "CLASS=col-2" [2]
  And I wait for "1000" milli seconds
  And I click on "Text contains"[1] dropdown by select class
  And I enter "LABEL1=Select/Type" as "zvolv"
  And I wait for "1000" milli seconds 
  And I click on "TYI=button" [4]
  And I click on "ICON=check font-medium-2 mr-1"
  
  And I click on "VT=Project Initiation"
  And I click on "CLASS=form-group" [4]
  And I click on "VT=Delete"
  And I click on Acceptalert
  And I click on "CLASS=btn btn-outline-primary pull-right" [1]
  And I wait for "1000" milli seconds
  And I enter "PH=Field label" as "email"
  And I click on "VT=Done"
  And I click on "CLASS=success p-0" [1]
  

  
  And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"
  And I click on "NZ=play-circle"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
  And I take Screenshot
  Then I see workflow created successfully
  And I click on "VT=OK"
  

  And I click on "ICON=inbox"
  And I wait for "1000" milli seconds
  And I click on Acceptalert
  And I click on "TYI=checkbox" [1]
  And I click on "ICON=trash-2 danger"
  And I click on "VT=Delete" button
  And I click on "VT=Yes" button
  And I click on "VT=Create project" button
  And I click on "LABEL1=Status"
  And I click on "VT= Active"[2]
  And I click on "LABEL2=Name"
  And I enter "LABEL2=Name" as "Zvolv"
  And I click on "LABEL2=email"
  And I enter "LABEL2=email" as "demo@gmail.com"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  And I enter "PH=search project by title" as "Zvolv"
  And I click on "VT=Zvolv"[2]
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [58]
  #And I click on "VT=Active"
  And I enter "LABEL2=name"[1] as "Test"
  And I enter "LABEL2=Age"[1] as "10"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Form Submitted Successfully"
  Then I should see status is "Completed"[1]
  And I wait for "2000" milli seconds
  Then I should see status is "Assigned"[1]
  And I click on "CLASS=ng-star-inserted" [58]
  And I click on "DI=down"
  And I click on "VT=Active"[3]
  #And I click on "VT=Edit" button
  And I wait for "1000" milli seconds
   And I enter "LABEL2=name"[1] as "zvolv"
  And I enter "LABEL2=Age"[1] as "18"
  And I click on "VT=Submit" button
  And I wait for "2000" milli seconds
  #And I click on "VT=t2"
  And I wait for "1000" milli seconds 
  And I click on "CLASS=ng-star-inserted" [62]
  And I enter "LABEL2=phone"[1] as "123456789"
  And I enter "LABEL2=email"[1] as "demo@zvolv.com"
  And I click on "VT=Submit" button
  And I wait for "3000" milli seconds
  Then I see ToolTip as "Form Submitted Successfully"
  And I wait for "2000" milli seconds
  Then I should see status is "Completed"[2]
  
@CreateTask  @Project
   Scenario: create task
  And I click on "ICON=inbox"
  And I click on "CLASS=card-text text-muted mb-1 mt-1" [1]
  And I click on "VT=Create Task" button
  And I enter "LI=Title" as "test"
  And I enter "LABEL2=Description" as "test"
  And I click on "PH=Select Start Date"
  And I click on "VT=Today"
  And I click on "VT=Select roles"[1]
  And I enter "CLASS=ant-select-selection__placeholder ng-tns-c39-29 ng-star-inserted"[1] as "None"
  And I click on "VT=None"[2]
  And I enter "LI=Duration" as "1"
  And I enter "LI=Escalation level 1" as "None"
  And I click on "VT=None"[2]
  And I enter "LI=Escalation level 2" as "None"
  And I click on "VT=None"[2]
  And I enter "LI=Select a Form" as "Database for Testing"
  And I click on "VT=Next" button
  And I enter "LABEL2=Name" as "demo test"
  And I enter "LABEL2=ID" as "1"
  And I enter "LABEL2=Job" as "demo"
  And I click on "VT=Submit" button
  And I click on "VT=demo"[2]
  And I enter "LABEL2=Name" as "Testing"
  And I enter "LABEL2=ID" as "1"
  And I enter "LABEL2=Job" as "demo"
  And I click on "VT=Submit" button
  And I click on "VT=demo"[2]
  And I click on "DI=bars"
  And I wait for "1000" milli seconds 
  And I click on "DI=history"
  And I click on "DII=down"[2]
  And I click on "DII=fullscreen"[1]
  And I click on "DII=close"[2]
  And I wait for "1000" milli seconds 
  And I click on "DI=edit"
  And I enter "LABEL2=Name" as "Testing"
  And I click on "VT=Edit" button
  And I wait for "2000" milli seconds 
  And I see ToolTip as "Adhoc Task Edited Successfully!"
  

 
  

  
  
  
