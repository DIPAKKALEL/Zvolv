#Author: rohit@zvolv.com

@Administration
Feature: Administration Testcases 

  
    Background: 
    	Given login into the zvolv application with below credentials
      |dragon_1|saikumaroffice786@gmail.com|Saik@123|
      And I click on "VT=End to End"
      And I click on "ICON=lock"
      And I wait for "2000" milli seconds 
     
  @members @Invite
  Scenario Outline: Invite members
      And I click on "VT=Members" 
      And I click on "VT=Invite members" button
      When I navigate to the tempEmail page
      #And I click on "ID=click-to-delete"
      And I copy email from TempEmail
      And I switched to parent Tab
      And I wait for "2000" milli seconds
      And I click on "CLASS=form-control ng-untouched ng-pristine ng-invalid" [1]
      And I enter email
      And I enter "LIE=Name" as "Rohit"
      And I click on "NZIN=Add Attribute" [1]
      And I enter "PH=Enter Key" as "1"
      And I enter "PH=Enter Value" as "demo"
      And I click on "VT=Done"
      And I click on "JS=Advance options"
      And I click on "LABEL1=Roles"
      And I enter "LABEL1=Roles" as "Manager" 
      And I wait for "2000" milli seconds 
      And I click on "VT=Manager"[2]
      And I click on "LABEL=Default password" 
      And I enter "PH=********" as "Rohit@123"
      And I click on "VT=demo" from "LABEL=Custom "
      And I enter Custom invitation message as "demo"
      And I click on "VT=Save" button
      And I wait for "4000" milli seconds
      And I click on "VT=Send Invitations" 
      And I wait for "2000" milli seconds
      Then I see ToolTip as "User added successfully"
      When I navigate to the tempEmail page
      And I wait for "18000" milli seconds 
      And I scroll down the page 
      And I take Screenshot
      #And I click on "CLASS=viewLink title-subject" [2]
      #And I click on "VT=Invitation for joining dragon_1 zvolv workspace"
      

@EditUser
Scenario: Edit User
      And I wait for "2000" milli seconds
      And I click on "VT=Members" 
      And I wait for "1000" milli seconds
      And I click on Three dots of "demo8142@gmail.com"
      And I click on "ID=Title"
      And I enter "ID=Title" as "Test1"
      And I click on "ID=Description" 
      And I enter "ID=Description" as "testing"
      And I click on "ID=UserEmail"
      And I enter "Id=UserEmail" as "test@zvolv.com"
      And I click on "ID=UserPhone"
      And I enter "ID=UserPhone" as "12345678"
      And I click on Status
      And I enter "LIE=Status" as "ACTIVE"
      And I wait for "3000" milli seconds 
      And I click on "VT=×" from "LABEL=Roles"      
      And I enter "LI=Roles" as "System Admin"
      And I wait for "2000" milli seconds 
      And I click on "VT=System Admin"
      And I click on "VT=Save"
      And I wait for "2000" milli seconds  
      Then I see ToolTip as "User edited successfully"
      
