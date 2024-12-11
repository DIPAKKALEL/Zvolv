@ZvolvDatabases

   Feature: Database Dropdowns
   Background:
    Given login into the zvolv application with below credentials
    |dragon_1|saikumaroffice786@gmail.com|Saik@123|
    And I click on Avatar
    When Creating public database with below credentials
    |DatabaseType|Description                  |Tag|
    |public      |This is test public database |AutomationDB|
    |private     |This is test private database|AutomationDB|
         
    When User click on searchbox
    And  User enter the created database name
    #Then User should see the database
    When User click on database
    And User wait for 2 Seconds
    And User refresh the page
    #Then User should navigated to database page
    When User click on edit icon
    And User click on edit columns
    Then User should see the datapoints form
    When User click on name textfield
   # Then User should see the configure form
    
    @ImportDataBase1
    Scenario: Validating Import Database Functionality 
    Given User enter Data points with following credentials
    |Field label  |Field label|Field label|
    |Employee Name|Employee ID|Department |
    
     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
    When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    And User click on Cloud Import 
    And User Import the File with Same Data Points
    Then User should see "Data sync request accepted"
    And User should see the Imported File Data Points
    
    #@ImportDataBase2
    #Scenario: Validating Import Database Functionality 
    #Given User enter Data points to import with following credentials
    #|Field label  |Field label|Field label|
    #|Employee Name|Check Box  |Department |
    #
     #And User click on save button
    #Then User should see an Update form popup
    #When User check on retrofit form checkbox
    #And User click on ok button
    #Then User should see Form updated succcessfully tooltip
    #When User again click on databases from side bar
    #Then User should navigated to Databases page
    #And User Enter the database name on searchbox
    #And User click on the displayed database
    #And User click on Cloud Import 
    #And User Import the File with Same Data Points
    #Then User should see "Data sync request accepted"
    #And User should see the Imported File Data Points
    
   @UserSearch
   Scenario: Validating the functionality of User Search 
            
     When User enter the datapoints with the below credentials
     |Field label(1)|DataSource |Max Result|Info Text         |Help Text         |Expression|Errormsg|Default User|
     |Assignee      |Team Leader|100       |This is UserSerach|This is UserSerach|          |Invalid |No          |
     
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
    When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User Enter all the Field Values
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User validate user from database
    
    @UserSearch2
    Scenario: Validating the functionality of User Search 
            
     When User enter the datapoints with the below credentials
     |Field label(1)|DataSource |Max Result|Info Text         |Help Text         |Expression|Errormsg|Default User|
     |Assignee      |All Org User|100       |This is UserSerach|This is UserSerach|          |Invalid |No         |
     
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
    When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User Enter all the Field Values
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User validate user from database
    
    @UserSearch-defaultAdmin
    Scenario: Validating the functionality of User Search 
            
     When User enter the datapoints with the below credentials
     |Field label(1)|DataSource |Max Result|Info Text         |Help Text         |Expression|Errormsg|Default User|
     |Assignee      |All Org User|100       |This is UserSerach|This is UserSerach|          |Invalid |Yes        |
     
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
    When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    #And User Enter all the Field Values
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User validate user from database
       
 
     @FormSearch
     Scenario: Validating the FormSearch Functionality
     When User enter FormSearch Details with following Credentials
     |Field label(2)|Max Result|Field label(3)|Field label(4)|Value|Info Text         |Help Text         |Expression|Errormsg|
     |Employee Name |1         |Employee ID   |Department    |IT   |This is FormSerach|This is FormSerach|          |Invalid |
     
     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
    When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User give the FormSearch Values
    And User click on submit button
    Then User should see Submission created successfully tooltip
    
       
     #@FileUpload(Depricated)
     #Scenario: Validating FileUpload functionality
     #When User enter the datapoint with the following Credentials
     #|Fieldlabel |Max no.of Files|Max File size|File Type|InfoText           |HelpText           |Expression|Errormsg|copy value|ViewSubmission|editSubmission|
     #|File Upload|1              |50000        |image    |This is File Upload|This is File Upload|          |invalid |          |              |              |
