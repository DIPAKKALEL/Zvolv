#Author: rohit@zvolv.com

@Builder 
Feature: builder workflow


Background:
Given login into the zvolv application with below credentials
      |dragon_1|saikumaroffice786@gmail.com|Saik@123|
      And I click on "VT=Testing_project"
      And I wait for "1000" milli seconds
      And I click on "ICON=copy"
      And I wait for "1000" milli seconds

 @Workflow @Builder
 Scenario: Workflow 
  
  #And I click on "VT=Workflow"
  #And I click on "TYI=checkbox"[7]
  #And I click on "VT=START"
  #And I click on "ICON=trash font-medium-2 mr-1"
  #And I click on "VT=OK"
  #And I click on "ID=ttitle"
  #And I wait for "1000" milli seconds
  #And I enter "ID=ttitle" as "Test"
  #And I wait for "1000" milli seconds
  #And I click on "ICON=check font-medium-2 font-weight-bold success"
  #And I click on "VT=START"
  #And I enter "PH=Task name" as "test"
  #And I enter "PH=Days" as "1"
  #And I enter "PH=Hours" as "1"
  #And I enter "PH=Minutes" as "1"
  #And I click on "TYI=text" [3]
  #And I click on "VT=×"[1] from "LABEL=Tags"
  #And I wait for "1000" milli seconds 
  #And I click on "LABEL=Tags"
  #And I enter "LIE=Tags" as "new"
  #And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  #And I wait for "1000" milli seconds 
  #And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  #And I click on "VT=Data"[2]
  #And I click on "ICON=plus font-small-2"
  #And I wait for "1000" milli seconds
  #And I enter "PH=Field label" as "name"
  #And I click on "VT=Done" 
  #And I click on "ICON=plus font-small-2"
  #And I wait for "1000" milli seconds
  #And I enter "PH=Field label" as "Age"
  #And I click on "VT=Done" 
  #And I click on "VT=People"
  #And I click on "title=Clear all"
  #And I click on "TYI=text" [2]
  #And I enter "LIE=Assign To" as "rohit"
  #And I enter "ID=durationE" as "1"
  #And I wait for "2000" milli seconds
  #And I click on "LABEL=Level 1" dropdown
  #And I enter "LIE=Level 1" as "rohit@zvolv.com"
  #And I click on "TYI=text" [4]
  #And I enter "LIE=Level 2" as "rohit@zvolv.com"
  #And I click on "VT=Logic"
  #
  #And I click on "VT=Add Next Task"
  #And I click on "ICON=plus"
  #And I click on "TYI=text" [2]
  #And I enter "PH=Days" as "1"
  #And I enter "PH=Hours" as "1"
  #And I enter "PH=Minutes" as "1"
  #
  #And I click on "VT=Automation"[2]
  #And I click on "VT= Add Bot "
  #And I enter "PH=Bot name" as "Rohit"
  #And I wait for "1000" milli seconds
  #And I enter "PH=Describe in brief what this bot does..." as "test"
  #And I click on "VT=Done"
  #And I wait for "1000" milli seconds
  #And I click on "ICON=check font-medium-2 mr-1"
  #And I wait for "1000" milli seconds 
  #And I click on "ICON=settings font-small-2"
  #And I click on "VT=Save"
  #And I wait for "2000" milli seconds 
  #Then I see ToolTip as "Workflow Type updated"
  #And I click on "NZ=play-circle"
  #And I click on "VT=OK"
  #And I wait for "1000" milli seconds 
  #And I take Screenshot
  #Then I see workflow created successfully
  #And I wait for "1000" milli seconds 
  #And I click on "VT=OK"
  #And I wait for "3000" milli seconds 
  #And I click on "VT=Project Initiation"
  #And I click on "CLASS=form-group" [4]
  #And I click on "VT=Delete"
  #And I click on Acceptalert
  #And I click on "ICON=plus font-small-2"
  #And I wait for "1000" milli seconds
  #And I enter "PH=Field label" as "State"
  #And I click on "VT=Done"
  #And I click on "CLASS=success p-0" [1] 
#--------------------------------------------------
  And I click on "VT=Workflow"
  And I click on "TYI=checkbox"[7]
  And I click on "VT=START"
  And I click on "ICON=trash font-medium-2 mr-1"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
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
  And I click on "VT=×"[1] from "LABEL=Tags"
  And I wait for "1000" milli seconds 
  And I click on "LABEL=Tags"
  And I enter "LIE=Tags" as "new"
  And I click on "CS=ngx-editor-textarea" from "VT=Add notes..."
  And I wait for "1000" milli seconds 
  And I2 enter "CLASS=ngx-editor-textarea" as "Testing"
  And I click on "VT=Data"[2]
  And I click on "ICON=plus font-small-2"
  And I wait for "2000" milli seconds
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
  And I click on "CLASS=ft-check font-medium-2 mr-1" [1]
  
  And I refresh the page
  And I wait for "2000" milli seconds 
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
  And I click on "DI=apartment"
  And I wait for "1000" milli seconds
  And I click on "DI=branches"
  And I click on "VT=Export" button
  And I wait for "1000" milli seconds
  And I click on "DI=build"
  And I move to "ID=taskbar_7621"
  And I wait for "2000" milli seconds
  And I move to "ID=taskbar_7622"
  And I click on "VT= Kanban"
  And I wait for "1000" milli seconds 
   And I click on "ICON=settings font-small-2"
  And I click on "VT=Save"
  And I click on "NZ=play-circle"
  And I click on "VT=OK"
  And I wait for "1000" milli seconds 
  And I take Screenshot
  Then I see workflow created successfully
  And I click on "VT=OK"
 
  
 