@Filter
Scenario: filter functionality
    And I wait for "2000" milli seconds 
    And I click on "VT=Members" 
    And I wait for "2000" milli seconds 
		And I click on "ICON=filter"
		And I scroll down the page
		And I wait for "2000" milli seconds
	
		And I click on "VT=Status"
		And I wait for "1000" milli seconds 
		And I click on "VT=ACTIVE" 
		And I wait for "1000" milli seconds
		And I click on "ICON=filter"
		And I scroll down the page
		And I wait for "2000" milli seconds
	
		And I click on "VT=Status"
		And I wait for "1000" milli seconds 
		And I click on "VT=INACTIVE" 
		And I wait for "1000" milli seconds
		And I click on "ICON=filter"
		And I wait for "1000" milli seconds
	
	  And I click on "ICON=filter"
	  And I click on "VT=Has No Activity"
	  And I click on "VT=Since 15 days"
	  And I refresh the page 
	  And I click on "ICON=filter"
	  And I click on "VT=Has No Activity"
	  And I click on "VT=Since 30 days"
	  And I wait for "2000" milli seconds 
	  And I refresh the page 
	  And I click on "ICON=filter"
	  And I click on "VT=Has No Activity"
	  And I click on "VT=Since 60 days"
	  And I wait for "2000" milli seconds 

	  And I click on "ICON=download-cloud" 
    And I wait for "2000" milli seconds 
    And I click on "ICON=file"
    And I wait for "1000" milli seconds 
    And I click on "LABEL=To"
    And I enter "LI=To" as "test@gmail.com"
    And I wait for "1000" milli seconds
    And I click on "ID=ActivityStartDate"
    And I enter "LI=Start Date" as "01"
    And I enter "LI=Start Date" as "03"
    And I enter "LI=Start Date" as "2023"
    And I click on "LABEL=End Date" 
    And I enter "LI=End Date" as "01"
    And I enter "LI=End Date" as "02"
    And I enter "LI=End Date" as "2024" 
    And I wait for "2000" milli seconds 
    And I click on "VT=Send"
    And I click on "ICON=upload-cloud"
    And I wait for "2000" milli seconds 
    And I click on "VT=Import File" button
    And I Uploaded "<File Type>" file
    And I wait for "2000" milli seconds 
    And I click on "VT=Send Invitations"
    And I wait for "2000" milli seconds 
     
@ActiveAndDeactiveUser
     Scenario:  Active Deactive user Scenario 
      And I wait for "3000" milli seconds
      And I click on "VT=Members" 
      #And I click on menu
      And I click on Three dots of "demo8142@gmail.com"
      And I click on Status
      And I click on "LABEL1=ACTIVE"
      And I wait for "2000" milli seconds 
      And I enter "LI=Status" as "ACTIVE"
      And I click on "VT=ACTIVE"[22]
      And I wait for "3000" milli seconds 
      #And I click on Status
      And I click on "VT=Save"
      And I wait for "2000" milli seconds 
      And I refresh the page 
      And I scroll down the page 
      And I click on checkbox
      And I click on "NZC=Deactivate selected users"  
      And I wait for "2000" milli seconds 
      And I click on "VT=Submit"
      And I click on "VT=OK"
      When I enter "PH=search user by title" as "Test1"
      And I wait for "2000" milli seconds 
      Then I should see deactivate user 

@CreateRole @Roles

   Scenario: Create role 
   And I wait for "1000" milli seconds
   And I click on "VT=Roles" button
   And I click on "VT=Create Role" button
   And I enter RoleName
   And I enter "PH=optional" as "testing"  
   And I wait for "2000" milli seconds  
   And I click on "VT=Create Roles" button
   And I click on "VT=OK"
   When I enter "PH=Enter unique title" as RoleName
   Then I see Role created Successfully   
   #And I enter "PH=Enter unique title" as "test"
   #And I enter "PH=Enter unique title"[1] as "Test"   
   #And I enter "PH=optional"[1] as "test"
   #And I click on "VT=Create Roles"
   
@UpdateRoles @Roles

   Scenario: update role 
   And I wait for "1000" milli seconds
   And I click on "VT=Roles" button
   #And I wait for "1000" milli seconds
   And I click on menu
   And I2 enter "ID=Title" as "Demo"
   And I2 enter "PH=optional" as "testing"
   And I wait for "1000" milli seconds
   And I click on "VT=×"[1] from "LABEL=Child Roles"
   #And I click on "VT=×"[1] from "LABEL=Child Roles"
   And I click on "LABEL=Child Roles" 
   And I enter "LIE=Child Roles" as "System Admin"
   And I click on "VT=System Admin"[4]
   And I wait for "2000" milli seconds
   And I click on "VT=×"[1] from "LABEL=Members"
   And I enter "LIE=Members" as "rohit"
   And I wait for "3000" milli seconds 
   And I click on "VT=rohit"[3]
   And I wait for "1000" milli seconds
   And I click on "VT=Update"
   #And I click on Three dots of "Manager"
   #And I click on "VT=×"[2] from "LABEL=Members"
   #And I click on "VT=Update" button
   
