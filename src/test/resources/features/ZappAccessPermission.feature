@ZvolvDashboards 
Feature: Zapp Access Permission
Zapp View Edit Permission Testing for Four different Users
  Background: 
Given I navigate to web application
Then I should see page title as "Zvolv"
And I see "VT=Login" web element
When login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|

@ZEdit-AdminOnly
Scenario: Zapp Edit permission for admin, admin only view and Edit the zapp Permission
Given I click on "VT=Create zapp" button
And I click on "VT=Create new"
And I enter "PH=Enter zapp name" as "Access-" zapp name
And I enter "LABEL2=Description" as "This is Test Zapp for Access Permission of Users"
And I click on "VT=Next" button
And I click on "VT=Next" button
And I click on "VT=Private"
And I click on "LABEL=Edit" of Zapp Permission
And I enter "LABEL=Edit" as "System Admin" of zapp permission
And I wait for 1 Seconds
And I click on "VT=System Admin"
And I wait for 2 Seconds
And I take Screenshot
And I click on "VT=Next" button
And I click on "VT=Review Zapp" button
And I take Screenshot
And I click on "VT=Launch Zapp" button
And I wait for 1 Seconds
#And I enter "LI=Edit" as "System Admin"
#Then I see ToolTip as "Workflow Type created"
And I refresh the page
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
Then User scrolls to bottom of page
And I wait for 1 Seconds
And I click on "VT=Expand" of created Zapp
And I take Screenshot
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And User scrolls to bottom of page
Then Created Zapp "Access-" not visible for user in zapp list
#Then I see ToolTip as "You're not allowed to change the Access Control for this resource"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|laxminarayan@zvolv.com|Laksh@123|
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And User scrolls to bottom of page
Then Created Zapp "Access-" not visible for user in zapp list
#Then I see ToolTip as "You're not allowed to change the Access Control for this resource"
And I take Screenshot
And I click on "VT=Dashboard" button

@ZEdit-EndUser
Scenario: Zapp Edit permission for End User, admin and End User only can view and Edit the zapp Permission
Given I click on "VT=Create zapp" button
And I click on "VT=Create new"
And I enter "PH=Enter zapp name" as "Access-" zapp name
And I enter "LABEL2=Description" as "This is Test Zapp for Access Permission of Users"
And I click on "VT=Next" button
And I click on "VT=Next" button
And I click on "VT=Private"
And I click on "LABEL=Edit" of Zapp Permission
And I wait for 1 Seconds
And I enter "LABEL=Edit" as "dipak kalel" of zapp permission
And I wait for 1 Seconds
And I click on "VT=dipak.kalel@dragonflytest.com"
And I wait for 1 Seconds
And I take Screenshot
And I click on "VT=Next" button
And I click on "VT=Review Zapp" button
And I click on "VT=Launch Zapp" button
#Then I see ToolTip as "Workflow Type created"
And I refresh the page
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "LABEL=View" of Zapp Permission
And I enter "LABEL=View" as "sai" of zapp permission
And I click on "VT=Manager@zvolv.com"
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|Manager@zvolv.com|Saik@123|
Then Created Zapp "Access-" visible for user in zapp list
And I click on new created Zapp
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "You're not allowed to change the Access Control for this resource"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|saikumaroffice786@gmail.com|Saik@123|
Then Created Zapp "Access-" visible for user in zapp list
And I click on new created Zapp
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I login with Users credentials
|laxminarayan@zvolv.com|Laksh@123|
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "PH=Select workflow"
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And User scrolls to bottom of page
Then Created Zapp "Access-" not visible for user in zapp list

@ZEdit-AllOrgUsers
Scenario: Zapp Edit permission for All Org Users, admin, End User and End User2, All org Users can view and Edit Zapp
Given I click on "VT=Create zapp" button
And I click on "VT=Create new"
And I enter "PH=Enter zapp name" as "Access-" zapp name
And I enter "LABEL2=Description" as "This is Test Zapp for Access Permission of Users"
And I click on "VT=Next" button
And I click on "VT=Next" button
And I click on "VT=Private"
And I click on "LABEL=Edit" of Zapp Permission
And I enter "LABEL=Edit" as "All Org Users" of zapp permission
And I wait for 1 Seconds
And I click on "VT=All Org Users"
And I wait for 1 Seconds
And I take Screenshot
And I click on "VT=Next" button
And I click on "VT=Review Zapp" button
And I click on "VT=Launch Zapp" button
#Then I see ToolTip as "Workflow Type created"
And I take Screenshot
And I refresh the page
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|laxminarayan@zvolv.com|Laksh@123|
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page