#@Bots @Builder
#Scenario: bots section
#
#And I click on "VT=Bots"
#And I enter "PH=Bot name" as "Rohit"
#And I wait for "1000" milli seconds 
#And I click on "VT=Rohit"
#And I enter "PH=Describe in brief what this bot does..." as "test"
#And I click on "CLASS=row m-1 w-100" [1]
#And I click on "CLASS=ant-select-selection__rendered" [1]
#And I click on "CLASS=ant-select-dropdown-menu-item ant-select-dropdown-menu-item-selected ant-select-dropdown-menu-item-active ng-star-inserted" [1]
#And I click on "VT=Select Form"
#And I wait for "2000" milli seconds
#And I click on "CLASS=ant-select-dropdown-menu-item ng-star-inserted" [2]
#And I click on "VT= Add Condition" button
#And I click on "ID=dropdownBasic2"
#And I click on "VT=Save"
#And I click on "VT=Save"[3]


@SAP @Builder
  Scenario: SAP integration test
  
And I click on "VT=Integrations"
And I click on "VT=SAP Test"
And I click on "DII=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete" button
And I click on "DI=arrow-left"
And I click on "VT=Create integration" button
And I click on "CLASS=tpa-card mb-2" [1]
And I click on "NZIN=primary"[2]
And I click on "LABEL3=Title"
And I enter "LABEL3=Title" as "SAP testing"
And I click on "LABEL2=Description"
And I enter "LABEL2=Description" as "Test"
And I click on "LABEL=username" dropdown
And I enter "LI=username" as "rohit45"
And I click on "LABEL=password" dropdown
And I enter "LI=password" as "zvolv@123"
And I click on "LABEL3=ashost"
And I enter "LABEL3=ashost" as "SAP Host"
And I click on "LABEL3=sysnr"
And I enter "LABEL3=sysnr" as "SAP sysnr"
And I click on "LABEL3=sysid"
And I enter "LABEL3=sysid" as "1"
And I click on "LABEL3=saprouter"
And I enter "LABEL3=saprouter" as "SAP_router"
And I click on "LABEL3=client"
And I enter "LABEL3=client" as "SAP"
And I click on "NZIN=primary"[2]

And I wait for "2000" milli seconds 
And I click on "VT=SAP testing"
And I click on "NZ=edit"
And I click on "LABEL3=Title"
And I enter "LABEL3=Title" as "SAP Test"
And I click on "LABEL2=Description"
And I enter "LABEL2=Description" as "Test"
And I click on "LABEL=username" dropdown
And I enter "LI=username" as "rohit45"
And I click on "LABEL=password" dropdown
And I enter "LI=password" as "zvolv@123"
And I click on "LABEL3=ashost"
And I enter "LABEL3=ashost" as "SAP Host"
And I click on "LABEL3=sysnr"
And I enter "LABEL3=sysnr" as "SAP sysnr"
And I click on "LABEL3=sysid"
And I enter "LABEL3=sysid" as "1"
And I click on "LABEL3=saprouter"
And I enter "LABEL3=saprouter" as "SAP_router"
And I click on "LABEL3=client"
And I enter "LABEL3=client" as "SAP"
And I click on "VT=Save" button
  
  
@SOAP  @Builder
   Scenario: Soap connector 
 
 And I click on "VT=Integrations"
And I click on "VT=SOAP Test"
And I click on "DII=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete" button
And I click on "DI=arrow-left"
And I click on "VT=Create integration" button
And I click on "CLASS=tpa-card mb-2" [2]
And I click on "NZIN=primary"[2]
And I click on "LABEL3=Title"
And I enter "LABEL3=Title" as "SOAP"
And I click on "LABEL2=Description"
And I enter "LABEL2=Description" as "Test"
And I click on "NZIN=primary"[2]

And I wait for "2000" milli seconds 
And I click on "VT=SOAP"
And I click on "NZ=edit"
And I click on "LABEL3=Title"
And I enter "LABEL3=Title" as "SOAP Test"
And I click on "LABEL2=Description"
And I enter "LABEL2=Description" as "Test"
And I click on "VT=Save" button  


@ApiIntegrations @Builder 
 Scenario Outline: Create Integration , import , filter 
And I click on "VT=Integrations"
And I click on "VT=testing"
And I click on "DII=delete"[1]
And I wait for "2000" milli seconds
And I click on "VT=Delete" button
And I click on "DI=arrow-left"
And I click on "VT=Create integration" button
And I click on "CLASS=tpa-card mb-2" [3]
And I click on "NZIN=primary"[2]
#And I click on "VT=Integrate"[15]
And I click on "LABEL1=Title"
And I enter "LABEL1=Title" as "testing"
And I click on "NZIN=primary"[2]
And I wait for "1000" milli seconds
Then Your integration is saved successfuly
And I click on "VT=OK" button

And I wait for "1000" milli seconds 
And I click on "VT=testing"
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using REST APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
And I wait for "3000" milli seconds
#And I click on "TYI=text" [1]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
#And I click on "VT=Add" button
And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm" [1]
And I enter "PH=key" as "Domain"
And I enter "PH=value" as "dragon_1"
And I enter "PH=description" as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I click on "DII=edit"[2]
And I wait for "1000" milli seconds
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "2000" milli seconds
And I click on "VT=Save" button 

And I click on "NZ=edit"
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using REST APIs. Configure authentication settings & logic as per requirement. Define custom connectors as per need."
And I click on "DI=down"
And I wait for "1000" milli seconds 
And I click on "VT=No auth"[1]
And I click on "VT=Pre-request Script"
And I click on "CLASS=view-lines" [1]
And I enter "CLASS=inputarea"[1] as "enter code here"
#And I enter "CLASS=view-line"[1] as "{enter code here}"
And I click on "VT=Post-request Script"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "{}"
#And I enter "CLASS=view-line"[1] as "{}"
And I click on "VT=Variables"
#And I click on "NZIN=default"[1]
And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm" [1]
And I enter "PH=key" as "Host"
And I enter "PH=value" as "app.zvolv.in"
And I enter "PH=description" as "test"
And I click on "VT=Save" button
And I click on "VT=Activity"