@RolesByFilter @Roles

   Scenario: filters
   And I click on "VT=Roles" button
   And I enter "PH=search role by title" as "Testing"
   And I wait for "2000" milli seconds
   And I enter "LABEL1=search role by parent roles" as "System Admin"
   And I click on "VT=System Admin"[1]
   And I click on "VT=×" from "LABEL=search role by parent roles"
   And I click on "LABEL=search role by child roles"
   And I enter "LABEL1=search role by child roles" as "System Admin"
   And I click on "VT=Linked Users"[1]
   And I click on "VT=×" from "LABEL=search role by child roles"
   And I wait for "3000" milli seconds 
   And I click on "ICON=download-cloud"
   
   
#@RolesDownload @Roles  
   #Scenario: download file 
   #And I wait for "2000" milli seconds
   #And I click on "VT=Roles" button
   #And I wait for "2000" milli seconds  
   #And I click on "ICON=download-cloud"
   #
   
   
@Creation @Permission
   Scenario: Creation
   And I wait for "2000" milli seconds  
   And I click on "VT=Permissions"
   And I click on "VT=Expand"[1]
   And I click on "LABEL=Choose user groups"
   And I click on "VT=×"[1] from "LABEL=Choose user groups"
   #And I click on "LABEL=Linked Users"[1] from "VT=×"
   And I enter "LIE=Choose user groups" as "Linked Users"
   And I wait for "2000" milli seconds
   And I click on "VT=Linked Users"[1]
   And I click on "VT=Save"[1] 
   And I click on "VT=Close"[1]
   Then I see ToolTip as "Permissions updated successfully"
   And I wait for "2000" milli seconds 
   And I click on "VT=Expand"[2]
   And I wait for "2000" milli seconds
   And I click on "LIND=Choose user groups"[4]
   And I click on "VT=×"[2] from "LABEL=System Admin"
   And I enter "LIE=New database creation" as "System Admin"
   #And I enter "LABELIN=Linked Users"[4] as "Linked Users"
   And I wait for "2000" milli seconds
   And I click on "VT=System Admin"[2]
   And I click on "VT=Save"[2]
   And I click on "VT=Close"[1]
    And I wait for "2000" milli seconds
   Then I see ToolTip as "Permissions updated successfully"
   And I click on "VT=Expand"[3]
   And I click on "LIND=Choose user groups"[5]
   And I click on "VT=×"[3] from "LABEL=System Admin"
   And I enter "LIE=New reports creation" as "System Admin"
   And I click on "VT=System Admin"[3]
   And I click on "VT=Save"[3]
   And I click on "VT=Close"[1]
   And I wait for "3000" milli seconds
   Then I see ToolTip as "Permissions updated successfully"
   
@Workflows @Permission
  Scenario: WorkFlows
  And I wait for "2000" milli seconds
  And I click on "VT=Permissions"
  And I click on "VT=Workflows"
  And I click on "VT=Expand"[1]
  And I click on "VT=×"[1] from "LABEL=System Admin"
  And I enter "LIE=View" as "System Admin" 
  And I click on "VT=System Admin"[1]
  And I click on "VT=×"[1] from "LABEL=System Admin"
  And I enter "LIE=New Project" as "System Admin" 
  And I click on "VT=System Admin"[1]
  And I click on "VT=Save"[1]
  And I click on "VT=Close"[1]
  
  