@ZEdit-AdminView-EndUser
Scenario: Zapp Edit permission for Admin and View Permission for End User,End User only view the zapp cannot edit zapp, End User2 cannot view the zapp
Given I click on "VT=Create zapp" button
And I click on "VT=Create new"
And I enter "PH=Enter zapp name" as "Access-" zapp name
And I enter "LABEL2=Description" as "This is Test Zapp for Access Permission of Users"
And I click on "VT=Next" button
And I click on "VT=Next" button
And I click on "VT=Private"
And I click on "LABEL=Edit" of Zapp Permission
And I enter "LABEL=Edit" as "System Admin" of zapp permission
And I wait for 1 Seconds
And I click on "VT=System Admin"
And I wait for 1 Seconds
And I enter "LABEL=View" as "dipak kalel" of zapp permission
And I wait for 1 Seconds
And I click on "VT=dipak.kalel@dragonflytest.com"
And I wait for 1 Seconds
And I take Screenshot
And I click on "VT=Next" button
And I click on "VT=Review Zapp" button
And I click on "VT=Launch Zapp" button
#Then I see ToolTip as "Workflow Type created"
And I take Screenshot
And I refresh the page
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "You're not allowed to change the Access Control for this resource"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|laxminarayan@zvolv.com|Laksh@123|
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
Then Created Zapp "Access-" not visible for user in zapp list



@ZEdit-AllOrgUserView-AllOrgUser
Scenario: Zapp Edit permission for All Org Users and View Permission for All Org Users, then Admin, End User, End User2 All Org User Can view and Edit the Zapp
Given I click on "VT=Create zapp" button
And I click on "VT=Create new"
And I enter "PH=Enter zapp name" as "Access-" zapp name
And I enter "LABEL2=Description" as "This is Test Zapp for Access Permission of Users"
And I click on "VT=Next" button
And I click on "VT=Next" button
And I click on "VT=Private"
And I click on "LABEL=Edit" of Zapp Permission
And I enter "LABEL=Edit" as "All Org User" of zapp permission
And I click on "VT=All Org Users"
And I enter "LABEL=View" as "All Org Users" of zapp permission
And I click on "VT=All Org Users"[2]
And I take Screenshot
And I click on "VT=Next" button
And I click on "VT=Review Zapp" button
And I click on "VT=Launch Zapp" button
#Then I see ToolTip as "Workflow Type created"
And I take Screenshot
And I refresh the page
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|laxminarayan@zvolv.com|Laksh@123|
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
And I take Screenshot
#Then I see ToolTip as "Permissions updated successfully"
And I click on "VT=Dashboard" button
And I refresh the page

@ZEdit-EndUserView-Admin
Scenario: Zapp Edit permission for End User and View Permission for Admin, Admin and End User only view and edit zapp,Zapp not visible to End User2 
Given I click on "VT=Create zapp" button
And I click on "VT=Create new"
And I enter "PH=Enter zapp name" as "Access-" zapp name
And I enter "LABEL2=Description" as "This is Test Zapp for Access Permission of Users"
And I click on "VT=Next" button
And I click on "VT=Next" button
And I click on "VT=Private"
And I click on "LABEL=Edit" of Zapp Permission
And I enter "LABEL=Edit" as "dipak kalel" of zapp permission
And I click on "VT=dipak.kalel@dragonflytest.com"
And I enter "LABEL=View" as "System Admin" of zapp permission
And I click on "VT=System Admin"
And I take Screenshot
And I click on "VT=Next" button
And I click on "VT=Review Zapp" button
And I click on "VT=Launch Zapp" button
#Then I see ToolTip as "Workflow Type created"
And I take Screenshot
And I refresh the page
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
Then Created Zapp "Access-" visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
And I click on "VT=Expand" of created Zapp
And I click on "VT=Save"
#Then I see ToolTip as "Permissions updated successfully"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|laxminarayan@zvolv.com|Laksh@123|
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "VT=End to End"
And I wait for 2 Seconds
And I refresh the page
And I wait for 2 Seconds
And I click on "PH=Select workflow"
Then Created Zapp "Access-" not visible for user in zapp list
And I click on "PH=Select workflow"
And I move to "VT=Administration" Button
And I click on "VT=Administration"
And I click on "VT=Permissions" button
And I click on "VT=Workflows" button
Then Created Zapp "Access-" not visible for user in zapp list
#Then I see ToolTip as "You're not allowed to change the Access Control for this resource"
And I take Screenshot
And I click on "VT=Dashboard" button
And I refresh the page