#
     #And User click on save button
    #Then User should see an Update form popup
    #When User check on retrofit form checkbox
    #And User click on ok button
    #Then User should see Form updated succcessfully tooltip
     #When User again click on databases from side bar
    #Then User should navigated to Databases page
    #And User Enter the database name on searchbox
    #And User click on the displayed database
    #Then User should see the Updtaed datapoints
    #When User click on add button
    #And User Upload the file
    #And User click on submit button
    #Then User should see Submission created successfully tooltip
    
    @RatingBarDropDown
    Scenario: Validating Ratingbar dropdown functionality
    When User enter the ratingbar deatils with following credentials
     |Fieldlabel |InfoText           |HelpText           |Expression          |Errormsg|
     |Ratingbar  |This is Rating bar |This is Rating bar |                    |Invalid |

     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User give rating as Five star
    And User click on submit button
    Then User should see Submission created successfully tooltip
    
    @ProgressBarDropdown
    Scenario: Validating ProgrssBar Dropdown Functionality
    
    When User enter ProgressBar details with following details
    |Fieldlabel |Value|Min|Max|StepSize|InfoText           |HelpText           |Expression|Errormsg|
    |ProgressBar|30    |1  |100|1       |This is ProgressBar|This is ProgressBar|          |Invalid |
    
     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User give the progressbar value
    And User click on submit button
    Then User should see Submission created successfully tooltip
    
    @StaticTextDropdown
    Scenario: Validating Static Text Dropdown functionality
    
    When User enter StaticText details with following Credentials
    |Fieldlabel         |Infotext           |HelpText           |Expression|Error msg|
    |HELLO WORLD        |This is Static Text|This is Static Text|          |Invalid  |

     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    Then User Should see the Static Text
     And User click on submit button
    Then User should see Submission created successfully tooltip

    @RichTextEditor
    Scenario: Validating RichTextEditor Functionality
    When User enter RichTextEditor Details with following credentials
    |Field label   |hintOrPlaceHolder     |DefaultValue|Infotext              |HelpText              |Expression|Error msg|
    |RichTextEditor|This is RichTextEditor|Rich Text   |This is RichTextEditor|This is RichTextEditor|          |Invalid  |

    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User Enter richtext with using all options
     And User click on submit button
    Then User should see Submission created successfully tooltip
    And User click on Preview 
    Then User should see the given Rich text
    
    @Section
    Scenario: Validating Section feature functionality
    When User enter Section feature details with below Credentials
    |Field Label  |FieldLabel |FieldLabel|FieldLabel|FieldLabel|FieldLabel|Infotext               |HelpText               |Expression|Error msg|
    |Employee Name|Employee Id|Department|Salary    |First     |Second  |This is Section Feature|This is Section Feature|          |Invalid  |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
    When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter the Sections values with below Credentials
    |Value1  |Value2 |Value3    |Value3|
    |Saikumar|DFT0014|Automation|50000|
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User Validate values given in Section1
    And User Validate values given in Section2
    
    @Stepper
    Scenario: Validating Stepper Feature functionality
    When User enter Stepper Feature details with below Crdentials
    |Field Label  |FieldLabel |FieldLabel|FieldLabel|FieldLabel|Steppertitle|StepperTitle|Infotext               |HelpText               |Expression|Error msg|
    |Employee Name|Employee Id|Department|Salary    |Stepper  |Stepper1    |Stepper2    |This is Stepper Feature|This is Stepper Feature|          |Invalid  |
     
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter the Stepper values with below credentials
    |value1  |value2 |value3    |value4|
    |Saikumar|DFT0014|Automation|25000|
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User Validate values given in Stepper1
    And User Validate values given in Stepper2 
    
   @Tab
   Scenario: Validating Tab Functinality
   When User Enter Tab Feature details with below Credentials
    |Field Label  |FieldLabel |FieldLabel|FieldLabel|FieldLabel|Tabtitle|TabTitle|Infotext               |HelpText               |Expression|Error msg|
    |Employee Name|Employee Id|Department|Salary    |Tab1      |Tab1    |Tab2    |This is Stepper Feature|This is Stepper Feature|          |Invalid  |
   
   And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    
    And User enter the Tabs values with below credentials
    |value1  |value2 |value3    |value4|
    |Saikumar|DFT0014|Automation|25000|
    
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User Validate values given in Tab1
    And User Validate values given in Tab2 
   
  @Currency
  Scenario Outline: Validating Currency Functionality
  Given User Currency Feature deatils with below Credentials
  |Field label|Precesion|InfoText        |HelpText        |Expression|Errormsg|
  |Currency   |2        |This is Currency|This is Currency|          |Invalid|

    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button 
    And User enter Currency Value as "<Value>"
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User Validate the Currency Value from table
    
    Examples:
    |Value|Valid Data|dashboard   |Error message|
    |1000 |Yes       |Valid data  |             |
    |0    |Yes       |Valid data  |             |
    |98.45|Yes       |Valid data  |             |
    |-950 |No        |Invalid data|             |
    |Saiku|No        |Invalid data|             |
    |@$!^&|No        |Invalid data|             |
    
   @Percent
   Scenario Outline: Validating Percent Functionality
   Given User Enter the Percent Feature datails with below credentials
   |FieldLabel|Value|Precesion|InfoText       |HelpText     |Expression|Errormsg|
   |Percent   |96   |2      |This is Percent|This is Percent|          |Invalid |
   
     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button 
    And User Enter the Percent valuee as "<Value>"
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User Validate the Percent Value from table
    
    Examples:
    |Value|Valid Data|dashboard   |Error message|
    |98   |Yes       |Valid data  |             |
    |0    |Yes       |Valid data  |             |
    |98.67|Yes       |Valid data  |             |
    |-95  |No        |Invalid data|             |
    |105  |No        |Invalid data|             |
    |Sai  |No        |Invalid data|             |
    |@$!  |No        |Invalid data|             |
    
    @CreatedAt
    Scenario: Validating CreatedAt Functionality
    Given User enter CreatedAt feature deatails with below credentials
    |FieldLabel|InfoText          |HelpText          |Expression|Errormsg|
    |Created On|This is Created at|This is Created at|          |Invalid |
     
     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User Should see the date and time details at Created at column

     @ModifiedAt
     Scenario: Validating Modifiedat Functionality
     Given User enter ModifiedAt Feature details with below Credentials
     |FieldLabel |InfoText           |HelpText           |Expression|Errormsg|
     |Modified On|This is Modified at|This is Modified at|          |Invalid | 
   
     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User Should see the date and time details at Modified at column
   
    @CreatedBy
    Scenario: Validating CretaedBy Functionality
    Given User Enter CreatedBy feature details with below credentials
    
    |FieldLabel  |DefaultValue|InfoText           |HelpText           |Expression|Errormsg|
    |Author      |SK          |This is CreatedBy  |This is CreatedBy  |          |Invalid |

     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User Should see Created By Value
    
    @ModifiedBy
    Scenario: Validating ModifiedBy Functionality
    Given User Enter ModifiedBy feature details with below credentials
    
    |FieldLabel  |DefaultValue|InfoText           |HelpText           |Expression|Errormsg|
    |Author      |SK          |This is Modified By|This is Modified By|          |Invalid |

     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User click on submit button
    Then User should see Submission created successfully tooltip
    And User Should see Modified By Value 
    
    @Comments
    Scenario: Validating Comments Functionality
    Given User enter Comments Feature details with below Functionality
    |FieldLabel|FieldLabel2|MaxRows|InfoText           |HelpText           |Expression|Errormsg|
    |Comments  |Review     |2      |This is Comments   |This is Comments   |          |Invalid |

    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    
    And User enter Comment values with below credentials
   |Comentor |Comment |
   |admin    |Approved|
    
    And User click on submit button
    Then User should see Submission created successfully tooltip
    When User click on View Button
    And User Validate Commentor Name
    And User Validate Commented Date
    And User Validate given Comments 
    
    @Tag
    Scenario: Validating the tag Functinality
    Given User enter Tag feature details with below credentials
    |Fieldlabel|MaxResult|value|InfoText           |HelpText           |Expression|Errormsg|
    |Tag       |1        |blue |This is Tag        |This is Tag        |          |Invalid |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter the Tag Values 
    And User click on submit button
    Then User should see Submission created successfully tooltip
    
    @TagWithFilters
    Scenario: Validating the tag Functinality
    Given User enter Tag feature with filter details with below credentials
    |Fieldlabel|MaxResult|value|InfoText           |HelpText           |Expression|Errormsg|
    |Tag       |1        |blue|This is Tag        |This is Tag        |          |Invalid |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter the Tag with filter Values 
    And User click on submit button
    Then User should see Submission created successfully tooltip
    
    @TagWithDependencies
     Scenario Outline: Validating the tag Functinality
    Given User enter Tag feature with dependencies details with below credentials
    |Field label      |Fieldlabel|MaxResult|value|InfoText           |HelpText           |Expression|Errormsg|
    |Reason for leave|Tag       |1        |blue|This is Tag        |This is Tag        |          |Invalid |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter the tag with dependencies Value as "<value>"
    And User click on Choose Tag
    And User should see Tag of "<Valid data>"
    And User click on submit button
    Then User should see Submission created successfully tooltip
    
    Examples:
    |value          |Valid data|
    |sick leave     |Valid     |
    |official leave |Valid     |
    |Maternity leave|Valid     |
    |Saikumar       |InValid   |
    
    @TagWithDependenciesAndFilters
     Scenario Outline: Validating the tag Functinality
    Given User enter Tag feature with dependencies and filters details with below credentials
    |Field label      |Fieldlabel|MaxResult|value|InfoText           |HelpText           |Expression|Errormsg|
    | Reason for leave|Tag       |1        |green|This is Tag        |This is Tag        |          |Invalid |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter the tag dependencies and filters Value as "<value>"
    And User click on Choose Tag
    And User should see Tag of "<Valid data>"
    And User click on submit button
    Then User should see Submission created successfully tooltip
    
    Examples:
    |value          |Valid data|
    |Maternity leave|Valid     |
    |official leave |Invalid   |
   
    @SearchWithFilters
    Scenario: Validating Search functionality
    Given User enter Search feature details with below credentials
    |Field Label  |FieldLabel |FieldLabel|Fieldlabel|InfoText      |HelpText      |Expression|ErrorMessage|Value|
    |Employee Name|Employee Id|Department|Search    |This is Search|This is Search|          |Invalid     |IT   |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter Search Values
    Then User should see Submission created successfully tooltip

    @SearchWithdependencies
    Scenario Outline: Validating Search with dependencies Functionality
    Given User enter Search feature with dependencies details with below credentials
    |Field Label  |FieldLabel |FieldLabel|Fieldlabel|InfoText      |HelpText      |Expression|ErrorMessage|Value|
    |Employee Name|Employee Id|Department|Search    |This is Search|This is Search|          |Invalid     |IT   |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter first field label as "<name>"
    And User click on Search button
    Then User should see the details of "<valid data>" 
    And User click on submit button
    Then User should see Submission created successfully tooltip
    
    Examples:
    |name    |valid data|
    |Saikumar|Valid     |
    |Vijay    |Valid     |
    |India   |Invalid   |
     
     
   @SearchWithdependenciesAndFilters
    Scenario Outline: Validating Search with dependencies and filters Functionality
    Given User enter Search feature with dependencies and filters details with below credentials
    |Field Label  |FieldLabel |FieldLabel|Fieldlabel|InfoText      |HelpText      |Expression|ErrorMessage|Value|
    |Employee Name|Employee Id|Department|Search    |This is Search|This is Search|          |Invalid     |IT   |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter first field label as "<name>"
    And User click on Search button
    Then User should see the details of "<valid data>"
    And User click on submit button
    Then User should see Submission created successfully tooltip
    
    Examples:
    |name    |valid data|
    |Saikumar|Valid     |
    |Raju    |Invalid   |
     
    
    @AutomationTrigger
    Scenario: Validating Automation Trigger Functionality
    Given User enter Automation Trigger details with below Credentials
    |FieldLable       |SuccessMessage|LoadingMessage|ErrorMessage|InfoText                 |HelpText                 |Expression|Errormsg|
    |AutomationTrigger|Successfull   |Loading       |Error       |This is Automation Triger|This is Automation Triger|          |Invalid |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter automation trigger values
    Then User should see Submission created successfully tooltip

   #@Formula
    #Scenario Outline: Validating Formula Functionality in Databases
    #Given User enter the field label as "<Field label1>"
    #And User click on done button
    #And User click on field button
    #When User enter the field lable as "<Field label2>"
    #And User click on Done2 button
    #When User click on Field button
    #And User enter the Field label as "<Result>"
    #When User click on TextEdit Dropdown
    #And User click on Formula
    #And User enter the Formula as "<Formula>"
    #When User click On Helpers dropdown
    #And User enter the InfoText as "<Info Text>"
    #And User enter the Help Text as "<Help Text>"
    #When User click on Data validation
    #And User click on add button on DataValidation
    #And User enter the expression as "<Expression>"
    #And User enter error message as "<Error Message>"
    #When User click On Advanced
    #And User check On Required
    #And User check On Admin only
    #And User check On Unique
    #And User check on Edit if unique
    #When User click On Done Button
    #
    #And User click on save button
    #Then User should see an Update form popup
    #When User check on retrofit form checkbox
    #And User click on ok button
    #Then User should see Form updated succcessfully tooltip
     #When User again click on databases from side bar
    #Then User should navigated to Databases page
    #And User Enter the database name on searchbox
    #And User click on the displayed database
    #Then User should see the Updtaed datapoints
    #When User click on add button
    #And User enter the Score as "<Score>"
    #And user enter the Total as "<Total>"
    #And User click on Result
    #And User click on submit button
    #And I wait for 1 Seconds
    #And I take Screenshot
    #Then User should see Submission created successfully tooltip
   #
   #Examples:
   #|Field label1|Field label2|Result|Formula              |Info Text      |Help Text      |Expression|Error Message|Score               |Total|
   #|Score       |Total       |Result|TRIM('{Score}')      |This is Formula|This is Formula|          |Invalid Input|     {Saikumar}     | 0   |       
   #|Value       |Value1      |Result|ISEMPTY('{Value}')   |This is Formula|This is Formula|          |Invalid Input|Hello               | 0   |
   #|Value       |Value1      |Result|ISEMPTY('{Value}')   |This is Formula|This is Formula|          |Invalid Input|                    | 0   |
   #|Score       |Total       |Result|ADD({Score},{Total}) |This is Formula|This is Formula|          |Invalid Input|2+3-1*5/1           |30-5/5+6*3  |
   #|Score       |Total       |Result|ADD({Score},{Total}) |This is Formula|This is Formula|          |Invalid Input|           |  |
   #|Score       |Total       |Result|ADD({Score},{Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|[+]Score    |[-]Total    |Result|ADD({[+]Score},{[-]Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score(%)    |(/)Total    |Result|ADD({Score(%)},{(/)Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score+      |-Total      |Result|ADD({Score+},{-Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|(+)Score    |(-)Total    |Result|ADD({(+)Score},{(-)Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score*      |Total       |Result|ADD({Score*},{Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score%      |/Total      |Result|ADD({Score%},{/Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score       |Total       |Result|SUB({Score},{Total}) |This is Formula|This is Formula|          |Invalid Input|-20                 |30   |
   #|Score       |Total       |Result|SUB({Score},{Total}) |This is Formula|This is Formula|          |Invalid Input|2+3-1*5/1           |30-5/5+6*3  |
   #|[+]Score    |[-]Total    |Result|SUB({[+]Score},{[-]Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score(%)    |(/)Total    |Result|SUB({Score(%)},{(/)Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score+      |-Total      |Result|SUB({Score+},{-Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|(+)Score    |(-)Total    |Result|SUB({(+)Score},{(-)Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score*      |Total       |Result|SUB({Score*},{Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score%      |/Total      |Result|SUB({Score%},{/Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score       |Total       |Result|MUL({Score},{Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |-30  |
   #|[+]Score    |[-]Total    |Result|MUL({[+]Score},{[-]Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score(%)    |(/)Total    |Result|MUL({Score(%)},{(/)Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score+      |-Total      |Result|MUL({Score+},{-Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|(+)Score    |(-)Total    |Result|MUL({(+)Score},{(-)Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score*      |Total       |Result|MUL({Score*},{Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score%      |/Total      |Result|MUL({Score%},{/Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score       |Total       |Result|AVG({Score},{Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |  
   #|Score       |Total       |Result|DIVI({Score},{Total})|This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|[+]Score    |[-]Total    |Result|DIVI({[+]Score},{[-]Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score(%)    |(/)Total    |Result|DIVI({Score(%)},{(/)Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score+      |-Total      |Result|DIVI({Score+},{-Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|(+)Score    |(-)Total    |Result|DIVI({(+)Score},{(-)Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score*      |Total       |Result|DIVI({Score*},{Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score%      |/Total      |Result|DIVI({Score%},{/Total}) |This is Formula|This is Formula|          |Invalid Input|20                  |30   |
   #|Score       |Total       |Result|AND({Score},{Total}) |This is Formula|This is Formula|          |Invalid Input|true                |false| 
   #|Score       |Total       |Result|AND({Score},{Total}) |This is Formula|This is Formula|           |Invalid Input|true               |true|
   #|Score       |Total       |Result|AND({Score},{Total}) |This is Formula|This is Formula|           |Invalid Input|false              |false|
   #|Score       |Total       |Result|AND({Score},{Total}) |This is Formula|This is Formula|           |Invalid Input|0                 |0| 
   #|Score       |Total       |Result|AND({Score},{Total}) |This is Formula|This is Formula|           |Invalid Input|98                 |0|
   #|Score       |Total       |Result|AND({Score},{Total}) |This is Formula|This is Formula|           |Invalid Input|98                 |89|
   #|Score       |Total       |Result|OR({Score},{Total})  |This is Formula|This is Formula|           |Invalid Input|true               |true|
   #|Score       |Total       |Result|OR({Score},{Total})  |This is Formula|This is Formula|           |Invalid Input|true               |false| 
   #|Score       |Total       |Result|OR({Score},{Total})  |This is Formula|This is Formula|           |Invalid Input|false              |false|
   #|Score       |Total       |Result|OR({Score},{Total})  |This is Formula|This is Formula|           |Invalid Input|98                  |998|
   #|Score       |Total       |Result|OR({Score},{Total})  |This is Formula|This is Formula|           |Invalid Input|98                 |0| 
   #|Score       |Total       |Result|OR({Score},{Total}) |This is Formula|This is Formula|            |Invalid Input|0                  |0|
   #|Score       |Total       |Result|NOT({Score})         |This is Formula|This is Formula|           |Invalid Input|true               |0|
   #|Score       |Total       |Result|NOT({Score})         |This is Formula|This is Formula|           |Invalid Input|0                  |0| 
   #|Score       |Total       |Result|NOT({Score})         |This is Formula|This is Formula|           |Invalid Input|98                 |0|
   #|Score       |Total       |Result|POWER({Score},{Total})|This is Formula|This is Formula|          |Invalid Input|2                  |3   |
   #|Score       |Total       |Result|POWER({Score},{Total})|This is Formula|This is Formula|          |Invalid Input|-2                 |3   |
   #|Score       |Total       |Result|POWER({Score},{Total})|This is Formula|This is Formula|          |Invalid Input|-2                 |-3   |
   #|Score       |Total       |Result|POWER({Score},{Total})|This is Formula|This is Formula|          |Invalid Input|2.9                |3.5  |
   #|Score       |Total       |Result|POWER({Score},{Total})|This is Formula|This is Formula|          |Invalid Input|-2.9               |-3.9   |
   #|Score       |Total       |Result|ROUND({Score},{Total})|This is Formula|This is Formula|          |Invalid Input|20.76894            |2|
   #|Score       |Total       |Result|ROUND({Score},{Total})|This is Formula|This is Formula|          |Invalid Input|-20.56894           |2|
   #|Score       |Total       |Result|ROUND({Score},{Total})|This is Formula|This is Formula|          |Invalid Input|20.54894           |-2|
   #|Score       |Total       |Result|FLOOR({Score})       |This is Formula|This is Formula|           |Invalid Input|20.7680              |0   |
   #|Score       |Total       |Result|FLOOR({Score})       |This is Formula|This is Formula|           |Invalid Input|-208.87680              |0   |
   #|Score       |Total       |Result|CEIL({Score})       |This is Formula|This is Formula|           |Invalid Input|20.7680              |0   |
   #|Score       |Total       |Result|CEIL({Score})       |This is Formula|This is Formula|           |Invalid Input|-208.87680              |0   |
   #|Score       |Total       |Result|LOG({Score},{Total}) |This is Formula|This is Formula|          |Invalid Input|10                  |10   |
   #|Score       |Total       |Result|SQRT({Score})        |This is Formula|This is Formula|          |Invalid Input|25                  |0   |  
   #|Score       |Total      |Result|SQRT({Score})        |This is Formula|This is Formula|          |Invalid Input|-25                  |0   |
   #|Score       |Total       |Result|SQRT({Score})        |This is Formula|This is Formula|          |Invalid Input|25.625                  |0   | 
   #|Score       |Total       |Result|LN({Score})          |This is Formula|This is Formula|          |Invalid Input|2                   |0   |
   #|Score       |Total       |Result|ABS({Score})         |This is Formula|This is Formula|          |Invalid Input|-123                |0|  
   #|Score       |Total       |Result|DATE()               |This is Formula|This is Formula|          |Invalid Input|0                   |0|
   #|Regex       |Value       |Result|REGEX('[A-Z]{5}[0-9]{4}[A-Z]{1}','{Value}')|This is Formula|This is Formula|          |Invalid Input|0|KENHY6576R|
   #
   #
   #@Formula1
    #Scenario Outline: Validating Formula Functionality in Databases
    #Given User enter the field label as "<Field label1>"
    #And User click on done button
    #And User click on field button
    #When User enter the field lable as "<Field label2>"
    #And User click on Done2 button
    #When User click on Field button
    #And User enter the field lable as "<Field label3>"
    #And User click on done button
    #When User click on Field button
    #And User enter the field lable as "<Field label4>"
    #And User click on done button
    #When User click on Field button
    #And User enter the Field label as "<Result>"
    #When User click on TextEdit Dropdown
    #And User click on Formula
    #And User enter the Formula as "<Formula>"
    #When User click On Helpers dropdown
    #And User enter the InfoText as "<Info Text>"
    #And User enter the Help Text as "<Help Text>"
    #When User click on Data validation
    #And User click on add button on DataValidation
    #And User enter the expression as "<Expression>"
    #And User enter error message as "<Error Message>"
    #When User click On Advanced
    #And User check On Required
    #And User check On Admin only
    #And User check On Unique
    #And User check on Edit if unique
    #When User click On Done Button
    #
    #And User click on save button
    #Then User should see an Update form popup
    #When User check on retrofit form checkbox
    #And User click on ok button
    #Then User should see Form updated succcessfully tooltip
     #When User again click on databases from side bar
    #Then User should navigated to Databases page
    #And User Enter the database name on searchbox
    #And User click on the displayed database
    #Then User should see the Updtaed datapoints
    #When User click on add button
    #And User enter the Val1 as "<val1>"
    #And User enter the Val2 as "<val2>"
    #And User enter the Val3 as "<val3>"
    #And User enter the Val4 as "<val4>"
    #And User click on Result
    #And User click on submit button
    #And I wait for 1 Seconds
    #And I take Screenshot
    #Then User should see Submission created successfully tooltip
   #
    #Examples:
   #|Field label1|Field label2|Field label3|Field label4|Result|Formula                         |Info Text      |Help Text           |Expression|Error Message|val1|val2|val3|val4|
   #|val1        |val2        |val3        |val4        |Result|IF({val1}>{val2}, {val3},{val4})|This is Formula|This is Formula     |          |             |12  |10  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF({val1}>{val2}, {val3},{val4})|This is Formula|This is Formula     |          |             |10  |12  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF({val1}<{val2}, {val3},{val4})|This is Formula|This is Formula     |          |             |12  |10  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF({val1}<{val2}, {val3},{val4})|This is Formula|This is Formula     |          |             |10  |12  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF('{val1}'=='{val2}', {val3},{val4})|This is Formula|This is Formula|          |             |Hi  |Hi  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF('{val1}'=='{val2}', {val3},{val4})|This is Formula|This is Formula|          |             |Hi  |HI  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF('{val1}'=='{val2}', {val3},{val4})|This is Formula|This is Formula|          |             |@HI@  |@HI@  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF('{val1}'=='{val2}', {val3},{val4})|This is Formula|This is Formula|          |             |@HI@  |@HI! |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF('{val1}'!='{val2}', {val3},{val4})|This is Formula|This is Formula|          |             |Hi  |Hi  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF('{val1}'!='{val2}', {val3},{val4})|This is Formula|This is Formula|          |             |HI  |Hi  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF('{val1}'!='{val2}', {val3},{val4})|This is Formula|This is Formula|          |             |$Hi*  |$Hi*  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF('{val1}'!='{val2}', {val3},{val4})|This is Formula|This is Formula|          |             |[(HI])  |[(HI)]  |1   |0   |
   #|val1        |val2        |val3        |val4        |Result|ADD({val1}, MUL(DIVI({val2},100),MUL({val3},{val4})))|This is Formula|This is Formula|        |            |20 |18  |2   |5   |
   #|val1(-)     |(+)val2     |val3(/)     |val4(*)     |Result|ADD({val1(-)}, MUL(DIVI({(+)val2},100),MUL({val3(/)},{val4(*)})))|This is Formula|This is Formula|    |    |20 |18  |2   |5   |
   #|val1($)     |(&)val2     |val3(%)     |val4(*)     |Result|ADD({val1($)}, MUL(DIVI({(&)val2},100),MUL({val3(%)},{val4(*)})))|This is Formula|This is Formula|    |    |20 |18  |2   |5   |
   #|val1        |val2        |val3        |val4        |Result|IF('{val1}'=='{val2}',IF('{val2}'=='{val3}', {val3}, {val4}),{val2})|This is Formula|This is Formula|        |            |20 |20  |2   |5   |
   #|val1(+)     |val2(-)     |val3(*)     |(/)val4     |Result|IF('{val1(+)}'=='{val2(-)}',IF('{val2(-)}'=='{val3(*)}', {val3(*)}, {(/)val4}),{val2(-)})|This is Formula|This is Formula|        |            |20 |20  |2   |5   |
   #|111         |222         |333         |444         |Result|IF('{111}'=='{222}',IF('{222}'=='{333}', {333}, {444}),{222})|This is Formula|This is Formula|        |            |20 |20  |2   |5   |
   #|val1        |val2        |val3        |val4        |Result|IF(ISEMPTY('{val1}'),{val2},{val3})|This is Formula|This is Formula|        |            |Hello |20  |2   |0   | 
   #|val1        |val2        |val3        |val4        |Result|IF(ISEMPTY('{val1}'),{val2},{val3})|This is Formula|This is Formula|        |            ||20  |2   |0   |
   #|val1        |val2        |val3        |val4        |Result|IF(ISEMPTY('{val1}'),10,ADD({val3},{val4}))|This is Formula|This is Formula|        |            |10|20  |3  |6   |
   #|A1          |A2          |A3          |A4          |Result|IF(NOT(ISEMPTY('{A1}')),ADD({A2},{A3}),{A4})|This is Formula|This is Formula|        |            |10|20  |3  |6   |
   #|A1          |A2          |A3          |A4          |Result|IF(NOT(ISEMPTY('{A1}')),ADD({A2},{A3}),{A4})|This is Formula|This is Formula|        |            ||20  |3  |6   |
   #|A1          |A2          |A3          |A4          |Result|IF(ISEMPTY('{A1}'),ADD({A2},{A3}),ADD({A4},10))|This is Formula|This is Formula|        |            |10|20  |3  |6   |
   #|A1          |A2          |A3          |A4          |Result|IF(ISEMPTY('{A1}'),ADD({A2},{A3}),ADD({A4},10))|This is Formula|This is Formula|        |            ||20  |3  |6   |
   #|A1          |A2          |A3          |A4          |Result|IF(ISEMPTY('{A1}'),ADD({A2},5),ADD({A1},10))|This is Formula|This is Formula|        |            |10|20  |3  |6   |
   #|A1          |A2          |A3          |A4          |Result|IF(ISEMPTY('{A1}'),ADD({A2},5),ADD({A1},10))|This is Formula|This is Formula|        |            ||20  |3  |6   |
   #|A1          |A2          |A3          |A4          |Result|IF(ISEMPTY('{A1}'),ADD({A1},5),ADD({A1},10))|This is Formula|This is Formula|        |            |10|20  |3  |6   |
   #|val1        |val2        |val3        |val4        |Result|CONCAT('{val1}','{val2}')|This is Formula|This is Formula|        |            |Z|volv  |3  |6   |
   #|val1        |val2        |val3        |val4        |Result|IF(ISEMPTY('{val1}'),CONCAT('{val3}','{val4}'),CONCAT('{val1}','{val2}'))|This is Formula|This is Formula|        |            |Z|volv  |sai  |kumar  |
   #|val1        |val2        |val3        |val4        |Result|IF(REGEX('^\d{4}\s\d{4}\s\d{4}$','9663 6144 7601'),CONCAT('{val1}','{val2}'),CONCAT('{val3}','{val4}'))|This is Formula|This is Formula|        |            |Z|volv  |sai  |kumar   |
   #|val1        |val2        |val3        |val4        |Result|CONCAT('{val1}','{val2}')|This is Formula|This is Formula|        |            ||volv  |3  |6   |
   #|val1        |val2        |val3        |val4        |Result|CONCAT('{val1}','{val2}')|This is Formula|This is Formula|        |            |Z||3  |6   |
   #|val1        |val2        |val3        |val4        |Result|CONCAT('{val1}','{val2}')|This is Formula|This is Formula|        |            |||3  |6   |
   #|val1        |val2        |val3        |val4        |Result|ADD({val1},{val2},{val3},{val4},{val1},{val1},{val2})|This is Formula|This is Formula| | |12|3|10|12|
   #|val1        |val2        |val3        |val4        |Result|ADD({val1},{val2},{val3},{val4},{val1},{val1},{val2})|This is Formula|This is Formula| | |-12|3*2|10-4|12/6|
   #|val1        |val2        |val3        |val4        |Result|ADD({val1},{val2},{val3},{val4},{val1},{val1},{val2})|This is Formula|This is Formula| | |12|0|10|10|
   #|val1        |val2        |val3        |val4        |Result|MUL({val1},{val2},{val3},{val4},{val1},{val1},{val2})|This is Formula|This is Formula| | |12|3|10|12|
   #|val1        |val2        |val3        |val4        |Result|MUL({val1},{val2},{val3},{val4},{val1},{val1},{val2})|This is Formula|This is Formula| | |-12|3*2|10-4|12/6|
   #|val1        |val2        |val3        |val4        |Result|MUL({val1},{val2},{val3},{val4},{val1},{val1},{val2})|This is Formula|This is Formula| | |12|-8|10|10|
   #|val1        |val2        |val3        |val4        |Result|IF(REGEX('^\d{4}\s\d{4}\s\d{4}$','9663 6144 7601'),ADD({val1},{val2},{val3}),ADD({val3},{val4},{val1}))|This is Formula|This is Formula| | |12|8|10|10| 
   #|val1        |val2        |val3        |val4        |Result|IF(REGEX('^\d{4}\s\d{4}\s\d{4}$','9663 614 7601'),ADD({val1},{val2},{val3}),ADD({val3},{val4},{val1}))|This is Formula|This is Formula| | |12|8|10|10|
   #|val1        |val2        |val3        |val4        |Result|IF(ISEMPTY('{val1}'),10,ADD({val2},{val3},{val4}))|This is Formula|This is Formula|        |            |10|20  |3  |6   |
   #|val1        |val2        |val3        |val4        |Result|IF(ISEMPTY('{val1}'),10,ADD({val2},{val3},{val4}))|This is Formula|This is Formula|        |            ||20  |3  |6   |
   #|val1        |val2        |val3        |val4        |Result|IF(ISEMPTY('{val1}'),10,MUL({val2},{val3},{val4}))|This is Formula|This is Formula|        |            |10|20  |3  |6   |
   #|val1        |val2        |val3        |val4        |Result|IF(ISEMPTY('{val1}'),10,MUL({val2},{val3},{val4}))|This is Formula|This is Formula|        |            ||20  |3  |6   |
   #
   
    @AutomationTriggerDepricated
    Scenario: Validating AutomationTrigger(Depricated) Functionality
    Given User enter Automation Trigger Depricated details with below credentials
   |Field Label|Fieldlabel|InfoText                             |HelpText                             |Expression|ErrorMsg|
   |Submission ID|Trigger   |This is AutomationTrigger(depricated)|This is AutomationTrigger(depricated)|          |Invalid |
    
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User Click On Trigger
    And User enter the form Values with below Credentials
    |Employee Name|Employee ID|Department|
    |Akhil        |DFT0013    |Develpoer    |
    And User click On Submit buttton on Trigger
    Then User should see Submission created successfully tooltip
    When User click on submit button
    Then User should see submission created successfully2 tooltip
    
    When User click on edit icon
    And User click on edit columns
    And User click on Trigger Button from data points form
    And User click on the first dropdown to select Form Submission
    And User select Form Submission
    And User click on second dropdown to select form field
    And User select SubmissionID Field
    And User click on done button
     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    Then User should see the Updtaed datapoints
    When User click on add button
    And User enter Submission ID as "65e890639aaafced97a6507d"
    And User Click On Trigger
    Then User Should see the Submission Details
    And I wait for 1 Seconds
    When User edit the Submissions as below Credentials
    |Employee Name|Employee ID|Department|
    |Siri         |DFT0004    |IT        |
    And User click On Submit buttton on Trigger
    Then User should see submission updated successfully tooltip
    When User click on submit button
    Then User should see submission created successfully2 tooltip
    
     @SheetWidget
     Scenario: Validating Table Functionality 
     Given User enter "Field Label"[1] as "Table"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Name"
     And User click on "Done"[2] button 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "ID"
     And User click on "Done"[2] button 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Department"
     And User click on "Done"[2] button
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     #And User click on "Hide Delete button"
     
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
     
     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    When User click on add button
    And User enter "Name"[1] textarea as "Saikumar"
    And User enter "ID"[2] textarea as "DFT001"
    And User enter "Department"[1] textarea as "IT"
    And User click on "ADD" button
    And User wait for 2 Seconds
    And User enter "Name"[2] textarea as "Raju"
    And User enter "ID"[2] textarea as "DFT002"
    And User enter "Department"[2] textarea as "Tester"
    And User click on "Add"[2] Button
    And User click on "delete"[1] data icon
    And User click on "Expand"[1] Button
    And User wait for 2 Seconds
    And User click on "Collapse"[1] Button
    And User click on "Submit"[1] Button
    #And User click on edit button
    #And User click on "Download"
    #And User click on "Upload"
    #And User click on "Submit"[1] Button
    And User wait for 5 Seconds
    
    @SheetWidget1
     Scenario: Validating Table Functionality 
     Given User enter "Field Label"[1] as "Table"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Name"
     And User click on "Done"[2] button 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "ID"
     And User click on "Done"[2] button 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Department"
     And User click on "Done"[2] button
     And User click on "Add Static Row"
     And User click on "Hide Add button"
     And User click on "Hide Delete button"
     And User click on "Add default row"
     And User click on "Hide upload/download buttons"
     And User click on "Hide Expand Button"
     And User click on "Enabling Reordering on Rows"
     And User click on "Done"[1] button
     
     And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    When User click on add button
    #And User enter "Name"[1] textarea as "Saikumar"
    #And User enter "ID"[2] textarea as "DFT001"
    #And User enter "Department"[3] textarea as "IT"
    #And User click on "Submit"[1] Button
    
    And User wait for 5 Seconds
    
    
     @SheetWidget2
    Scenario: Validating Table Functionality 
     Given User enter "Field Label"[1] as "Table"
     And User click on Dropdown
     And User click on "Table" 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee Name"
     And User click on "Done"[2] button 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Employee ID"
     And User click on "Done"[2] button 
     And User click on "Add Column"
     And User enter "Field Label"[2] as "Department"
     And User click on "Done"[2] button
     And User click on "Add Static Row"
     And User click on "Show table row as grid"
     And User click on "Add or Edit Submission via popup"
     #And User click on "Hide Delete button"
     
     And User click on "Download Button Label"
     And User enter "Download Button Label"[1] as "Download"
     And User click on "Upload Button Label"
     And User enter "Upload Button Label"[1] as "Upload"
     And User click on "Expand Button Label" 
     And User enter "Expand Button Label"[1] as "Expand"
     And User click on "Done"[1] button
     
    And User click on save button
    Then User should see an Update form popup
    When User check on retrofit form checkbox
    And User click on ok button
    Then User should see Form updated succcessfully tooltip
     When User again click on databases from side bar
    Then User should navigated to Databases page
    And User Enter the database name on searchbox
    And User click on the displayed database
    When User click on add button
    And User enter " Employee Name"[1] textarea as "Saikumar"
    And User enter "Employee ID"[1] textarea as "DFT001"
    And User enter "Department"[1] textarea as "IT"
    #And User click on "ADD" button
    And User wait for 2 Seconds
    #And User enter "Employee Name"[2] textarea as "Raju"
    #And User enter "Employee ID"[2] textarea as "DFT002"
    #And User enter "Department"[2] textarea as "Tester"
    And User click on "Download" button
    And I click on "VT=Continue" button
    #And I click on "VT=Upload" Button
    And User Import the File with Same Data Points
    And User click on "Submit"[1] Button
    And User wait for 2 Seconds
    #And I click on "VT=View" 
    #And I take Screenshot
    #And User wait for 1 Seconds
    
    
    
    
    
    
    