@Settings @Authentication
  Scenario Outline: AUTH AND BRANDING admin settings 
    
 #And I click on "TYI=button" [2]
 #And I wait for "1000" milli seconds     
 #And I click on "TYI=button" [2]
  And I click on "VT=Settings"
  And I click on "TYI=button" [3]
  And I wait for "1000" milli seconds     
  And I click on "TYI=button" [3]
  And I click on "TYI=button" [4]
  And I wait for "1000" milli seconds
  And I click on "TYI=button" [4]
  And I click on "TYI=button" [5]
  And I wait for "1000" milli seconds
  And I click on "TYI=button" [5]  
  And I click on "DI=user"
  And I click on "NZ=link"
  And I click on "VT=Upload"[1]
  And I upload "VT=Upload your image" as "<File Type>"
  And I wait for "1000" milli seconds 
  And I click on "VT=Update" button
  
  And I wait for "7000" milli seconds
  And I click on "ID=dropdownBasic3"  
  And I click on "ICON=power mr-2"
  And I wait for "4000" milli seconds 
  Then I see login picture changed
  Given login into the zvolv application with below credentials
  |dragon_1|saikumaroffice786@gmail.com|Saik@123|
  And I click on "VT=End to End"
  And I click on "ICON=lock"
  And I click on "VT=Settings"
  And I click on "DI=user"
  
  And I wait for "2000" milli seconds
  And I upload "VT=Upload" as "<File Type>"
  And I click on "DI=down"
  And I wait for "3000" milli seconds
  And I click on "VT=Left"[2]
 
  Examples:
  |File Type |
  |/Samples/SampleJpeg.jpg|
  #|/Samples/wp3757104.jpg|
  #|image(jpg)|
  
  
  
  @Settings @communication  
 Scenario: communication  
 
  And I click on "VT=Settings"	
  And I wait for "1000" milli seconds
  And I click on "DI=interaction"
  And I click on "TYI=button" [2]
  And I wait for "1000" milli seconds
  And I click on "TYI=button" [2]
  And I click on "TYI=button" [3]
  And I wait for "1000" milli seconds
  And I click on "TYI=button" [3]
  And I click on "TYI=button" [6]
  And I wait for "2000" milli seconds
  And I click on "TYI=button" [6]
  And I click on "TYI=button" [7]
  And I wait for "1000" milli seconds
  And I click on "TYI=button" [7]
  And I wait for "2000" milli seconds
  #And I click on "VT=Choose your languages"
  #And I enter "LI=Choose your languages" as "English" 
  #And I wait for "1000" milli seconds
  #And I click on "VTJS=View Content" button    
   
@Settings @DashBoard  
 Scenario: dashboard settings
 
  And I click on "VT=Settings"	
  And I wait for "1000" milli seconds
  And I click on "DI=dashboard"
  And I click on "TYI=button" [2]
  And I wait for "1000" milli seconds
  And I click on "TYI=button" [2]
  And I wait for "1000" milli seconds
  And I click on "TYI=button" [3]
  And I wait for "1000" milli seconds
  And I click on "TYI=button" [3]

@Settings @MobileAppSettings
  Scenario: mobile app settings
  And I wait for "1000" milli seconds 
  And I click on "VT=Settings"
  And I click on "DI=mobile"
  And I wait for "2000" milli seconds
  And I click on "DII=caret-down"[1]
  And I enter "PH=Title" as "Testing"
  And I enter "PH=Icon" as "Test"
  And I enter "PH=URL" as "http://dragon_1.zvolv.in"
  And I enter "PH=Search..." as "rohit"
  And I click on "DI=down"
  And I wait for "1000" milli seconds
  And I click on "VT=End to End - 1" 
  And I wait for "1000" milli seconds 
  And I click on "NZIN=primary"[1]
    And I click on "DII=caret-down"[1]
  And I click on "DII=caret-down"[2]
  And I wait for "2000" milli seconds 
  And I enter "LI=Play store link" as "https://play.google.com/store/apps/details?id=me.twig.twigme"
  And I click on "VT=UPDATE" button
  And I click on "DII=caret-down"[3]
  And I wait for "2000" milli seconds 
  And I scroll down the page  
  And I enter "PH=GCM Auth Key" as ""
  And I click on "NZIN=primary"[2]
  And I click on "DII=caret-down"[4]
  And I wait for "1000" milli seconds
  And I enter "PH=Enter Android Minimum Version" as ""
  And I enter "PH=Enter Android Latest Version" as ""
  And I enter "PH=Enter iOS Minimum Version" as ""
  And I enter "PH=Enter iOS Latest Version" as ""
  And I scroll down the page  
  And I click on "NZIN=primary"[3]
  And I click on "TYI=button" [2]
  And I wait for "2000" milli seconds 
  And I click on "TYI=button" [2]
  And I wait for "1000" milli seconds 
  And I click on "TYI=button" [3]
  And I wait for "1000" milli seconds 
    And I scroll down the page 
  And I click on "TYI=button" [3]
  And I click on "TYI=button" [4]
  And I wait for "2000" milli seconds 
  And I click on "TYI=button" [4]
  And I click on "TYI=button" [5]
  And I wait for "1000" milli seconds 
    And I scroll down the page  
  And I click on "TYI=button" [5]
  And I click on "TYI=button" [6]
  And I wait for "1000" milli seconds 
 
 