#And I click on "VT=Add" button
#And I enter "PH=key" as "A"
#And I enter "PH=value" as "app.zvolv.in"
#And I enter "PH=description" as "test"
And I click on "DI=arrow-left"
And I wait for "1000" milli seconds 
And I click on "CLASS=mr-1 ant-btn ant-btn-default ant-btn-round ng-star-inserted" [1]
#And I click on "VT=Import" button
And I click on "CS=ant-upload ant-upload-btn" from "VT=Import"
And I wait for "2000" milli seconds 
And I upload "VT=Click or drag postman data file or any of the formats below" as "<File Type>"
Then I see Api integration created successfully


  Examples:
  |File Type |
  |/Samples/SampleJpeg.jpg|
  
@AirTableInt @Builder
 Scenario: AirTable integration 
 
 And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Airtable"
 And I click on "DI=delete"
 And I wait for "1000" milli seconds
 And I click on "VT=Are you sure you want to delete selected integration? All connected actions will also get deleted!" from "VT=Delete"
 #And I click on "CLASS=ng-tns-c14-1 ant-btn ant-btn-primary ant-btn-sm" [1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [4]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Airtable"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "Testing"
 And I click on "LABEL3=Api"
 And I enter "LABEL3=Api" as "1"
 And I click on "LABEL3=Base Id"
 And I enter "LABEL3=Base Id" as "1"
 And I click on "LABEL3=Table Name"
 And I enter "LABEL3=Table Name" as "Test"
 And I click on "VT=Save" button
 
 And I wait for "2000" milli seconds 
 And I click on "VT=Airtable"
 And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm ant-btn-icon-only" [1]
  And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Airtable Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "Testing"
 And I click on "LABEL3=Api"
 And I enter "LABEL3=Api" as "1"
 And I click on "LABEL3=Base Id"
 And I enter "LABEL3=Base Id" as "1"
 And I click on "LABEL3=Table Name"
 And I enter "LABEL3=Table Name" as "Test"
 And I click on "VT=Save" button
 And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using AirTableInt APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
And I wait for "1000" milli seconds 
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
#And I click on "VT=Add" button
And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm" [1]
And I enter "PH=key" as "Domain"
And I enter "PH=value" as "dragon_1"
And I enter "PH=description" as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "1000" milli seconds
And I click on "DII=edit"[8]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "2000" milli seconds
And I click on "VT=Save" button 
 
 
 @Uipath @Builder
 Scenario: Uipath api integration
 
 And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=UI PATH TESTING"
 And I click on "DII=delete"[1]
 And I wait for "2000" milli seconds
 And I click on "VT=Delete" button
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [5]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "UI PATH TESTING"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=X-UIPATH-TenantName"
 And I enter "LABEL3=X-UIPATH-TenantName" as "Test"
 And I click on "VT=Save" button
 
 And I wait for "2000" milli seconds 
 And I click on "VT=UI PATH TESTING"
 And I click on "NZ=edit"
 And I wait for "1000" milli seconds 
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "UI PATH TESTING"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "Testing"
 And I click on "LABEL3=X-UIPATH-TenantName"
 And I enter "LABEL3=X-UIPATH-TenantName" as "TEST"
 And I click on "VT=Save" button
 
 And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using UI PATH"
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "1000" milli seconds
And I click on "DII=edit"[2]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "2000" milli seconds
And I click on "VT=Save" button 
  
 
 
 @freshDesk @Builder
 Scenario: freshDesk api integration test
 
  And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Fresh Desk Testing"
 And I click on "DII=delete"[1]
 And I wait for "2000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[3]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [6]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Fresh Desk"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Subdomain" 
 And I enter "LABEL3=Subdomain" as "Fresh Desk Testing2"
 And I click on "LABEL=Api" dropdown
 And I enter "LI=Api" as "1" 
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds 
 And I click on "VT=Fresh Desk"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Fresh Desk Testing"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "Testing"
 And I click on "LABEL3=Subdomain"
 And I enter "LABEL3=Subdomain" as "Fresh Desk Testing_2"
 And I click on "LABEL=Api" dropdown
 And I enter "LI=Api" as "1"
 And I click on "VT=Save" button
 
  And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using FreshDesk APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[10]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[10]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button
 

@monday.com @Builder
 Scenario: monday.com integration test cases
 
   And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Monday.com Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I click on "BTN=Delete"[3]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [7]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Monday.com"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=API token" dropdown
 And I enter "LI=API token" as "1" 
 And I click on "VT=Save" button
 
 And I wait for "1000" milli seconds
 And I click on "VT=Monday.com"
 And I click on "NZ=edit" 
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Monday.com Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=API token" dropdown
 And I enter "LI=API token" as "1" 
 And I click on "VT=Save" button

And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using Monday.com APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[9]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[9]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button

 
 
@SendGridbyTwilio @Builder
   Scenario: SendGrid by Twilio integration 
   
 And I click on "VT=Integrations"
 And I click on "VT=Twilio Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [8]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "SendGrid by Twilio"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=API" dropdown
 And I enter "LI=API" as "1" 
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds
 And I click on "VT=SendGrid by Twilio"
 And I click on "NZ=edit" 
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Twilio Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=API" dropdown
 And I enter "LI=API" as "1" 
 And I click on "VT=Save" button
 
 And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using SendGrid by Twilio APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[3]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[3]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button


