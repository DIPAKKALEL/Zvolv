@ZvolvDashboards 
Feature: Dashboard Access Permission
Dashboard Access View Edit Permission Testing Using Four Different Users
  Background: 
Given I navigate to web application
Then I should see page title as "Zvolv"
And I see "VT=Login" web element
When login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|
Given I click on "VT=Create zapp" button
And I click on "VT=Create new"
And I enter "PH=Enter zapp name" as "DashboardAccess-" zapp name
And I enter "LABEL2=Description" as "This is Test Zapp for Dashboard Access Permission of Users"
And I click on "VT=Next" button
And I click on "VT=Next" button
And I click on "VT=Public"
And I take Screenshot
And I click on "VT=Next" button
And I click on "VT=Review Zapp" button
And I click on "VT=Launch Zapp" button
#Then I see ToolTip as "Workflow Type created"
And I refresh the page
And I wait for 1 Seconds
And I click on new created Zapp
And I wait for 1 Seconds

@DEdit-AdminView-ALL
Scenario: Dashboard Edit Permission Admin only and View End User, then admin View and Edit, End user only view the dashboard Permission
Given I click on "DI=plus"
And I click on "PH=Title"
And I enter "PH=Title" as "edit Admin and View All"
And I click on "NZPH=Select roles" of "VT=View Permissions"
And I enter "NZPH=Select roles"[1] as "All Org Users"
And I wait for 1 Seconds
And I click on "VT=All Org Users"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "NZPH=Select roles" of "VT=Edit Permissions"
And I enter "NZPH=Select roles"[2] as "System Admin"
And I wait for 1 Seconds
And I click on "VT=System Admin"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I wait for 1 Seconds
And I take Screenshot
And I click on "VT=Save" button
And I refresh the page
And I wait for 1 Seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "DI=setting" Button
And I click on "VT=Save" button
And I take Screenshot
#Then I see ToolTip as "Report edited successfully"
And I click on "VT=Done" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
Then User scrolls to bottom of page
And I wait for 2 Seconds
And I click on new created Zapp
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
Then I see "VT=edit Admin and View All" web element
Then Webelement "VTEQ=Edit" is Not Visible
And I take Screenshot
And I refresh the page
And I wait for 1 Seconds
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|laxminarayan@zvolv.com|Laksh@123|
Then User scrolls to bottom of page
And I wait for 2 Seconds
And I click on new created Zapp
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
Then I see "VT=edit Admin and View All" web element
Then Webelement "VTEQ=Edit" is Not Visible
And I take Screenshot


@DEditView-EndUser
Scenario: Dashboard Edit Permission End User only and View End User, then admin and End User View and Edit, End user2 cannot see the zapp
Given I click on "DI=plus"
And I click on "PH=Title"
And I enter "PH=Title" as "edit End User and View End User"
And I click on "NZPH=Select roles" of "VT=View Permissions"
And I enter "NZPH=Select roles"[1] as "dipak kalel"
And I click on "VT=dipak.kalel@dragonflytest.com"
Then User clicks on "ESCAPE" button on Keyboard
And I click on "NZPH=Select roles" of "VT=Edit Permissions"
And I enter "NZPH=Select roles"[2] as "dipak kalel"
And I click on "VT=dipak.kalel@dragonflytest.com"
Then User clicks on "ESCAPE" button on Keyboard
And I wait for 1 Seconds
And I take Screenshot
And I click on "VT=Save" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
Then Webelement "VTEQ=Edit" is Not Visible
And I wait for 1 Seconds
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
And I click on new created Zapp
And I wait for 2 Seconds
And I refresh the page
And I wait for 1 Seconds
Then I see "VT=edit End User and View End User" web element
And I see "VT=Edit" web element
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "DI=setting" Button
And I click on "VT=Save" button
And I take Screenshot
And I click on "VT=Done" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|laxminarayan@zvolv.com|Laksh@123|
And I click on new created Zapp
And I wait for 2 Seconds
And I refresh the page
And I wait for 1 Seconds
Then Webelement "VTEQ=edit End User and View End User" is Not Visible
Then Webelement "VTEQ=Edit" is Not Visible
And I take Screenshot


@DEditView-AllUser
Scenario: Dashboard Edit and View Permission for All Users, then All org users can view and Edit the dashboard
Given I click on "DI=plus"
And I click on "PH=Title"
And I enter "PH=Title" as "edit view All User"
And I click on "NZPH=Select roles" of "VT=View Permissions"
And I enter "NZPH=Select roles"[1] as "All Org Users"
And I wait for 1 Seconds
And I click on "VT=All Org Users"
And I wait for 1 Seconds
Then User clicks on "ESCAPE" button on Keyboard
And I click on "NZPH=Select roles" of "VT=Edit Permissions"
And I enter "NZPH=Select roles"[2] as "All Org Users"
And I click on "VT=All Org Users"[2]
Then User clicks on "ESCAPE" button on Keyboard
And I wait for 1 Seconds
And I take Screenshot
And I click on "VT=Save" button
And I wait for 1 Seconds
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "DI=setting" Button
And I click on "VT=Save" button
And I take Screenshot
#Then I see ToolTip as "Report edited successfully"
And I click on "VT=Done" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|dipak.kalel@dragonflytest.com|PAssion@1235|
And I click on new created Zapp
And I wait for 2 Seconds
And I refresh the page
And I wait for 1 Seconds
Then I see "VT=edit view All User" web element
And I see "VT=Edit" web element
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "DI=setting" Button
And I take Screenshot
And I click on "VT=Save" button
#Then I see ToolTip as "Report edited successfully"
And I wait for 1 Seconds
And I click on "VT=Done" button
And I wait for 1 Seconds
And I refresh the page
And I wait for 1 Seconds
And I click on "VT=User" button
And I click on "VT=Logout"
And I wait for 1 Seconds
And I login with Users credentials
|laxminarayan@zvolv.com|Laksh@123|
And I click on new created Zapp
And I wait for 2 Seconds
And I refresh the page
And I wait for 1 Seconds
Then I see "VT=edit view All User" web element
And I take Screenshot
And I see "VT=Edit" web element
And I click on "VT=Edit" button
And I wait for 1 Seconds
And I click on "DI=setting" Button
And I click on "VT=Save" button
And I wait for 1 Seconds
And I take Screenshot
And I click on "VT=Done" button
#Then I see ToolTip as "Report edited successfully"








#Then Webelement "VTEQ=Edit Admin and View All" is Not Visible