@Settings @Miscellaneous

Scenario: Miscellaneous settings
  And I wait for "2000" milli seconds 
  And I click on "VT=Settings"
  And I click on "DI=book"
  And I click on "DII=caret-down"[1]
   And I wait for "2000" milli seconds   
  And I enter "LI=Actual Attribute" as ""     
  And I enter "LI=Actual Value" as ""
  And I enter "LI=Display Value" as ""
  And I click on "DI=down"
  And I wait for "1000" milli seconds 
  And I click on "VT=Workflow"[5]
  And I click on "NZIN=primary"[1]
  And I click on "DII=caret-down"[2]
  And I wait for "2000" milli seconds
  And I click on "TYI=checkbox" [1]
  And I wait for "2000" milli seconds 
  And I click on "TYI=checkbox" [1]
  And I click on "VT=Add new holiday" button
  And I click on "PH=Select date"
  #And I click on "VT=Select date"
  And I scroll down the page 
  And I click on "VT=Today"
  And I wait for "2000" milli seconds 
  #And I click on "title=3/27/2024"
  #And I click on "VT=Save"[2]
  And I click on "NZIN=primary"[2]
  And I wait for "3000" milli seconds 
  Then I see ToolTip as "Configuration Updated successfully"
  And I click on "DII=caret-down"[3]
  And I wait for "2000" milli seconds
  And I click on "CLASS=select-selection__rendered" from "VT=Timezone"
  And I wait for "2000" milli seconds
  And I click on "VT=Indian Standard Time"[2]
  And I click on "NZIN=primary"[1]
  #And I wait for "3000" milli seconds 
  #Then I see ToolTip as "Configuration Updated successfully"
  And I click on "DII=caret-down"[4]
  And I enter "LIE=Pre notifications time" as "t"
  And I click on "TYI=button" [2]
  And I wait for "1000" milli seconds
  #And I click on "TYI=button" [2]
  And I click on "TYI=button" [3] 
  And I wait for "1000" milli seconds 
  #And I click on "TYI=button" [3]
  And I wait for "1000" milli seconds
  And I click on "NZIN=primary"[4]
  And I wait for "3000" milli seconds
  Then I see ToolTip as "Configuration Updated successfully"
  And I wait for "1000" milli seconds
  And I scroll down the page 
  And I click on "DII=caret-down"[5]
   And I wait for "2000" milli seconds
  And I click on "TYI=button" [4]
  And I scroll down the page 
  And I click on "VT=Select workflow type"
  And I wait for "2000" milli seconds
  And I click on "VT=End to End - 1"
  And I wait for "2000" milli seconds 
  And I click on "TYI=button"[4]
  And I wait for "1000" milli seconds 
  #And I click on "VT=Update"[2]  
  And I click on "NZIN=primary"[5]
  And I wait for "3000" milli seconds
  Then I see ToolTip as "Configuration Updated successfully"
  And I scroll down the page 
  And I click on "DII=caret-down"[6]
  And I click on "TYI=button" [5]
  And I wait for "2000" milli seconds 
  And I click on "TYI=button" [5]
  And I click on "NZIN=primary"[6]
  And I wait for "3000" milli seconds
  Then I see ToolTip as "Configuration Updated successfully"
  
  
@Settings @Zwall

Scenario: Z-wall settings
  And I wait for "2000" milli seconds 
  And I click on "VT=Settings"
  And I click on "DI=robot"
  And I click on "TYI=button" [2]
    And I wait for "1000" milli seconds 
    And I click on "TYI=button" [2]
  
  
  
      
        