@Trello @Builder
     Scenario: Trello API integration 
     
   And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Trello Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I click on "BTN=Delete"[3]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [9]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Trello"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=API" dropdown
 And I enter "LI=API" as "1" 
 And I click on "LABEL3=API Token"
 And I enter "LABEL3=API Token" as "1" 
 And I click on "VT=Save" button
 
   And I wait for "1000" milli seconds
 And I click on "VT=Trello"
 And I click on "NZ=edit" 
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Trello Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=API" dropdown
 And I enter "LI=API" as "1" 
 And I click on "LABEL3=API Token"
 And I enter "LABEL3=API Token" as "1"
 And I click on "VT=Save" button  
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using Trello APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[7]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[7]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button


@Slack @Builder
   Scenario: Slack api integration
 
 And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Slack Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [10]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Slack"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=Access token" dropdown
 And I enter "LI=Access token" as "1" 
 And I click on "VT=Save" button
 
 
 And I wait for "1000" milli seconds
 And I click on "VT=Slack"
 And I click on "NZ=edit" 
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Slack Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=Access token" dropdown
 And I enter "LI=Access token" as "1" 
 And I click on "VT=Save" button  
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using Trello APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[5]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[5]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button
 

@Stripe @Builder 
 Scenario: Stripe api integration 
 
  And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Stripe Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I click on "BTN=Delete"[2]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [11]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Stripe"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=API" dropdown
 And I enter "LI=API" as "1"  
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds
 And I click on "VT=Stripe"
 And I click on "NZ=edit" 
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Stripe Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=API" dropdown
 And I enter "LI=API" as "1"  
 And I click on "VT=Save" button  
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using Trello APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[10]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[10]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button
 

@Calendly @Builder
  Scenario: Calendly API Integration
  
  And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Calendly Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [12]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Calendly"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=personal access token" dropdown
 And I enter "LI=personal access token" as "1"  
 And I click on "VT=Save" button
 
 And I wait for "1000" milli seconds
 And I click on "VT=Calendly"
 And I click on "NZ=edit" 
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Calendly Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=personal access token" dropdown
 And I enter "LI=personal access token" as "1"  
 And I click on "VT=Save" button  
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using Trello APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[7]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[7]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button


@Okta @Builder
   Scenario: Okta api integartion
   
 And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Okta Test"
 And I click on "DII=delete"[1]
 And I wait for "2000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [13]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Okta"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Authorization"
 And I enter "LABEL3=Authorization" as "1" 
 And I click on "LABEL=subdomain" 
 And I enter "LI=subdomain" as "Okta Test"
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds 
 And I click on "VT=Okta"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Okta Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Authorization"
 And I enter "LABEL3=Authorization" as "1" 
 And I click on "LABEL=subdomain" 
 And I enter "LI=subdomain" as "Okta_Testing"
 And I click on "VT=Save" button
 
 And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using FreshDesk APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[8]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[8]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button


@AgileCRM @Builder
   Scenario: AgileCRM API integration
  
 And I click on "VT=Integrations"
 And I click on "VT=Agile CRM Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[5]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [14]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Agile CRM"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit@zvolv" 
 And I click on "LABEL3=Password" 
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "LABEL3=subdomain" 
 And I enter "LABEL3=subdomain" as "testing"
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds 
 And I click on "VT=Agile CRM"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Agile CRM Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit@zvolv" 
 And I click on "LABEL3=Password" 
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "LABEL3=subdomain" 
 And I enter "LABEL3=subdomain" as "testing"
 And I click on "VT=Save" button
 
  And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using AgileCRM APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[11]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[11]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button
  
   
@Mailchimp @Builder
  Scenario: Mailchimp api integration 
 
    And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Mailchimp Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[2]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [15]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Mailchimp"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=token"
 And I enter "LABEL3=token" as "r1" 
 And I click on "LABEL=dc"[2]
 And I enter "LABEL=dc"[2] as "zvolv"
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds 
 And I click on "VT=Mailchimp"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Mailchimp Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=token"
 And I enter "LABEL3=token" as "r1" 
 And I click on "LABEL=dc"[2]
 And I enter "LABEL=dc"[2] as "zvolv"
 And I click on "VT=Save" button
 
  And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using Mailchimp APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[7]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[7]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button
  
@twilio @Builder
  Scenario: twilio api integration
  
 And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Twilio Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [16]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "twilio"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Account SID"
 And I enter "LABEL3=Account SID" as "s1" 
 And I click on "LABEL=Auth Token" dropdown
 And I enter "LI=Auth Token" as "zvolv" 
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds 
 And I click on "VT=twilio"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Twilio Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Account SID"
 And I enter "LABEL3=Account SID" as "s1" 
 And I click on "LABEL=Auth Token" dropdown
 And I enter "LI=Auth Token" as "zvolv"
 And I click on "VT=Save" button
 
  And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using twilio APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[4]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[4]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button


@Jira @Builder
  Scenario: jira api integration
  
  And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Jira"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[5]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [17]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Jira"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=subdomain" 
 And I enter "LABEL3=subdomain" as "testing_zvolv"
 And I click on "LABEL3=User Name"
 And I enter "LABEL3=User Name" as "rohit@zvolv" 
 And I click on "LABEL3=Password" 
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds 
 And I click on "VT=Jira"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Jira"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=subdomain" 
 And I enter "LABEL3=subdomain" as "testing"
 And I click on "LABEL3=User Name"
 And I enter "LABEL3=User Name" as "rohit@zvolv" 
 And I click on "LABEL3=Password" 
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button
 
  And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using Jira APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[9]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[9]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button


