@jfl
Feature: jfl-uat on-board 
    @jfl-uat
    Scenario Outline: validating jfl-uat on-boarding functionality
    Given I navigate to "jfl-uat" web application
    Then I should see page title as "Zvolv"
    And I see "VT=Login" web element
    When I enter "PH=Enter email / phone" as "<email>"
    And I enter "PH=Enter password" as "<password>"
    And I click on "VT=Login"
    And I click on Onboard Candidate button
    And I wait for 1 Seconds
    And I click on "VT=Candidate Details" from "VT=NEW"
    And I wait for 1 Seconds
    And I enter "LABEL2=Name of the Candidate" as "<name>"
    #And I wait for 1 Seconds
    And I click on "LABEL1=Gender"
    And I click on "<Gender>" from dropdown
    And I click on "LABEL1=DOB"
    And I click on "title=Choose a year"
    And I click on "title=Last decade"
    And I click on "title=Last decade"
    And I click on "VT=2003"
    #And I click on "title=Choose a month"
    #And I click on "VT=May"
    And I click on "<Date>"   
    And I enter "LABEL2=Father" as "<father name>"
    And I click on "LABEL1=Education background"
    And I click on "<education>" from dropdown
    And I click on "LABEL1=Category"
    And I click on "<category>" from dropdown
    And I enter "LABEL2=Mobile Number" as "<mbl>"
    And I enter "LABEL2=House No" as "<H.NO>"
    And I enter "LABEL2=Street Name" as "<street>"
    And I enter "LABEL2=City" as "<city>" 
    And I enter "LABEL2=State" as "<state>"
    And I enter "LABEL2=Pin Code" as "<pin code>" 
    And I click on "VT=Same as Correspondence Address"
    And I enter "LABEL2=Enter Aadhaar Number" as "<aadhar>" 
    And I upload "VT=Upload Aadhaar Card (Front)" as "<aadhar front>"
    And I upload "VT=Upload Aadhaar Card (Back)" as "<aadhar back>"
    And I click on "LABEL1=Are you currently Working?"
    And I click on "VT=No" from dropdown
    And I click on "LABEL1=Specially abled"
    And I wait for 1 Seconds
    And I click on "VT=No" from dropdown 
    And I upload "VT=Upload Matriculation certificate" as "<matriculation>"
    And I click on "VT=Generate Candidate ID" button
    And I click on "LABEL2=CandidateID" 
    And I click on "VT=Submit Candidate Details" button 
    And I wait for 1 Seconds 
    Then I see ToolTip as "Submission created successfully"
    And I wait for 1 Seconds
    And I refresh the page
    And I click on avatar
    And I click on "VT=Logout" button
    
    
    Examples:
    |email       |password|name    |Gender   |Date           |father name|education          |category  |mbl       |H.NO   |street       |city   |state     |pin code|aadhar      |aadhar front                     |aadhar back                     |matriculation                |
    |gt@gmail.com|test    |Saikumar|VT=Male  |title=1/28/2003|Ilaiah     |VT=Secondary       |VT=General|8688787432|1-73/13|Balewadi     |Baner  |Maharastra|411045  |988765564343|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Anil    |VT=Male  |title=1/28/2003 |Raghu      |VT=Primary         |VT=OBC    |7676554345|1-11/09|manpa        |Baner  |Maharastra|505153  |987656764345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Raju    |VT=Male  |title=2/4/2003 |Sravan     |VT=Graduate        |VT=SC     |9705582223|5-12/14|karimnagar   |Baner  |Maharastra|505122  |675643423456|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|        
    |gt@gmail.com|test    |Vishnu  |VT=Male  |title=2/6/2003 |Sampath    |VT=Secondary       |VT=ST     |9704324518|3-14/15|peddapalli   |Baner  |Maharastra|411067  |345654546786|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akshay  |VT=Male  |title=2/5/2003 |Prashanth  |VT=Higher Secondary|VT=General|9848362698|2-15/16|kammam       |Baner  |Maharastra|411054  |132243445657|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Keren   |VT=Female|title=2/9/2003 |Vamshi     |VT=Secondary       |VT=ST     |9989762391|4-16/17|khopoli      |Baner  |Maharastra|411087  |897866768799|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Kotesh  |VT=Male  |title=2/8/2003 |Rajesh     |VT=Primary         |VT=SC     |8798765689|1-17/18|hyd          |Baner  |Maharastra|411056  |897877675644|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Ganesh  |VT=Male  |title=2/7/2003 |Omkar      |VT=Graduate        |VT=General|7786875543|3-18/19|huzurabad    |Baner  |Maharastra|411043  |986643423454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Dipak   |VT=Male  |title=2/12/2003|Yogansh    |VT=Higher Secondary|VT=OBC    |6787987656|9-19/20|jammikunta   |Baner  |Maharastra|411042  |871234567877|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Vijay   |VT=Male  |title=2/13/2003|Avinash    |VT=Graduate        |VT=OBC    |9878345654|6-20/21|srirampoor   |Baner  |Maharastra|411044  |878987665454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sachin  |VT=Male  |title=2/14/2003|Arjun      |VT=Higher Secondary|VT=General|9809889098|2-21/22|manikonda    |Baner  |Maharastra|411078  |346253452455|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Siri    |VT=Female|title=2/15/2003|Hari       |VT=Primary         |VT=SC     |7688875432|1-22/23|kondapur     |Baner  |Maharastra|411099  |867767776755|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sweety  |VT=Female|title=2/16/2003|Sunny      |VT=Secondary       |VT=ST     |8799876565|4-23/24|high street  |Baner  |Maharastra|411024  |234354657676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akhila  |VT=Female|title=2/17/2003|Ravi       |VT=Primary         |VT=OBC    |7665677890|6-24/25|film city    |Baner  |Maharastra|411043  |565576878676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Harisha |VT=Female|title=2/18/2003|Mahesh     |VT=Secondary       |VT=General|9876543210|9-25/13|jubliee hills|Baner  |Maharastra|411059  |655345665787|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Mounika |VT=Female|title=2/19/2003|Suresh     |VT=Graduate        |VT=ST     |8767656456|7-26/27|dilsukhnagar |Baner  |Maharastra|411015  |446654332312|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Manisha |VT=Female|title=2/20/2003|Mahesh     |VT=Higher Secondary|VT=SC     |8789675646|6-18/25|adilabad     |Baner  |Maharastra|411028  |983421342265|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Shirisha|VT=Female|title=2/21/2003|Shiva      |VT=Graduate        |VT=OBC    |7668954432|5-07/23|nalgonda     |Baner  |Maharastra|411031  |007856451234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Meghana |VT=Female|title=2/22/2003|Aditya     |VT=Primary         |VT=General|9154162521|4-73/13|bejawada     |Baner  |Maharastra|411078  |335645443234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Soujanya|VT=Female|title=2/23/2003|Venky      |VT=Higher Secondary|VT=General|6554732218|3-73/13|hanamkonda   |Baner  |Maharastra|411065  |089876543211|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sukanya |VT=Female|title=2/24/2003|Ramesh     |VT=Primary         |VT=OBC    |9908892265|2-73/13|warangal     |Baner  |Maharastra|411063  |878654564345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Saikumar|VT=Male  |title=1/28/2003|Ilaiah     |VT=Secondary       |VT=General|8688787432|1-73/13|Balewadi     |Baner  |Maharastra|411045  |988765564343|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Anil    |VT=Male  |title=1/28/2003 |Raghu      |VT=Primary         |VT=OBC    |7676554345|1-11/09|manpa        |Baner  |Maharastra|505153  |987656764345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Raju    |VT=Male  |title=2/4/2003 |Sravan     |VT=Graduate        |VT=SC     |9705582223|5-12/14|karimnagar   |Baner  |Maharastra|505122  |675643423456|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|        
    |gt@gmail.com|test    |Vishnu  |VT=Male  |title=2/6/2003 |Sampath    |VT=Secondary       |VT=ST     |9704324518|3-14/15|peddapalli   |Baner  |Maharastra|411067  |345654546786|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akshay  |VT=Male  |title=2/5/2003 |Prashanth  |VT=Higher Secondary|VT=General|9848362698|2-15/16|kammam       |Baner  |Maharastra|411054  |132243445657|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Keren   |VT=Female|title=2/9/2003 |Vamshi     |VT=Secondary       |VT=ST     |9989762391|4-16/17|khopoli      |Baner  |Maharastra|411087  |897866768799|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Kotesh  |VT=Male  |title=2/8/2003 |Rajesh     |VT=Primary         |VT=SC     |8798765689|1-17/18|hyd          |Baner  |Maharastra|411056  |897877675644|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Ganesh  |VT=Male  |title=2/7/2003 |Omkar      |VT=Graduate        |VT=General|7786875543|3-18/19|huzurabad    |Baner  |Maharastra|411043  |986643423454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Dipak   |VT=Male  |title=2/12/2003|Yogansh    |VT=Higher Secondary|VT=OBC    |6787987656|9-19/20|jammikunta   |Baner  |Maharastra|411042  |871234567877|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Vijay   |VT=Male  |title=2/13/2003|Avinash    |VT=Graduate        |VT=OBC    |9878345654|6-20/21|srirampoor   |Baner  |Maharastra|411044  |878987665454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sachin  |VT=Male  |title=2/14/2003|Arjun      |VT=Higher Secondary|VT=General|9809889098|2-21/22|manikonda    |Baner  |Maharastra|411078  |346253452455|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Siri    |VT=Female|title=2/15/2003|Hari       |VT=Primary         |VT=SC     |7688875432|1-22/23|kondapur     |Baner  |Maharastra|411099  |867767776755|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sweety  |VT=Female|title=2/16/2003|Sunny      |VT=Secondary       |VT=ST     |8799876565|4-23/24|high street  |Baner  |Maharastra|411024  |234354657676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akhila  |VT=Female|title=2/17/2003|Ravi       |VT=Primary         |VT=OBC    |7665677890|6-24/25|film city    |Baner  |Maharastra|411043  |565576878676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Harisha |VT=Female|title=2/18/2003|Mahesh     |VT=Secondary       |VT=General|9876543210|9-25/13|jubliee hills|Baner  |Maharastra|411059  |655345665787|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Mounika |VT=Female|title=2/19/2003|Suresh     |VT=Graduate        |VT=ST     |8767656456|7-26/27|dilsukhnagar |Baner  |Maharastra|411015  |446654332312|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Manisha |VT=Female|title=2/20/2003|Mahesh     |VT=Higher Secondary|VT=SC     |8789675646|6-18/25|adilabad     |Baner  |Maharastra|411028  |983421342265|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Shirisha|VT=Female|title=2/21/2003|Shiva      |VT=Graduate        |VT=OBC    |7668954432|5-07/23|nalgonda     |Baner  |Maharastra|411031  |007856451234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Meghana |VT=Female|title=2/22/2003|Aditya     |VT=Primary         |VT=General|9154162521|4-73/13|bejawada     |Baner  |Maharastra|411078  |335645443234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Soujanya|VT=Female|title=2/23/2003|Venky      |VT=Higher Secondary|VT=General|6554732218|3-73/13|hanamkonda   |Baner  |Maharastra|411065  |089876543211|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sukanya |VT=Female|title=2/24/2003|Ramesh     |VT=Primary         |VT=OBC    |9908892265|2-73/13|warangal     |Baner  |Maharastra|411063  |878654564345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Saikumar|VT=Male  |title=1/28/2003|Ilaiah     |VT=Secondary       |VT=General|8688787432|1-73/13|Balewadi     |Baner  |Maharastra|411045  |988765564343|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Anil    |VT=Male  |title=1/28/2003 |Raghu      |VT=Primary         |VT=OBC    |7676554345|1-11/09|manpa        |Baner  |Maharastra|505153  |987656764345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Raju    |VT=Male  |title=2/4/2003 |Sravan     |VT=Graduate        |VT=SC     |9705582223|5-12/14|karimnagar   |Baner  |Maharastra|505122  |675643423456|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|        
    |gt@gmail.com|test    |Vishnu  |VT=Male  |title=2/6/2003 |Sampath    |VT=Secondary       |VT=ST     |9704324518|3-14/15|peddapalli   |Baner  |Maharastra|411067  |345654546786|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akshay  |VT=Male  |title=2/5/2003 |Prashanth  |VT=Higher Secondary|VT=General|9848362698|2-15/16|kammam       |Baner  |Maharastra|411054  |132243445657|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Keren   |VT=Female|title=2/9/2003 |Vamshi     |VT=Secondary       |VT=ST     |9989762391|4-16/17|khopoli      |Baner  |Maharastra|411087  |897866768799|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Kotesh  |VT=Male  |title=2/8/2003 |Rajesh     |VT=Primary         |VT=SC     |8798765689|1-17/18|hyd          |Baner  |Maharastra|411056  |897877675644|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Ganesh  |VT=Male  |title=2/7/2003 |Omkar      |VT=Graduate        |VT=General|7786875543|3-18/19|huzurabad    |Baner  |Maharastra|411043  |986643423454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Dipak   |VT=Male  |title=2/12/2003|Yogansh    |VT=Higher Secondary|VT=OBC    |6787987656|9-19/20|jammikunta   |Baner  |Maharastra|411042  |871234567877|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Vijay   |VT=Male  |title=2/13/2003|Avinash    |VT=Graduate        |VT=OBC    |9878345654|6-20/21|srirampoor   |Baner  |Maharastra|411044  |878987665454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sachin  |VT=Male  |title=2/14/2003|Arjun      |VT=Higher Secondary|VT=General|9809889098|2-21/22|manikonda    |Baner  |Maharastra|411078  |346253452455|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Siri    |VT=Female|title=2/15/2003|Hari       |VT=Primary         |VT=SC     |7688875432|1-22/23|kondapur     |Baner  |Maharastra|411099  |867767776755|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sweety  |VT=Female|title=2/16/2003|Sunny      |VT=Secondary       |VT=ST     |8799876565|4-23/24|high street  |Baner  |Maharastra|411024  |234354657676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akhila  |VT=Female|title=2/17/2003|Ravi       |VT=Primary         |VT=OBC    |7665677890|6-24/25|film city    |Baner  |Maharastra|411043  |565576878676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Harisha |VT=Female|title=2/18/2003|Mahesh     |VT=Secondary       |VT=General|9876543210|9-25/13|jubliee hills|Baner  |Maharastra|411059  |655345665787|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Mounika |VT=Female|title=2/19/2003|Suresh     |VT=Graduate        |VT=ST     |8767656456|7-26/27|dilsukhnagar |Baner  |Maharastra|411015  |446654332312|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Manisha |VT=Female|title=2/20/2003|Mahesh     |VT=Higher Secondary|VT=SC     |8789675646|6-18/25|adilabad     |Baner  |Maharastra|411028  |983421342265|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Shirisha|VT=Female|title=2/21/2003|Shiva      |VT=Graduate        |VT=OBC    |7668954432|5-07/23|nalgonda     |Baner  |Maharastra|411031  |007856451234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Meghana |VT=Female|title=2/22/2003|Aditya     |VT=Primary         |VT=General|9154162521|4-73/13|bejawada     |Baner  |Maharastra|411078  |335645443234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Soujanya|VT=Female|title=2/23/2003|Venky      |VT=Higher Secondary|VT=General|6554732218|3-73/13|hanamkonda   |Baner  |Maharastra|411065  |089876543211|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sukanya |VT=Female|title=2/24/2003|Ramesh     |VT=Primary         |VT=OBC    |9908892265|2-73/13|warangal     |Baner  |Maharastra|411063  |878654564345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Saikumar|VT=Male  |title=1/28/2003|Ilaiah     |VT=Secondary       |VT=General|8688787432|1-73/13|Balewadi     |Baner  |Maharastra|411045  |988765564343|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Anil    |VT=Male  |title=1/28/2003 |Raghu      |VT=Primary         |VT=OBC    |7676554345|1-11/09|manpa        |Baner  |Maharastra|505153  |987656764345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Raju    |VT=Male  |title=2/4/2003 |Sravan     |VT=Graduate        |VT=SC     |9705582223|5-12/14|karimnagar   |Baner  |Maharastra|505122  |675643423456|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|        
    |gt@gmail.com|test    |Vishnu  |VT=Male  |title=2/6/2003 |Sampath    |VT=Secondary       |VT=ST     |9704324518|3-14/15|peddapalli   |Baner  |Maharastra|411067  |345654546786|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akshay  |VT=Male  |title=2/5/2003 |Prashanth  |VT=Higher Secondary|VT=General|9848362698|2-15/16|kammam       |Baner  |Maharastra|411054  |132243445657|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Keren   |VT=Female|title=2/9/2003 |Vamshi     |VT=Secondary       |VT=ST     |9989762391|4-16/17|khopoli      |Baner  |Maharastra|411087  |897866768799|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Kotesh  |VT=Male  |title=2/8/2003 |Rajesh     |VT=Primary         |VT=SC     |8798765689|1-17/18|hyd          |Baner  |Maharastra|411056  |897877675644|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Ganesh  |VT=Male  |title=2/7/2003 |Omkar      |VT=Graduate        |VT=General|7786875543|3-18/19|huzurabad    |Baner  |Maharastra|411043  |986643423454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Dipak   |VT=Male  |title=2/12/2003|Yogansh    |VT=Higher Secondary|VT=OBC    |6787987656|9-19/20|jammikunta   |Baner  |Maharastra|411042  |871234567877|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Vijay   |VT=Male  |title=2/13/2003|Avinash    |VT=Graduate        |VT=OBC    |9878345654|6-20/21|srirampoor   |Baner  |Maharastra|411044  |878987665454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sachin  |VT=Male  |title=2/14/2003|Arjun      |VT=Higher Secondary|VT=General|9809889098|2-21/22|manikonda    |Baner  |Maharastra|411078  |346253452455|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Siri    |VT=Female|title=2/15/2003|Hari       |VT=Primary         |VT=SC     |7688875432|1-22/23|kondapur     |Baner  |Maharastra|411099  |867767776755|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sweety  |VT=Female|title=2/16/2003|Sunny      |VT=Secondary       |VT=ST     |8799876565|4-23/24|high street  |Baner  |Maharastra|411024  |234354657676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akhila  |VT=Female|title=2/17/2003|Ravi       |VT=Primary         |VT=OBC    |7665677890|6-24/25|film city    |Baner  |Maharastra|411043  |565576878676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Harisha |VT=Female|title=2/18/2003|Mahesh     |VT=Secondary       |VT=General|9876543210|9-25/13|jubliee hills|Baner  |Maharastra|411059  |655345665787|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Mounika |VT=Female|title=2/19/2003|Suresh     |VT=Graduate        |VT=ST     |8767656456|7-26/27|dilsukhnagar |Baner  |Maharastra|411015  |446654332312|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Manisha |VT=Female|title=2/20/2003|Mahesh     |VT=Higher Secondary|VT=SC     |8789675646|6-18/25|adilabad     |Baner  |Maharastra|411028  |983421342265|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Shirisha|VT=Female|title=2/21/2003|Shiva      |VT=Graduate        |VT=OBC    |7668954432|5-07/23|nalgonda     |Baner  |Maharastra|411031  |007856451234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Meghana |VT=Female|title=2/22/2003|Aditya     |VT=Primary         |VT=General|9154162521|4-73/13|bejawada     |Baner  |Maharastra|411078  |335645443234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Soujanya|VT=Female|title=2/23/2003|Venky      |VT=Higher Secondary|VT=General|6554732218|3-73/13|hanamkonda   |Baner  |Maharastra|411065  |089876543211|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sukanya |VT=Female|title=2/24/2003|Ramesh     |VT=Primary         |VT=OBC    |9908892265|2-73/13|warangal     |Baner  |Maharastra|411063  |878654564345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Saikumar|VT=Male  |title=1/28/2003|Ilaiah     |VT=Secondary       |VT=General|8688787432|1-73/13|Balewadi     |Baner  |Maharastra|411045  |988765564343|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Anil    |VT=Male  |title=1/28/2003 |Raghu      |VT=Primary         |VT=OBC    |7676554345|1-11/09|manpa        |Baner  |Maharastra|505153  |987656764345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Raju    |VT=Male  |title=2/4/2003 |Sravan     |VT=Graduate        |VT=SC     |9705582223|5-12/14|karimnagar   |Baner  |Maharastra|505122  |675643423456|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|        
    |gt@gmail.com|test    |Vishnu  |VT=Male  |title=2/6/2003 |Sampath    |VT=Secondary       |VT=ST     |9704324518|3-14/15|peddapalli   |Baner  |Maharastra|411067  |345654546786|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akshay  |VT=Male  |title=2/5/2003 |Prashanth  |VT=Higher Secondary|VT=General|9848362698|2-15/16|kammam       |Baner  |Maharastra|411054  |132243445657|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Keren   |VT=Female|title=2/9/2003 |Vamshi     |VT=Secondary       |VT=ST     |9989762391|4-16/17|khopoli      |Baner  |Maharastra|411087  |897866768799|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Kotesh  |VT=Male  |title=2/8/2003 |Rajesh     |VT=Primary         |VT=SC     |8798765689|1-17/18|hyd          |Baner  |Maharastra|411056  |897877675644|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Ganesh  |VT=Male  |title=2/7/2003 |Omkar      |VT=Graduate        |VT=General|7786875543|3-18/19|huzurabad    |Baner  |Maharastra|411043  |986643423454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Dipak   |VT=Male  |title=2/12/2003|Yogansh    |VT=Higher Secondary|VT=OBC    |6787987656|9-19/20|jammikunta   |Baner  |Maharastra|411042  |871234567877|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Vijay   |VT=Male  |title=2/13/2003|Avinash    |VT=Graduate        |VT=OBC    |9878345654|6-20/21|srirampoor   |Baner  |Maharastra|411044  |878987665454|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sachin  |VT=Male  |title=2/14/2003|Arjun      |VT=Higher Secondary|VT=General|9809889098|2-21/22|manikonda    |Baner  |Maharastra|411078  |346253452455|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Siri    |VT=Female|title=2/15/2003|Hari       |VT=Primary         |VT=SC     |7688875432|1-22/23|kondapur     |Baner  |Maharastra|411099  |867767776755|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sweety  |VT=Female|title=2/16/2003|Sunny      |VT=Secondary       |VT=ST     |8799876565|4-23/24|high street  |Baner  |Maharastra|411024  |234354657676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Akhila  |VT=Female|title=2/17/2003|Ravi       |VT=Primary         |VT=OBC    |7665677890|6-24/25|film city    |Baner  |Maharastra|411043  |565576878676|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Harisha |VT=Female|title=2/18/2003|Mahesh     |VT=Secondary       |VT=General|9876543210|9-25/13|jubliee hills|Baner  |Maharastra|411059  |655345665787|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Mounika |VT=Female|title=2/19/2003|Suresh     |VT=Graduate        |VT=ST     |8767656456|7-26/27|dilsukhnagar |Baner  |Maharastra|411015  |446654332312|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Manisha |VT=Female|title=2/20/2003|Mahesh     |VT=Higher Secondary|VT=SC     |8789675646|6-18/25|adilabad     |Baner  |Maharastra|411028  |983421342265|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Shirisha|VT=Female|title=2/21/2003|Shiva      |VT=Graduate        |VT=OBC    |7668954432|5-07/23|nalgonda     |Baner  |Maharastra|411031  |007856451234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Meghana |VT=Female|title=2/22/2003|Aditya     |VT=Primary         |VT=General|9154162521|4-73/13|bejawada     |Baner  |Maharastra|411078  |335645443234|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Soujanya|VT=Female|title=2/23/2003|Venky      |VT=Higher Secondary|VT=General|6554732218|3-73/13|hanamkonda   |Baner  |Maharastra|411065  |089876543211|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
    |gt@gmail.com|test    |Sukanya |VT=Female|title=2/24/2003|Ramesh     |VT=Primary         |VT=OBC    |9908892265|2-73/13|warangal     |Baner  |Maharastra|411063  |878654564345|/Samples/Sample_Aadhar_Card_front|/Samples/Sample_Aadhar_Card_back|/Samples/Sample_Matriculation|
            
    @jfl-uat-Validation
    Scenario: 
    Given I navigate to "jfl_uat_database" web application
    And I see "VT=Login" web element
    And I wait for 2 Seconds
    When I enter "PH=Enter email / phone" as "csradmin@zvolv.com"
    And I enter "PH=Enter password" as "csr@321"
    And I click on "VT=Login"
    And I wait for 5 Seconds
    And I click on "DI=eye-invisible"
    And I click on "VT=Name" "checkbox"
    And I click on "DI=eye-invisible"
    And I click on "VT=History" "checkbox"
    And I wait for 1 Seconds
    And I Validate jfl-uat entries on Database
    