@BambooHR @Builder
   Scenario: BambooHR  API integration Test
   
 And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=BambooHR Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [18]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "BambooHR"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=companyDomain" dropdown
 And I enter "LI=companyDomain" as "app.zvolv.in"
 And I click on "LABEL3=API Key"
 And I enter "LABEL3=API Key" as "1" 
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds 
 And I click on "VT=BambooHR"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "BambooHR Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=companyDomain" dropdown
 And I enter "LI=companyDomain" as "app.zvolv.in"
 And I click on "LABEL3=API Key"
 And I enter "LABEL3=API Key" as "1" 
 And I click on "VT=Save" button
 
  And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using BambooHR APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
#And I click on "TYI=text" [2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
#And I click on "VT=Add"[3]
And I click on "NZIN=default"[1]
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[5]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[5]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button


@Hubspot @Builder
    Scenario: Hubspot API integration Test
    
 And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Hubspot Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [19]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Hubspot"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Bearer Token"
 And I enter "LABEL3=Bearer Token" as "1" 
 And I click on "VT=Save" button
 
  And I wait for "1000" milli seconds 
 And I click on "VT=Hubspot"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Hubspot Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Bearer Token"
 And I enter "LABEL3=Bearer Token" as "1" 
 And I click on "VT=Save" button
 
  And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using BambooHR APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I click on "TYI=text" [2]
#And I wait for "1000" milli seconds
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
#And I click on "VT=Add"[3]
And I click on "NZIN=default"[1]
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[4]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[4]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button
    
    
@SharePoint @Builder
   Scenario: SharePoint API integration
   
    And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=SharePoint"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[2]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [20]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "SharePoint"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL=tenant_id"[1]
 And I enter "LABEL=tenant_id"[1] as "1" 
 And I click on "LABEL=client_id"[1]
 And I enter "LABEL=client_id"[1] as "1" 
 And I click on "LABEL=client_secret"[1]
 And I enter "LABEL=client_secret"[1] as "1" 
 And I click on "LABEL=grant_type"[1]
 And I enter "LABEL=grant_type"[1] as "1" 
 And I click on "LABEL=resource"[1]
 And I enter "LABEL=resource"[1] as "1" 
 And I click on "LABEL=Bearer"[1]
 And I enter "LABEL=Bearer"[1] as "1" 
 And I click on "LABEL=subdomain"[1]
 And I enter "LABEL=subdomain"[1] as "zvolv.in" 
 And I click on "VT=Save" button
  Then Your integration is saved successfuly
 And I click on "VT=OK" button
 
 
 And I scroll down the page 
 And I wait for "2000" milli seconds 
 And I click on "VT=SharePoint"
 And I click on "NZ=edit"
And I enter "PH=Name" as "SharePoint"
And I enter "PH=Description" as "Integrate with any apps using SharePoint APIs. Configure authentication settings & logic as per requirement. Define custom connectors as per need."
And I click on "DI=down"
And I wait for "1000" milli seconds 
And I click on "VT=No auth"[1]
And I click on "VT=Pre-request Script"
And I click on "CLASS=view-lines" [1]
And I enter "CLASS=inputarea" as "{}"
And I click on "VT=Post-request Script"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea" as "{}"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
And I enter "PH=key"[8] as "Host"
And I enter "PH=value"[8] as "app.zvolv.in"
And I enter "PH=description"[8] as "test"
And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "testing"
And I enter "PH=Description" as "Integrate with any apps using sharepoint APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I click on "TYI=text" [2]
#And I wait for "1000" milli seconds
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "NZIN=default"[1]
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[6]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[6]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "2000" milli seconds
And I click on "VT=Save" button


@Adobe @Builder
    Scenario: Adobe PDF Services Test API integration  
    
     And I click on "VT=Integrations"
 And I scroll down the page
 And I click on "VT=Adobe"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [21]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Adobe"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "VT=Save" button
 Then Your integration is saved successfuly
 And I click on "VT=OK" button
 
 And I scroll down the page 
 And I wait for "2000" milli seconds 
 And I click on "VT=Adobe"
 And I click on "NZ=edit"
And I enter "PH=Name" as "Adobe"
And I enter "PH=Description" as "Integrate with any apps using Adobe APIs. Configure authentication settings & logic as per requirement. Define custom connectors as per need."
And I click on "DI=down"
And I wait for "1000" milli seconds 
And I click on "VT=No auth"[1]
And I click on "VT=Pre-request Script"
And I click on "CLASS=view-lines" [1]
And I enter "CLASS=inputarea"[1] as "{}"
And I click on "VT=Post-request Script"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "{}"
And I click on "VT=Variables"
And I wait for "1000" milli seconds 
And I click on "NZIN=default"[1]
And I enter "PH=key" as "Host"
And I enter "PH=value" as "app.zvolv.in"
And I enter "PH=description" as "test"
And I click on "VT=Save" button
 
  And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
 And I enter "PH=Name" as "Adobe testing"
And I enter "PH=Description" as "Integrate with any apps using Adobe PDF Service APIs."
And I click on "DI=down"
And I click on "VT=GET"[2]
And I click on "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted" [1]
And I wait for "1000" milli seconds
And I enter "CLASS=ant-input ng-untouched ng-pristine ng-valid ant-input-lg ng-star-inserted"[1] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
#And I click on "TYI=text" [2]
#And I wait for "1000" milli seconds
#And I enter "TYPE=text"[2] as "http://app.zvolv.in/rest/v17/integrations/52/actions"
And I click on "VT=Headers"
And I wait for "1000" milli seconds
And I click on "VT=Add" button
And I enter "PH=key"[2] as "Domain"
And I enter "PH=value"[2] as "dragon_1"
And I enter "PH=description"[2] as "test"
And I click on "CLASS=ant-btn ant-btn-primary" [1]
And I wait for "2000" milli seconds
And I click on "DII=edit"[11]
And I click on "NZIN=primary"[3]
And I wait for "1000" milli seconds
And I click on "DII=edit"[11]
And I click on "CLASS=ant-btn ant-btn-primary ant-btn-lg" [1]
And I wait for "1000" milli seconds
And I click on "VT=Save" button


@MysqlDatabase @Builder
   Scenario: Mysql database Integration
 
 And I click on "VT=Integrations"
 And I click on "VT=Mysql Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [22]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Mysql"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=Mysql"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Mysql Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "Mysql testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
#And I click on "VT=Add" 
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "NZIN=default"[1]
#And I click on "VT=Add"
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I click on "NZIN=primary"[2]
#And I click on "VT=Save" button
And I click on "DII=edit"[2]
And I click on "VT=Test query" button
And I click on "NZIN=primary"[2]


@PostgreSql @Builder
  Scenario: postgresql databases test
 
 And I click on "VT=Integrations"
 And I click on "VT=PostgreSQL"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [23]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "PostgreSQL"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=PostgreSQL"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "PostgreSQL"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "PostgreSQL testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "VT=Add" button
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "NZIN=default"[1]
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button
And I click on "NZIN=primary"[2]
  
  
@Oracle @Builder
  Scenario: postgresql databases test
 
 And I click on "VT=Integrations"
 And I click on "VT=Oracle Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [24]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Oracle"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=Oracle"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Oracle Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "oracle testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "NZIN=default"[1]
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button
And I click on "NZIN=primary"[2]

@Redshift @Builder
   Scenario: Redshift Test
   
    And I click on "VT=Integrations"
 And I click on "VT=Redshift Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [25]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Redshift"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=Redshift"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Redshift Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "Redshift testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "VT=Add" button
#And I click on "NZIN=default"[1]
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
#And I click on "NZIN=default"[1]
And I click on "VT=Add" button
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]

@SAPHana @Builder
    Scenario: SAPHana DB Test

 And I click on "VT=Integrations"
 And I click on "VT=SAP Hana Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [26]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "SAP Hana"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=SAP Hana"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "SAP Hana Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "SAP Hana testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "NZIN=default"[1]
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button
And I click on "NZIN=primary"[2]

@MicrosoftSQL @Builder
    Scenario: Microsoft SQL Test
    
 And I click on "VT=Integrations"
 And I click on "VT=Microsoft SQL Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [27]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Microsoft SQL"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=Microsoft SQL"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Microsoft SQL Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "Microsoft SQL testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "NZIN=default"[1]
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button
And I click on "NZIN=primary"[2]

@GoogleSheets @Builder
    Scenario: Google Sheets Test 
    
    
 And I click on "VT=Integrations"
 And I click on "VT=Google Sheets Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [28]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Google Sheets"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=Google Sheets"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Google Sheets Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "Google Sheets testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm" [1]
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button
And I click on "NZIN=primary"[2]

@MicrosoftAccess @Builder
   Scenario: Microsoft Access DB Test
  
 And I click on "VT=Integrations"
 And I click on "VT=Microsoft Access Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [29]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Microsoft Access"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=Microsoft Access"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Microsoft Access Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "Microsoft Access testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
#And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm" [1]
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm" [1]
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button 
And I click on "NZIN=primary"[2]

@Elasticsearch  @Builder
   Scenario:Elasticsearch Test 
   
 And I click on "VT=Integrations"
 And I click on "VT=Elasticsearch Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [30]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Elasticsearch"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=Elasticsearch"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Elasticsearch Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "zvolv.in"
 And I click on "LABEL=Host" dropdown
 And I enter "LI=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "Elasticsearch testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm" [1]
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button  
And I click on "NZIN=primary"[2]


@Snowflake @Builder
    Scenario: Snowflake Test 

 And I click on "VT=Integrations"
 And I click on "VT=Snowflake Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [31]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Snowflake"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "snowflake://"
 And I click on "LABEL3=Host"
 And I enter "LABEL3=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=Snowflake"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Snowflake Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "Snowflake://"
 And I click on "LABEL3=Host"
 And I enter "LABEL3=Host" as "app.zvolv.in"
 And I click on "LABEL3=Port"
 And I enter "LABEL3=Port" as "8000"
 And I click on "LABEL3=Database Name"
 And I enter "LABEL3=Database Name" as "zvolv"
 And I click on "LABEL3=Username"
 And I enter "LABEL3=Username" as "rohit45"
 And I click on "LABEL3=Password"
 And I enter "LABEL3=Password" as "zvolv@123" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "Snowflake testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm" [1]
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button   
And I click on "NZIN=primary"[2]

 
@GoogleBigQuery @Builder
    Scenario: Google BigQuery DB Test
    
   And I click on "VT=Integrations"
 And I click on "VT=Google BigQuery Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [32]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Google BigQuery"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "GoogleBigQuery://"
 And I click on "LABEL=type"[2]
 And I enter "LABEL=type"[2] as "app.zvolv.in"
 And I click on "LABEL3=project_id"
 And I enter "LABEL3=project_id" as "1"
 And I click on "LABEL3=private_key_id"
 And I enter "LABEL3=private_key_id" as "zvolv1"
 And I click on "LABEL=private_key"[2]
 And I enter "LABEL=private_key"[2] as "rohit45"
 And I click on "LABEL3=client_email"
 And I enter "LABEL3=client_email" as "zvolv@gmail.com" 
 And I click on "LABEL3=client_id"
 And I enter "LABEL3=client_id" as "z1" 
 And I click on "LABEL3=auth_uri"
 And I enter "LABEL3=auth_uri" as "zvolv" 
 And I click on "LABEL3=token_uri"
 And I enter "LABEL3=token_uri" as "zvolv" 
 And I click on "LABEL3=auth_provider_x509_cert_url"
 And I enter "LABEL3=auth_provider_x509_cert_url" as "zvolv" 
 And I click on "LABEL3=client_x509_cert_url"
 And I enter "LABEL3=client_x509_cert_url" as "zvolv"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=Google BigQuery"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Google BigQuery Test"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "LABEL3=Protocol"
 And I enter "LABEL3=Protocol" as "GoogleBigQuery://"
 And I click on "LABEL=type"[2]
 And I enter "LABEL=type"[2] as "app.zvolv.in"
 And I click on "LABEL3=project_id"
 And I enter "LABEL3=project_id" as "1"
 And I click on "LABEL3=private_key_id"
 And I enter "LABEL3=private_key_id" as "zvolv1"
 And I click on "LABEL=private_key"[2]
 And I enter "LABEL=private_key"[2] as "rohit45"
 And I click on "LABEL3=client_email"
 And I enter "LABEL3=client_email" as "zvolv@gmail.com" 
 And I click on "LABEL3=client_id"
 And I enter "LABEL3=client_id" as "z1" 
 And I click on "LABEL3=auth_uri"
 And I enter "LABEL3=auth_uri" as "zvolv" 
 And I click on "LABEL3=token_uri"
 And I enter "LABEL3=token_uri" as "zvolv" 
 And I click on "LABEL3=auth_provider_x509_cert_url"
 And I enter "LABEL3=auth_provider_x509_cert_url" as "zvolv" 
 And I click on "LABEL3=client_x509_cert_url"
 And I enter "LABEL3=client_x509_cert_url" as "zvolv" 
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "Snowflake testing"
And I enter "PH=Description" as "Test"
And I click on "CLASS=view-line" [1]
And I enter "CLASS=inputarea"[1] as "SELECT * FROM users WHERE id =1 AND Username = rohit45"
And I click on "VT=Variables"
And I click on "NZIN=default"[1]
And I enter "PH=key"[1] as "id"
And I enter "PH=value"[1] as "1"
And I enter "PH=description"[1] as "test"
And I click on "CLASS=ant-btn ant-btn-default ant-btn-sm" [1]
And I enter "PH=key"[2] as "username"
And I enter "PH=value"[2] as "rohit45"
And I enter "PH=description"[2] as "test"
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[2]
And I click on "DII=edit"[2]
And I click on "VT=Test query" button     
And I click on "NZIN=primary"[2]
 
@OCR @Builder
 Scenario Outline: connect with OCR App integration test
 
  And I click on "VT=Integrations"
 And I click on "VT=OCR"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [33]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "OCR"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "VT=Save" button 
 
 And I wait for "1000" milli seconds 
 And I click on "VT=OCR"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "OCR"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "An optical character recognition (OCR) engine"
 And I click on "VT=Save" button
 
And I click on "CLASS=ant-btn ant-dropdown-trigger ant-btn-primary ant-btn-sm ng-star-inserted" [1]
And I enter "PH=Name" as "OCR testing"
And I enter "PH=Description" as "Test"
And I upload "VT=Choose file" as "<File Type>"
And I wait for "2000" milli seconds
And I click on "title=Form"
And I wait for "1000" milli seconds 
And I click on "CLASS=ant-select-dropdown-menu-item ant-select-dropdown-menu-item-selected ant-select-dropdown-menu-item-active ng-star-inserted" [1]
And I wait for "1000" milli seconds 
And I click on "NZIN=primary"[3]
And I click on "DII=edit"[2]
And I upload "VT=Choose file" as "<File Type>"
And I click on "title=Form"
And I wait for "1000" milli seconds 
And I click on "CLASS=ant-select-dropdown-menu-item ant-select-dropdown-menu-item-selected ant-select-dropdown-menu-item-active ng-star-inserted" [1]
And I click on "NZIN=primary"[2]
And I wait for "4000" milli seconds 
And I click on "NZIN=primary"[3]

  Examples:
  |File Type |
  |/Samples/SampleJpeg.jpg|
  

@DocumentManagment @Builder
   Scenario: Document Managment Apps integration test

 And I click on "VT=Integrations"
 And I click on "VT=Document Managment"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [34]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Document Managment"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "TEST"
 And I click on "VT=Save" button  

 And I wait for "1000" milli seconds 
 And I click on "VT=Document Managment"
 And I click on "NZ=edit"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Document Managment"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "Create or Edit documents"
 And I click on "VT=Save" button

@Dropbox @Builder
   Scenario: Dropbox Apps integration test

 And I click on "VT=Integrations"
 And I click on "VT=Dropbox Test"
 And I click on "DII=delete"[1]
 And I wait for "1000" milli seconds
 And I scroll up the page
 And I click on "BTN=Delete"[1]
 And I click on "DI=arrow-left"
 And I click on "VT=Create integration" button
 And I click on "CLASS=tpa-card mb-2" [35]
 And I click on "DI=right"
 And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Dropbox"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "Test"
 And I click on "LABEL3=Access Token"
 And I enter "LABEL3=Access Token" as "zvolv123"
 And I click on "VT=Save" button  

 And I wait for "1000" milli seconds 
 And I click on "VT=Dropbox"
 And I click on "NZ=edit"
  And I click on "LABEL3=Title"
 And I enter "LABEL3=Title" as "Dropbox Test"
 And I click on "LABEL2=Description"
 And I enter "LABEL2=Description" as "Attach, share, and create Dropbox items inside of Zvolv"
 And I click on "LABEL3=Access Token"
 And I enter "LABEL3=Access Token" as "zvolv123"
 And I click on "VT=Save" button
 
 
 
@Automations @Builder
   Scenario Outline: Automations
   And I wait for "1000" milli seconds 
   And I click on "VT=Automations"
   And I wait for "1000" milli seconds 
   And I click on "VT=Create automation" button
   #And I click on "LABEL1=Title"
   And I enter "PH=Enter automation title" as "demoAuto"
   #And I click on "LABEL1=Description"
   And I enter "PH=Explain automation in few words" as "test"
   And I click on "VT=Submit" button 
   Then I see ToolTip as "Automation created successfully"
   And I enter "PH=search by title" as "demoAuto"
   And I wait for "1000" milli seconds
   And I click on "VT=demoAuto"
   And I wait for "1000" milli seconds 
   And I click on "NZIN=outline"[1]
   And I wait for "1000" milli seconds
   And I click on "DII=close"[3] 
   #And I click on "CLASS=ant-modal-close ng-star-inserted" [2]
   #And I wait for "1000" milli seconds 
   And I click on "DI=caret-right"
   And I click on "CLASS=ant-switch" [1]
   And I wait for "3000" milli seconds
   And I click on "TYI=button" [2]
   And I scroll down the page 
   And I wait for "1000" milli seconds
   And I click on "CLASS=view-line" [1]
   And I enter "CLASS=inputarea"[1] as "{}"
   And I wait for "1000" milli seconds
   And I click on "DII=save"[1]
   And I wait for "2000" milli seconds
   Then I see ToolTip as "Automation updated successfully"
   #And I click on "CLASS=btn btn-secondary btn-raised mb-0" [3]
   And I click on "CLASS=ft-settings" [3]
    And I wait for "2000" milli seconds 
   #And I click on "VT=Deploy"
   #And I click on "ICON=play mr-2"
   #Then I see ToolTip as "Publish created successfully"
   And I click on "DII=close"[1]
   
   And I wait for "1000" milli seconds 
   And I click on "DII=edit"[2]
   And I enter "PH=Enter automation title" as "Testing edit"
   And I enter "PH=Explain automation in few words" as "test"
   And I click on "VT=Submit" button 
   And I wait for "1000" milli seconds 
   And I click on "DII=delete"[2]
   And I click on "VT=Delete" button
   And I wait for "2000" milli seconds 
   #Then I see ToolTip as "Automation deleted successfully"
   And I wait for "3000" milli seconds 
   And I enter "PH=search by title" as "new test bot"
   And I click on "DI=reload"
   And I wait for "1000" milli seconds 
   And I click on "DI=delete"
   And I click on "VT=Delete" button
     And I wait for "1000" milli seconds
   #Then I see ToolTip as "Automation deleted successfully"
   And I click on "VT=Import" button
   And I wait for "1000" milli seconds
   And I upload "VT=Click or drag automation file" as "<File Type>"
   And I wait for "1000" milli seconds 
   And I click on "NZIN=primary"[2]
   And I wait for "1000" milli seconds 
   #Then I see ToolTip as "Automation import Successfully"
   Then I take Screenshot

   
  Examples:
  |File Type |
  |/Samples/[kapilwf]_automations_2024-04-18.zip|
  
  
@Documents @Builder
   Scenario: document section 
   
   And I click on "VT=Documents"
   And I wait for "1000" milli seconds 
   And I click on "VTJS=Test045" button
   #And I click on "CLASS=card-footer text-muted" [1]
   And I click on "NZ=delete"	
   And I click on "VT=Yes, delete"
   And I wait for "1000" milli seconds 
   Then I see ToolTip as "Custom document deleted successfully!"
   And I click on "VT=Create Document" button
   And I click on "VT=Create New Document"
   And I click on "VT=Dossier"
   And I enter "PH=Enter document name" as "Test045"
   And I enter "PH=Explain document in few words" as "testing"
   And I click on "VT=Review Document" button
   And I click on "VT=Save Changes" button
   And I enter "PH=search document by title" as "Test045"
   And I click on "VT=Test045"
   #And I click on "VT=Details"
   And I click on "DII=right"[1]
   And I wait for "1000" milli seconds 
   And I enter "PH=Title" as "Test045"
   And I enter "LABEL2=Details" as "testing"
   And I click on "VT=Data Points"
   And I click on "TY=plus"
   And I click on "LABEL=Choose Form" 
   And I enter "LIE=Choose Form" as "Test" 
   And I click on "DII=close" [2]
   And I click on "LABEL=Choose Field"
   And I enter "LIE=Choose Field" as "name"
   And I click on Body
   And I click on "VT=Done "
   And I click on "NZIN=primary"[1]
   Then I see ToolTip as "New custom document template created successfully!"
   And I wait for "2000" milli seconds 
   And I click on "VT=Preview" button
   And I enter "PH=Enter project id for preview" as "1"
   And I wait for "1000" milli seconds
   And I click on "CLASS=swal2-confirm swal2-styled" [1]
   And I wait for "5000" milli seconds
   And I switched to parent Tab
   And I click on "VT=OK"
   #And I wait for "1000" milli seconds
   #And I click on "ICON=copy"
   #And I wait for "3000" milli seconds
   #And I click on "ICON=file-text"
   #And I click on "VT=Create Document" button
   #And I click on "VT=User invitation message"
   #And I enter "PH=Enter document name" as "user"
   #And I enter "PH=Explain document in few words" as "testing"
   #And I click on "VT=Review Document" button
   #And I click on "VT=Save Changes" button
   #Then I see ToolTip as "New custom document template created successfully!" 
   #And I wait for "2000" milli seconds
   #And I click on "DI=down"
   #And I click on "VT=Dossier"
   
  
  #--------------This is for html template as of now dont need to test this -------------
   #And I click on "VT=Create Document" button
   #And I click on "VT=Create New Document"
   #And I click on "VT=HTML Template"
   #And I enter "LIE=Document Title" as "Testing HTML Template"
   #And I enter "LIE=Document Description" as "Testing"
   #And I click on "VT=Review Document" button
   #And I click on "VT=Save Changes" button 
   #And I enter "PH=search document by title" as "Testing HTML Template"
   #And I click on "VT=Testing HTML Template"
   
   
   
      
     
  