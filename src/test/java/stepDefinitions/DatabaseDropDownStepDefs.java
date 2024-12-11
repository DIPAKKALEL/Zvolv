package stepDefinitions;

import java.awt.AWTException;
import java.util.List;
import java.util.Map;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.CreateDatabasePageObjects;
import pageObjects.EnterDataPointsofDatabasesPageObjects;
import testbase.TestBase;

public class DatabaseDropDownStepDefs extends TestBase {

	EnterDataPointsofDatabasesPageObjects enterdatapoints = new EnterDataPointsofDatabasesPageObjects(driver);
	CreateDatabasePageObjects createdatabase = new CreateDatabasePageObjects(driver);

	@When("User enter the datapoints with the below credentials")
	public void user_enter_the_datapoints_with_the_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {

		List<List<String>> DP = dataTable.asLists();
		// ------First field label Details------//

		enterdatapoints.enterFieldLabel(DP.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnUserSearch();
		enterdatapoints.enterDataSouce(DP.get(1).get(1));
		enterdatapoints.clickOnDataSource();
		enterdatapoints.giveMaxResult(DP.get(1).get(2));
		if (DP.get(1).get(7).equals("Yes")) {
			enterdatapoints.clickOnSetLoogedinUserasDefaultCheckBox();
		}
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(DP.get(1).get(3));
		enterdatapoints.enterHelpText(DP.get(1).get(4));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(PB.get(1).get(5));
		// enterdatapoints.enterErrormsg(DP.get(1).get(6));
		enterdatapoints.clickOnAdvanced();
		enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@Then("User validate user from database")
	public void user_validate_user_from_database() {
		enterdatapoints.getUser();
	}

	// ********************************FormSearch***********************************//
	@When("User enter FormSearch Details with following Credentials")
	public void user_enter_form_search_details_with_following_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> FS = dataTable.asLists();

		enterdatapoints.enterFieldLabel(FS.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.ClickOnFormSearch();
		enterdatapoints.giveMaxResult(FS.get(1).get(1));
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.clickOnEmployeeMaster();
		enterdatapoints.clickOnSearchField();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnSelectField();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnDisplayField();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnFilters();
		enterdatapoints.clickOnPlusIconOnFilters();
		enterdatapoints.clickOnFieldOnFilters();
		enterdatapoints.clickOnDepartment();
		enterdatapoints.enterValueOnFilters(FS.get(1).get(4));
		enterdatapoints.clickOnBody2();
		enterdatapoints.clickOnFilters();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(FS.get(1).get(5));
		enterdatapoints.enterHelpText(FS.get(1).get(6));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnAddButtonOnFormSearch();
		// enterdatapoints.enterExpression(PB.get(1).get(7));
		// enterdatapoints.enterErrormsg(FS.get(1).get(8));
		enterdatapoints.clickOnAdvanced();
		enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(FS.get(1).get(2));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.ClickOnFormSearch();
		enterdatapoints.giveMaxResult(FS.get(1).get(1));
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.clickOnEmployeeMaster();
		enterdatapoints.clickOnSearchField();
		enterdatapoints.clickOnEmployeeID();
		enterdatapoints.clickOnSelectField();
		enterdatapoints.clickOnEmployeeID();
		enterdatapoints.clickOnDisplayField();
		enterdatapoints.clickOnEmployeeID();
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnaddButtonOnDependencies();
		enterdatapoints.clickOnMasterFormField();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnFormField();
		enterdatapoints.clickOnEmployeeName1();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(FS.get(1).get(5));
		enterdatapoints.enterHelpText(FS.get(1).get(6));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnAddButtonOnFormSearch();
		// enterdatapoints.enterExpression(PB.get(1).get(7));
		// enterdatapoints.enterErrormsg(FS.get(1).get(8));
		enterdatapoints.clickOnAdvanced();
		enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(FS.get(1).get(3));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.ClickOnFormSearch();
		enterdatapoints.giveMaxResult(FS.get(1).get(1));
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.clickOnEmployeeMaster();
		enterdatapoints.clickOnSearchField();
		enterdatapoints.clickOnDepartment();
		enterdatapoints.clickOnSelectField();
		enterdatapoints.clickOnDepartment();
		enterdatapoints.clickOnDisplayField();
		enterdatapoints.clickOnDepartment();
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnaddButtonOnDependencies();
		enterdatapoints.clickOnMasterFormField();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnFormField();
		enterdatapoints.clickOnEmployeeName1();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(FS.get(1).get(5));
		enterdatapoints.enterHelpText(FS.get(1).get(6));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnAddButtonOnFormSearch();
		// enterdatapoints.enterExpression(PB.get(1).get(7));
		// enterdatapoints.enterErrormsg(FS.get(1).get(8));
		enterdatapoints.clickOnAdvanced();
		enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

	}

	@When("User give the FormSearch Values")
	public void user_give_the_form_search_values() throws Exception {
		enterdatapoints.clickOnemployeenameValue();
		enterdatapoints.giveEmployeeValue();
	}

	@When("User Enter all the Field Values")
	public void user_enter_all_the_field_values() {
		enterdatapoints.clickOnAssignee();
		enterdatapoints.giveAssigneeValue();

	}

	@When("I click on Add button on dependencies")
	public void i_click_on_add_button_on_dependencies() {
		enterdatapoints.clickOnaddButtonOnDependencies();
	}

	@When("I click on Master Form Field")
	public void i_click_on_master_form_field() {
		enterdatapoints.clickOnMasterFormField2();
	}

	@When("I click on Form Field")
	public void i_click_on_form_field() {
		enterdatapoints.clickOnFormField2();
	}

	// *****************************Import Database*******************************//
	@Given("User enter Data points with following credentials")
	public void user_enter_data_points_with_following_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> IMP = dataTable.asLists();

		enterdatapoints.enterFieldLabel(IMP.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(IMP.get(1).get(1));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(IMP.get(1).get(2));
		enterdatapoints.clickOnDoneButton();
	}

	@Given("User enter Data points to import with following credentials")
	public void user_enter_data_points_to_import_with_following_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> IMP = dataTable.asLists();

		enterdatapoints.enterFieldLabel(IMP.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(IMP.get(1).get(1));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnCheckbox();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(IMP.get(1).get(2));
		enterdatapoints.clickOnDoneButton();
	}

	@Then("User click on Cloud Import")
	public void user_click_on_cloud_import() {
		enterdatapoints.clickOnImport();
	}

	@Then("User Import the File with Same Data Points")
	public void user_import_the_file_with_same_data_points() {
		enterdatapoints.ImportFile();
	}

	@Then("I Import the File {string} with same data points")
	public void i_import_the_file_with_same_data_points(String string) {
		enterdatapoints.ImportFILE(string);
	}
	
	@Then("I Import the old form File {string} with same data points")
	public void i_import_the_old_form_file_with_same_data_points(String string) {
		enterdatapoints.ImportFILEoldForm(string);
	}

	@Then("User should see {string}")
	public void user_should_see(String string) {
		enterdatapoints.getDataSyncMsg();
	}

	@Then("User should see the Imported File Data Points")
	public void user_should_see_the_imported_file_data_points() {

	}

	// *********************************Download
	// Database*********************************//
	@Given("User click On Zapp")
	public void user_click_on_zapp() throws Exception {
		createdatabase.clickOnZapp();
	}

	@Given("User click on Databases")
	public void user_click_on_databases() throws Exception {
		createdatabase.clickOnDataBases();
	}

	@Given("User reload the databases")
	public void user_reload_the_databases() throws Exception {
		enterdatapoints.clickOnReloadProjects();
	}

	@Then("I click on Avatar")
	public void i_click_on_avatar() {
		enterdatapoints.clickOnAvatar();
		enterdatapoints.getLoggedInUser();
	}

	@Given("User click on searchbar")
	public void user_click_on_searchbar() {
		enterdatapoints.ClickOnSearchbar();
	}

	@Given("User Serach the Database name as {string}")
	public void user_serach_the_database_name_as(String string) throws Exception {
		enterdatapoints.enterDatabaseName2(string);
	}

	@Given("User click on Registration Form Database")
	public void user_click_on_registration_form_database() throws Exception {
		enterdatapoints.goToDatabase();
	}

	@Then("User should see the database details")
	public void user_should_see_the_database_details() {

	}

	@When("User click on Download Icon")
	public void user_click_on_download_icon() {
		enterdatapoints.clickOnDownload();
	}

	@Then("User should see the Downloading file")
	public void user_should_see_the_downloading_file() {
		TestBase.writeResponse("Database Downloaded Successfully");
	}

	// **************************************Table**********************************//

	@Given("User click on Dropdown")
	public void user_click_on_dropdown() throws InterruptedException {
		enterdatapoints.clickOnTexteditDropdown();
	}

	@Given("User click on {string}[{int}] button")
	public void user_click_on_button(String string, Integer int1) {
		enterdatapoints.clickOnButtonUsingIndex(string, int1);
	}

	@Given("User enter {string}[{int}] as {string}")
	public void user_enter_as(String string, Integer int1, String string2) {
		enterdatapoints.enterTextUsingPlaceHolder(string, string2, int1);
	}

	@When("User enter {string}[{int}] textarea as {string}")
	public void user_enter_textarea_as(String string, Integer int1, String string2) {
		enterdatapoints.enterTextUsingLabel(string, int1, string2);
	}

	@When("User click on {string}[{int}] Button")
	public void user_click_on_Button(String string, Integer int1) {
		enterdatapoints.clickOnButtonUsingIndex2(string, int1);
	}

	@When("User click on {string}[{int}] data icon")
	public void user_click_on_data_icon(String string, Integer int1) {
		enterdatapoints.clickOnDataIconUsingIndex(string, int1);
	}

	@When("User click on edit button")
	public void user_click_on_edit_button() {
		enterdatapoints.clickOnEditButton();
	}

	@Given("User enter Table field values with below Credentials")
	public void user_enter_table_field_values_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> TABLE = dataTable.asLists();

		enterdatapoints.enterFieldLabel(TABLE.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnTable();
		enterdatapoints.addColumnOnComments();

		enterdatapoints.enterFieldLabel(TABLE.get(1).get(1));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.addColumnOnComments();

		enterdatapoints.enterFieldLabel(TABLE.get(1).get(2));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.addColumnOnComments();

		enterdatapoints.enterFieldLabel(TABLE.get(1).get(3));
		enterdatapoints.clickOnDoneButton();
	}

	// **********File Upload***********//
	@When("User enter the datapoint with the following Credentials")
	public void user_enter_the_datapoint_with_the_following_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> FUP = dataTable.asLists();

		enterdatapoints.enterFieldLabel(FUP.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnFileUpload();
		enterdatapoints.clickOnAllowedFileTypes();
		// if(FUP.get(1).get(3)=="Text") {
		//
		// enterdatapoints.clickOnText();
		// }
		// else if(FUP.get(1).get(3)=="Document") {
		// enterdatapoints.clickOnDocument();
		// }

		// enterdatapoints.clickOnimage();
		// enterdatapoints.clickOnAudio();
		// enterdatapoints.clickOnVideo();
		enterdatapoints.clickOnAny();
		enterdatapoints.enterMaxNumOfFiles(FUP.get(1).get(1));
		enterdatapoints.enterMaxFileSize(FUP.get(1).get(2));
		enterdatapoints.clickOnShowAsProfileImagePicker();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(FUP.get(1).get(4));
		enterdatapoints.enterHelpText(FUP.get(1).get(5));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(FUP.get(1).get(6));
		enterdatapoints.enterErrormsg(FUP.get(1).get(7));
		enterdatapoints.clickOnAdvanced();
		enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		enterdatapoints.clickOnDoneButton();

	}

	// ***************************************File
	// Upload(new)*********************************//
	@When("User click on File Upload")
	public void user_click_on_file_upload() {
		enterdatapoints.clickOnFileUpload();
	}

	@When("User click on File Upload Depricated")
	public void user_click_on_file_upload_depricated() {
		enterdatapoints.clickOnFileUploadDepricated();
	}

	@When("User click on Allowed file Types dropdown")
	public void user_click_on_allowed_file_types_dropdown() {
		enterdatapoints.clickOnAllowedFileTypes();
	}

	@When("User enter Maximum Number Of Files as {string}")
	public void user_enter_maximum_number_of_files_as(String string) {
		enterdatapoints.enterMaxNumOfFiles(string);
	}

	@When("User enter Maximum File Size as {string}")
	public void user_enter_maximum_file_size_as(String string) {
		enterdatapoints.enterMaxFileSize(string);
	}

	@When("User Click on {string}")
	public void user_click_on(String string) throws Exception {

		if (string.equals("Doc(PDF)")) {
			enterdatapoints.clickOnDocument();
		} else if (string.equals("Doc(Excel)")) {
			enterdatapoints.clickOnDocument();
		} else if (string.equals("Doc(doc)")) {
			enterdatapoints.clickOnDocument();
		} else if (string.equals("Doc(ppt)")) {
			enterdatapoints.clickOnDocument();
		} else if (string.equals("image(png)")) {
			enterdatapoints.clickOnimage();
		} else if (string.equals("image(jpeg)")) {
			enterdatapoints.clickOnimage();
		} else if (string.equals("Text")) {
			enterdatapoints.clickOnText();
		} else if (string.equals("Any")) {
			enterdatapoints.clickOnAny();
		} else if (string.equals("Audio")) {
			enterdatapoints.clickOnAudio();
		} else if (string.equals("Video")) {
			enterdatapoints.clickOnVideo();
		}

	}

	@When("I Click on {string}")
	public void i_click_on(String string) throws Exception {

		if (string.equals("Doc(PDF)")) {
			enterdatapoints.clickOnDocument();
		} else if (string.equals("Doc(Excel)")) {
			enterdatapoints.clickOnDocument();
		} else if (string.equals("Doc(doc)")) {
			enterdatapoints.clickOnDocument();
		} else if (string.equals("Doc(ppt)")) {
			enterdatapoints.clickOnDocument();
		} else if (string.equals("image(png)")) {
			enterdatapoints.clickOnimage();
		} else if (string.equals("image(jpeg)")) {
			enterdatapoints.clickOnimage();
		} else if (string.equals("Text")) {
			enterdatapoints.clickOnText();
		} else if (string.equals("Any")) {
			enterdatapoints.clickOnAny();
		} else if (string.equals("Audio")) {
			enterdatapoints.clickOnAudio();
		} else if (string.equals("Video")) {
			enterdatapoints.clickOnVideo();
		}

	}

	@When("User click on Show As Profile Image Picker")
	public void user_click_on_show_as_profile_image_picker() {
		enterdatapoints.clickOnShowAsProfileImagePicker();
	}

	@When("User click on Helpers")
	public void user_click_on_helpers() {
		enterdatapoints.clickOnHelpers();
	}

	@When("User enter Info Text as {string}")
	public void user_enter_info_text_as(String string) {
		enterdatapoints.enterInfoText(string);
	}

	@When("User enter Help Text as {string}")
	public void user_enter_help_text_as(String string) {
		enterdatapoints.enterHelpText(string);
	}

	@When("User click on Advanced")
	public void user_click_on_advanced() {
		enterdatapoints.clickOnAdvanced();
	}

	@When("User click on Required")
	public void user_click_on_required() {
		enterdatapoints.clickOnRequired();
	}

	@When("User click on Admin only")
	public void user_click_on_admin_only() throws Exception {
		enterdatapoints.clickOnAdminOnly();
	}

	@When("User click on Unique")
	public void user_click_on_unique() {
		enterdatapoints.clickOnUnique();
	}

	@When("User Uploaded {string} file")
	public void user_uploaded_file(String string) throws Exception {

		if (string.equals("Doc(PDF)")) {
			enterdatapoints.UploadPdf();
		} else if (string.equals("Doc(Excel)")) {
			enterdatapoints.UploadExcel();
		} else if (string.equals("Doc(doc)")) {
			enterdatapoints.UploadDoc();
		} else if (string.equals("Doc(ppt)")) {
			enterdatapoints.Uploadppt();
		} else if (string.equals("image(png)")) {
			enterdatapoints.Uploadimagepng();
		} else if (string.equals("image(jpeg)")) {
			enterdatapoints.Uploadimagejpg();
		} else if (string.equals("Text")) {
			enterdatapoints.UploadText();
		} else if (string.equals("Any")) {
			enterdatapoints.UploadAny();
		} else if (string.equals("Audio")) {
			enterdatapoints.UploadAudio();
		} else if (string.equals("Video")) {
			enterdatapoints.UploadVideo();
		}

	}

	@When("I Uploaded {string} file")
	public void i_uploaded_file(String string) throws Exception {

		if (string.equals("Doc(PDF)")) {
			enterdatapoints.UploadPdf();
		} else if (string.equals("Doc(Excel)")) {
			enterdatapoints.UploadExcel();
		} else if (string.equals("Doc(doc)")) {
			enterdatapoints.UploadDoc();
		} else if (string.equals("Doc(ppt)")) {
			enterdatapoints.Uploadppt();
		} else if (string.equals("image(png)")) {
			enterdatapoints.Uploadimagepng();
		} else if (string.equals("image(jpeg)")) {
			enterdatapoints.Uploadimagejpg();
		} else if (string.equals("Text")) {
			enterdatapoints.UploadText();
		} else if (string.equals("Any")) {
			enterdatapoints.UploadAny();
		} else if (string.equals("Audio")) {
			enterdatapoints.UploadAudio();
		} else if (string.equals("Video")) {
			enterdatapoints.UploadVideo();
		}

	}

	@Then("I click on {string} file")
	public void i_click_on_file(String string) {

		if (string.equals("image(png)")) {
			enterdatapoints.clickOnImageFile();
		} else if (string.equals("image(jpeg)")) {
			enterdatapoints.clickOnImageFile();
		} else {
			enterdatapoints.clickOnfile();
		}

	}

	// ****************Rating bar******************//
	@When("User enter the ratingbar deatils with following credentials")
	public void user_enter_the_ratingbar_deatils_with_following_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> RB = dataTable.asLists();

		enterdatapoints.enterFieldLabel(RB.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnRatingbar();
		enterdatapoints.clickOnStars();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(RB.get(1).get(1));
		enterdatapoints.enterHelpText(RB.get(1).get(2));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(FUP.get(1).get(3));
		enterdatapoints.enterErrormsg(RB.get(1).get(4));
		enterdatapoints.clickOnAdvanced();
		enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		enterdatapoints.clickOnDoneButton();
	}

	@When("User give rating as Five star")
	public void user_give_rating_as_five_star() {
		enterdatapoints.clickOnFiveStar();
	}

	// ******************ProgressBar************************//
	@When("User enter ProgressBar details with following details")
	public void user_enter_progress_bar_details_with_following_details(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> PB = dataTable.asLists();

		enterdatapoints.enterFieldLabel(PB.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnProgressbar();
		enterdatapoints.enterValueOnProgressBar(PB.get(1).get(1));
		enterdatapoints.enterMinOnProgressBar(PB.get(1).get(2));
		enterdatapoints.enterMaxOnProgressBar(PB.get(1).get(3));
		enterdatapoints.enterStepSizeOnProgressBar(PB.get(1).get(4));
		enterdatapoints.dragsliderOnProgressBar();
		enterdatapoints.clickOnpythonMandatoryCheckbox();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(PB.get(1).get(5));
		enterdatapoints.enterHelpText(PB.get(1).get(6));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(PB.get(1).get(7));
		enterdatapoints.enterErrormsg(PB.get(1).get(8));
		enterdatapoints.clickOnAdvanced();
		enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@When("User give the progressbar value")
	public void user_give_the_progressbar_value() {
		enterdatapoints.enterProgressBarValue();
	}

	// *******************StaticText******************//
	@When("User enter StaticText details with following Credentials")
	public void user_enter_static_text_details_with_following_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> ST = dataTable.asLists();

		enterdatapoints.enterFieldLabel(ST.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnStaticText();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(ST.get(1).get(1));
		enterdatapoints.enterHelpText(ST.get(1).get(2));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(PB.get(1).get(3));
		enterdatapoints.enterErrormsg(ST.get(1).get(4));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

	}

	@Then("User Should see the Static Text")
	public void user_should_see_the_static_text() {
		enterdatapoints.getStaticText();
	}

	// ************Rich Text Editor***********************//
	@When("User enter RichTextEditor Details with following credentials")
	public void user_enter_rich_text_editor_details_with_following_credentials(
			io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> RT = dataTable.asLists();

		enterdatapoints.enterFieldLabel(RT.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnRichTextEditor();
		enterdatapoints.enterHintorPlaceHolder(RT.get(1).get(1));
		enterdatapoints.enterDefaultValue(RT.get(1).get(2));
		enterdatapoints.clickOnShowAsPlainText();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(RT.get(1).get(3));
		enterdatapoints.enterHelpText(RT.get(1).get(4));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(PB.get(1).get(5));
		enterdatapoints.enterErrormsg(RT.get(1).get(6));
		enterdatapoints.clickOnAdvanced();
		enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

	}

	@When("User Enter richtext with using all options")
	public void user_enter_richtext_with_using_all_options() throws Exception {
		enterdatapoints.clickOnNormalTextDropDown();
		enterdatapoints.clickOnHeading1();
		enterdatapoints.clickOnHeading2();
		enterdatapoints.clickOnHeading3();
		enterdatapoints.clickOnHeading4();
		enterdatapoints.clickOnHeading5();
		enterdatapoints.chooseStylesOnRichText();
	}

	@Then("User click on Preview")
	public void user_click_on_preview() {
		enterdatapoints.clickOnPreview();
	}

	@Then("User should see the given Rich text")
	public void user_should_see_the_given_rich_text() {
		enterdatapoints.getRichTextFromDb();
	}

	// **********************Section********************************//
	@When("User enter Section feature details with below Credentials")
	public void user_enter_section_feature_details_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> SE = dataTable.asLists();

		enterdatapoints.enterFieldLabel(SE.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SE.get(1).get(1));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SE.get(1).get(2));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SE.get(1).get(3));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SE.get(1).get(4));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnSection();
		enterdatapoints.clickOnSelectFields();
		enterdatapoints.selectfirstField();
		enterdatapoints.selectsecondField();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(SE.get(1).get(6));
		enterdatapoints.enterHelpText(SE.get(1).get(7));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(PB.get(1).get(8));
		enterdatapoints.enterErrormsg(SE.get(1).get(9));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SE.get(1).get(5));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnSection();
		enterdatapoints.clickOnSelectFields();
		enterdatapoints.selectthirdField();
		enterdatapoints.selectfourthField();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(SE.get(1).get(6));
		enterdatapoints.enterHelpText(SE.get(1).get(7));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(PB.get(1).get(8));
		enterdatapoints.enterErrormsg(SE.get(1).get(9));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@When("User enter the Sections values with below Credentials")
	public void user_enter_the_sections_values_with_below_credentials(io.cucumber.datatable.DataTable dataTable) {
		List<List<String>> SEV = dataTable.asLists();
		enterdatapoints.clickOnSection1Bar();
		enterdatapoints.enterFirstValueOnSection(SEV.get(1).get(0));
		enterdatapoints.enterSecondValueOnSection(SEV.get(1).get(1));
		enterdatapoints.clickOnSection2Bar();
		enterdatapoints.enterThirdValueOnSection(SEV.get(1).get(2));
		enterdatapoints.enterFourthValueOnSection(SEV.get(1).get(3));
	}

	@Then("User Validate values given in Section1")
	public void user_validate_values_given_in_section1() {
		enterdatapoints.getvalue1Section();
		enterdatapoints.getvalue2Section();
	}

	@Then("User Validate values given in Section2")
	public void user_validate_values_given_in_section2() {
		enterdatapoints.getvalue3Section();
		enterdatapoints.getvalue4Section();
	}

	// **************************Stepper*****************************//
	@When("User enter Stepper Feature details with below Crdentials")
	public void user_enter_stepper_feature_details_with_below_crdentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> SP = dataTable.asLists();

		enterdatapoints.enterFieldLabel(SP.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SP.get(1).get(1));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SP.get(1).get(2));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SP.get(1).get(3));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SP.get(1).get(4));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnStepper();
		enterdatapoints.clickOnAddStepOnStepper();
		enterdatapoints.enterStepTitleOnStepper(SP.get(1).get(5));
		enterdatapoints.clickOnSelectInnerFields();
		enterdatapoints.selectfirstField();
		enterdatapoints.selectsecondField();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnAddStepOnStepper();
		enterdatapoints.enterStepTitleOnStepper(SP.get(1).get(6));
		enterdatapoints.clickOnSelectInnerFields();
		enterdatapoints.selectthirdField();
		enterdatapoints.selectfourthField();
		enterdatapoints.clickOnDoneButton();

		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(SP.get(1).get(7));
		enterdatapoints.enterHelpText(SP.get(1).get(8));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(PB.get(1).get(9));
		enterdatapoints.enterErrormsg(SP.get(1).get(10));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

	}

	@When("User enter the Stepper values with below credentials")
	public void user_enter_the_stepper_values_with_below_credentials(io.cucumber.datatable.DataTable dataTable) {
		List<List<String>> SPV = dataTable.asLists();
		enterdatapoints.enterFirstValueOnStepper(SPV.get(1).get(0));
		enterdatapoints.enterSecondValueOnStepper(SPV.get(1).get(1));
		enterdatapoints.enternextButtonOnStepper();
		enterdatapoints.enterThirdValueOnStepper(SPV.get(1).get(2));
		enterdatapoints.enterFourthValueOnStepper(SPV.get(1).get(3));
	}

	@Then("User Validate values given in Stepper1")
	public void user_validate_values_given_in_stepper1() {
		enterdatapoints.getvalue1Stepper();
		enterdatapoints.getvalue2Stepper();
	}

	@Then("User Validate values given in Stepper2")
	public void user_validate_values_given_in_stepper2() {
		enterdatapoints.getvalue3Stepper();
		enterdatapoints.getvalue4Stepper();
	}

	// ****************************Tab**************************************//

	@When("User Enter Tab Feature details with below Credentials")
	public void user_enter_tab_feature_details_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> TAB = dataTable.asLists();

		enterdatapoints.enterFieldLabel(TAB.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(TAB.get(1).get(1));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(TAB.get(1).get(2));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(TAB.get(1).get(3));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(TAB.get(1).get(4));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnTab();
		enterdatapoints.clickOnAddTab();
		enterdatapoints.enterTabTitle(TAB.get(1).get(5));
		enterdatapoints.clickOnSelectInnerFields();
		enterdatapoints.selectfirstField();
		enterdatapoints.selectsecondField();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnAddTab();
		enterdatapoints.enterTabTitle(TAB.get(1).get(6));
		enterdatapoints.clickOnSelectInnerFields();
		enterdatapoints.selectthirdField();
		enterdatapoints.selectfourthField();
		enterdatapoints.clickOnDoneButton();

		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(TAB.get(1).get(7));
		enterdatapoints.enterHelpText(TAB.get(1).get(8));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(PB.get(1).get(9));
		enterdatapoints.enterErrormsg(TAB.get(1).get(10));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@When("User enter the Tabs values with below credentials")
	public void user_enter_the_tabs_values_with_below_credentials(io.cucumber.datatable.DataTable dataTable) {
		List<List<String>> TABV = dataTable.asLists();
		enterdatapoints.enterFirstValueOnTab(TABV.get(1).get(0));
		enterdatapoints.enterSecondValueOnTab(TABV.get(1).get(1));
		enterdatapoints.clickOnNextTab();
		enterdatapoints.enterFirstValueOnTab(TABV.get(1).get(2));
		enterdatapoints.enterSecondValueOnTab(TABV.get(1).get(3));
	}

	@Then("User Validate values given in Tab1")
	public void user_validate_values_given_in_tab1() {
		enterdatapoints.getvalue1();
		enterdatapoints.getvalue2();
	}

	@Then("User Validate values given in Tab2")
	public void user_validate_values_given_in_tab2() {
		enterdatapoints.getvalue3();
		enterdatapoints.getvalue4();
	}

	// **************************Email*****************************//
	@When("User Enter email feature details with below credentials")
	public void user_enter_email_feature_details_with_below_credentials(io.cucumber.datatable.DataTable dataTable) {

	}

	// ***************************Currency********************************//
	@When("User Currency Feature deatils with below Credentials")
	public void user_currency_feature_deatils_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> CU = dataTable.asLists();

		enterdatapoints.enterFieldLabel(CU.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnCurrency();
		enterdatapoints.clickOnCurrencyTypeDropDown();
		enterdatapoints.chooseEUR();
		enterdatapoints.chooseAED();
		enterdatapoints.chooseAUD();
		enterdatapoints.chooseCHF();
		enterdatapoints.chooseUSD();
		enterdatapoints.chooseIndianRupee();
		enterdatapoints.enterPrecesion(CU.get(1).get(1));
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(CU.get(1).get(2));
		enterdatapoints.enterHelpText(CU.get(1).get(3));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(CU.get(1).get(4));
		// enterdatapoints.enterErrormsg(CU.get(1).get(5));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

	}

	@When("User enter Currency Value as {string}")
	public void user_enter_currency_value_as(String string) throws Exception {
		enterdatapoints.enterCurrencyValue(string);
	}

	@Then("User Validate the Currency Value from table")
	public void user_validate_the_currency_value_from_table() {
		enterdatapoints.getCurrencyValueFromdb();
	}

	// **************************Percent**********************************//
	@Given("User Enter the Percent Feature datails with below credentials")
	public void user_enter_the_percent_feature_datails_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> PER = dataTable.asLists();

		enterdatapoints.enterFieldLabel(PER.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnPercent();
		// enterdatapoints.enterValueOfPercent(PER.get(1).get(1));
		enterdatapoints.enterPrecesion(PER.get(1).get(2));
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(PER.get(1).get(3));
		enterdatapoints.enterHelpText(PER.get(1).get(4));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(string);
		// enterdatapoints.enterErrormsg(PER.get(1).get(5));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

	}

	@When("User Enter the Percent valuee as {string}")
	public void user_enter_the_percent_valuee_as(String string) {
		enterdatapoints.enterPercentageValue(string);
	}

	@Then("User Validate the Percent Value from table")
	public void user_validate_the_percent_value_from_table() {
		enterdatapoints.getPercentValue();
	}

	// ***************************Formula*****************************//
	@Given("User Enter Formula feature details with below Credentials")
	public void user_enter_formula_feature_details_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> FOR = dataTable.asLists();
		for (int i = 1; i <= 1; i++) {
			for (int j = 0; j <= 7; j++) {

				enterdatapoints.enterFieldLabel(FOR.get(i).get(j));
				enterdatapoints.clickOnDoneButton();
				enterdatapoints.clickOnFieldButton();

				enterdatapoints.enterFieldLabel(FOR.get(i).get(j + 1));
				enterdatapoints.clickOnDoneButton();
				enterdatapoints.clickOnFieldButton();

				enterdatapoints.enterFieldLabel(FOR.get(i).get(j + 2));
				enterdatapoints.clickOnTexteditDropdown();
				enterdatapoints.clickOnFormula();
				enterdatapoints.enterFormula(FOR.get(i).get(j + 3));
				enterdatapoints.clickOnHelpers();
				enterdatapoints.enterInfoText(FOR.get(i).get(j + 4));
				enterdatapoints.enterHelpText(FOR.get(i).get(j + 5));
				// enterdatapoints.clickOnDataValidation();
				// enterdatapoints.clickOnaddButtonOnDataValidation();
				// enterdatapoints.enterExpression(FOR.get(i).get(j+6));
				// enterdatapoints.enterErrormsg(FOR.get(i).get(j+7));
				enterdatapoints.clickOnAdvanced();
				// enterdatapoints.clickOnRequired();
				enterdatapoints.clickOnAdminOnly();
				// enterdatapoints.clickOnUnique();
				enterdatapoints.clickOnEditIfUnique();
				enterdatapoints.clickOnDoneButton();

				enterdatapoints.clickOnSaveButton();
				enterdatapoints.updatePopup();
				enterdatapoints.clickOnRetrofitCheckbox();
				enterdatapoints.clickOnOkButton();
				enterdatapoints.formUpdtaedSuccessfully();
				createdatabase.clickOnDataBases();
				enterdatapoints.enterDatabaseName(dbname);
				enterdatapoints.goToDatabase();
				enterdatapoints.clickOnAddButton();

				enterdatapoints.enterFormulaValues1(FOR.get(i).get(j + 8));
				enterdatapoints.enterFormulaValues2(FOR.get(i).get(j + 9));

				enterdatapoints.clickOnSubmitButton();
				enterdatapoints.formSubmittedSuccessfully();
			}
		}
	}

	@When("User enter the values OF formula with below credentials")
	public void user_enter_the_values_of_formula_with_below_credentials(io.cucumber.datatable.DataTable dataTable) {
		List<List<String>> FORMV = dataTable.asLists();
		enterdatapoints.enterFormulaValues1(FORMV.get(1).get(0));
		enterdatapoints.enterFormulaValues2(FORMV.get(1).get(1));
	}

	// ***************************comments***************************************//
	@Given("User enter Comments Feature details with below Functionality")
	public void user_enter_comments_feature_details_with_below_functionality(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> CO = dataTable.asLists();

		enterdatapoints.enterFieldLabel(CO.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnComments();
		// enterdatapoints.addColumnOnComments();
		// enterdatapoints.enterFieldLableOnComments(CO.get(1).get(1));
		// enterdatapoints.clickOnDoneButton();
		enterdatapoints.enterMaxRowsOnComments(CO.get(1).get(2));
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(CO.get(1).get(3));
		enterdatapoints.enterHelpText(CO.get(1).get(4));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(CO.get(1).get(5));
		enterdatapoints.enterErrormsg(CO.get(1).get(6));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@When("User enter Comment values with below credentials")
	public void user_enter_comment_values_with_below_credentials(io.cucumber.datatable.DataTable dataTable) {
		List<List<String>> COV = dataTable.asLists();
		enterdatapoints.enterComments(COV.get(1).get(0));
		// enterdatapoints.enterReview(COV.get(1).get(1));

	}

	@When("User click on View Button")
	public void user_click_on_view_button() {
		enterdatapoints.clickOnViewButton();
	}

	@When("User Validate Commentor Name")
	public void user_validate_commentor_name() {
		enterdatapoints.getCommentor();
	}

	@When("User Validate Commented Date")
	public void user_validate_commented_date() {
		enterdatapoints.getCommentedDate();
	}

	@When("User Validate given Comments")
	public void user_validate_given_comments() {
		enterdatapoints.getCommentedComment();
	}

	// ****************************Created at*************************************//
	@Given("User enter CreatedAt feature deatails with below credentials")
	public void user_enter_created_at_feature_deatails_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> CA = dataTable.asLists();

		enterdatapoints.enterFieldLabel(CA.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnCreatedAt();
		enterdatapoints.clickOnDefaultFormat();
		enterdatapoints.selectDateFormat();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(CA.get(1).get(1));
		enterdatapoints.enterHelpText(CA.get(1).get(2));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(CA.get(1).get(3));
		enterdatapoints.enterErrormsg(CA.get(1).get(4));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@Then("User Should see the date and time details at Created at column")
	public void user_should_see_the_date_and_time_details_at_created_at_column() {
		enterdatapoints.getCreatedTime();
	}

	// ********************************Modified
	// at**********************************//

	@Given("User enter ModifiedAt Feature details with below Credentials")
	public void user_enter_modified_at_feature_details_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> MA = dataTable.asLists();

		enterdatapoints.enterFieldLabel(MA.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnModfiedAt();
		enterdatapoints.clickOnDefaultFormat();
		enterdatapoints.selectDateFormat();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(MA.get(1).get(1));
		enterdatapoints.enterHelpText(MA.get(1).get(2));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(MA.get(1).get(3));
		enterdatapoints.enterErrormsg(MA.get(1).get(4));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

	}

	@Then("User Should see the date and time details at Modified at column")
	public void user_should_see_the_date_and_time_details_at_modified_at_column() {
		enterdatapoints.getModifiedTime();
	}

	// ***********************CreatedBy**************************************//
	@Given("User Enter CreatedBy feature details with below credentials")
	public void user_enter_created_by_feature_details_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> CB = dataTable.asLists();

		enterdatapoints.enterFieldLabel(CB.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnCreatedBy();
		enterdatapoints.ModfiedByValue(CB.get(1).get(1));
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(CB.get(1).get(2));
		enterdatapoints.enterHelpText(CB.get(1).get(3));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(CB.get(1).get(4));
		enterdatapoints.enterErrormsg(CB.get(1).get(5));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@Then("User Should see Created By Value")
	public void user_should_see_created_by_value() {
		enterdatapoints.getCreatedByFromDatabase();
	}

	// ******************************ModifiedBy****************************//
	@Given("User Enter ModifiedBy feature details with below credentials")
	public void user_enter_modified_by_feature_details_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> MB = dataTable.asLists();

		enterdatapoints.enterFieldLabel(MB.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnModfiedBy();
		enterdatapoints.ModfiedByValue(MB.get(1).get(1));
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(MB.get(1).get(2));
		enterdatapoints.enterHelpText(MB.get(1).get(3));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(MB.get(1).get(4));
		enterdatapoints.enterErrormsg(MB.get(1).get(5));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@Then("User Should see Modified By Value")
	public void user_should_see_modified_by_value() {
		enterdatapoints.getModifiedByFromDatabase();
	}

	// *****************Tag****************************************//
	@Given("User enter Tag feature details with below credentials")
	public void user_enter_Tag_feature_details_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {

		List<List<String>> TAG = dataTable.asLists();

		enterdatapoints.enterFieldLabel(TAG.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnTag();
		enterdatapoints.giveMaxResult(TAG.get(1).get(1));
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.chooseTagMaster();
		enterdatapoints.clickOnSearchField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnSelectField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnDisplayField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnsearchIconField();
		enterdatapoints.chooseIcon();
		enterdatapoints.clickOnselectColorField();
		enterdatapoints.chooseColor();
		// enterdatapoints.clickOnFilters();
		// enterdatapoints.clickOnPlusIconOnFilters();
		// enterdatapoints.clickOnFieldOnFilters();
		// enterdatapoints.clickOnOption4();
		// enterdatapoints.enterValueOnFilters(TAG.get(1).get(2));
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(TAG.get(1).get(3));
		enterdatapoints.enterHelpText(TAG.get(1).get(4));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnaddButtonOnTag();
		// enterdatapoints.enterExpression(TAG.get(1).get(5));
		// enterdatapoints.enterErrormsg(TAG.get(1).get(6));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		// enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@Then("User enter the Tag Values")
	public void user_enter_the_Tag_Values() {

		enterdatapoints.clickOnChooseTag();
		enterdatapoints.clickOnChooseTagValue();
		// enterdatapoints.clickOnSubmitButton();
	}

	@Given("User enter Tag feature with filter details with below credentials")
	public void user_enter_Tag_feature_wiith_filter_details_with_below_credentials(
			io.cucumber.datatable.DataTable dataTable) throws Exception {

		List<List<String>> TAG = dataTable.asLists();

		enterdatapoints.enterFieldLabel(TAG.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnTag();
		enterdatapoints.giveMaxResult(TAG.get(1).get(1));
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.chooseTagMaster();
		enterdatapoints.clickOnSearchField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnSelectField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnDisplayField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnsearchIconField();
		enterdatapoints.chooseIcon();
		enterdatapoints.clickOnselectColorField();
		enterdatapoints.chooseColor();
		enterdatapoints.clickOnFilters();
		enterdatapoints.clickOnPlusIconOnFilters();
		enterdatapoints.clickOnFieldOnFilters();
		enterdatapoints.chooseColor();
		enterdatapoints.enterValueOnFilters2(TAG.get(1).get(2));
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(TAG.get(1).get(3));
		enterdatapoints.enterHelpText(TAG.get(1).get(4));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnaddButtonOnTag();
		// enterdatapoints.enterExpression(TAG.get(1).get(5));
		// enterdatapoints.enterErrormsg(TAG.get(1).get(6));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		// enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@Then("User enter the Tag with filter Values")
	public void user_enter_the_Tag_with_filter_Values() {

		enterdatapoints.clickOnChooseTag();
		enterdatapoints.clickOnChooseTagValue();
		// enterdatapoints.clickOnSubmitButton();
	}

	@Given("User enter Tag feature with dependencies details with below credentials")
	public void user_enter_tag_feature_with_dependencies_details_with_below_credentials(
			io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> TAG = dataTable.asLists();

		enterdatapoints.enterFieldLabel(TAG.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(TAG.get(1).get(1));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnTag();
		enterdatapoints.giveMaxResult(TAG.get(1).get(2));
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.chooseTagMaster();
		enterdatapoints.clickOnSearchField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnSelectField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnDisplayField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnsearchIconField();
		enterdatapoints.chooseIcon();
		enterdatapoints.clickOnselectColorField();
		enterdatapoints.chooseColor();
		// enterdatapoints.clickOnFilters();
		// enterdatapoints.clickOnPlusIconOnFilters();
		// enterdatapoints.clickOnFieldOnFilters();
		// enterdatapoints.clickOnOption4();
		// enterdatapoints.enterValueOnFilters(TAG.get(1).get(3));
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnaddButtonOnDependencies();
		enterdatapoints.clickOnMasterFormField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnFormField();
		enterdatapoints.clickOnReasonforleave();
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(TAG.get(1).get(4));
		enterdatapoints.enterHelpText(TAG.get(1).get(5));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnaddButtonOnTag();
		// enterdatapoints.enterExpression(TAG.get(1).get(6));
		// enterdatapoints.enterErrormsg(TAG.get(1).get(7));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		// enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

	}

	@When("User enter the tag with dependencies Value as {string}")
	public void user_enter_the_tag_with_dependencies_value_as(String string) {
		enterdatapoints.enterTagValue(string);
	}

	@Given("User enter Tag feature with dependencies and filters details with below credentials")
	public void user_enter_tag_feature_with_dependencies_and_filters_details_with_below_credentials(
			io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> TAG = dataTable.asLists();

		enterdatapoints.enterFieldLabel(TAG.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(TAG.get(1).get(1));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnTag();
		enterdatapoints.giveMaxResult(TAG.get(1).get(2));
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.chooseTagMaster();
		enterdatapoints.clickOnSearchField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnSelectField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnDisplayField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnsearchIconField();
		enterdatapoints.chooseIcon();
		enterdatapoints.clickOnselectColorField();
		enterdatapoints.chooseColor();
		enterdatapoints.clickOnFilters();
		enterdatapoints.clickOnPlusIconOnFilters();
		enterdatapoints.clickOnFieldOnFilters();
		enterdatapoints.chooseColor();
		enterdatapoints.enterValueOnFilters2(TAG.get(1).get(3));
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnaddButtonOnDependencies();
		enterdatapoints.clickOnMasterFormField();
		enterdatapoints.chooseLabel();
		enterdatapoints.clickOnFormField();
		enterdatapoints.clickOnReasonforleave();
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(TAG.get(1).get(4));
		enterdatapoints.enterHelpText(TAG.get(1).get(5));
		// enterdatapoints.clickOnDataValidation();
		// enterdatapoints.clickOnaddButtonOnTag();
		// enterdatapoints.enterExpression(TAG.get(1).get(6));
		// enterdatapoints.enterErrormsg(TAG.get(1).get(7));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		// enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();

	}

	@When("User enter the tag dependencies and filters Value as {string}")
	public void user_enter_the_tag_with_dependencies_and_filters_value_as(String string) {
		enterdatapoints.enterTagValue(string);

	}

	@When("User click on Choose Tag")
	public void user_click_on_choose_tag() {
		enterdatapoints.clickOnChooseTag();
	}

	@When("User should see Tag of {string}")
	public void user_should_see_tag_of(String string) {
		if (string.equals("Valid")) {
			enterdatapoints.clickOnChooseTagValue();
		} else {
			enterdatapoints.getNoData();
			enterdatapoints.clickOnBody();
		}

	}

	// *********************************Search****************************//
	@Given("User enter Search feature details with below credentials")
	public void User_enter_Search_feature_details_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> SER = dataTable.asLists();

		enterdatapoints.enterFieldLabel(SER.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SER.get(1).get(1));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SER.get(1).get(2));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SER.get(1).get(3));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnSearch();
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.clickOnEmployeeMaster();
		enterdatapoints.clickOnchooseFieldsToSearch();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnColor();
		enterdatapoints.chooseColorOnSearch();
		enterdatapoints.clickOnShowIcon();
		enterdatapoints.clickOnIcon();
		enterdatapoints.chooseIconOnSearch();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFilters();
		enterdatapoints.clickOnPlusIconOnFilters();
		enterdatapoints.clickOnFieldOnFilters();
		enterdatapoints.clickOnDepartment();
		enterdatapoints.enterValueOnFilters2(SER.get(1).get(8));
		// enterdatapoints.clickOnDependencies();
		// enterdatapoints.clickOnaddButtonOnDependencies();
		// enterdatapoints.clickOnMasterFormField();
		// enterdatapoints.clickOnValue1();
		// enterdatapoints.clickOnFormField();
		// enterdatapoints.clickOnValue1();
		// enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnMapping();
		enterdatapoints.clickOnaddButtonOnSearch();
		enterdatapoints.clickOnMasterFormFieldOnSearch();
		enterdatapoints.clickOnEmployeeName1();
		enterdatapoints.clickOnFormFieldOnSearch();
		enterdatapoints.chooseFormFieldOption1();
		enterdatapoints.clickOnaddButtonOnSearch();
		enterdatapoints.clickOnMasterFormFieldOnSearch2();
		enterdatapoints.clickOnEmployeeID();
		enterdatapoints.clickOnFormFieldOnSearch2();
		enterdatapoints.chooseFormFieldOption2();
		enterdatapoints.clickOnaddButtonOnSearch();
		enterdatapoints.clickOnMasterFormFieldOnSearch3();
		enterdatapoints.clickOnDepartment();
		enterdatapoints.clickOnFormFieldOnSearch3();
		enterdatapoints.chooseFormFieldOption3();

		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(SER.get(1).get(4));
		enterdatapoints.enterHelpText(SER.get(1).get(5));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnSearch2();
		// enterdatapoints.enterExpression(SER.get(1).get(6));
		enterdatapoints.enterErrormsg(SER.get(1).get(7));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		// enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@Then("User enter Search Values")
	public void user_enter_Search_Values() throws Exception {
		enterdatapoints.clickOnSearchButon();
		enterdatapoints.clickOnSearchbarOnSearch();
		enterdatapoints.clickOncheckboxOnSearch();
		enterdatapoints.clickOnDoneButtonOnSearch();
		enterdatapoints.clickOnSubmitButtonOnSearch();
	}

	@Given("User enter Search feature with dependencies details with below credentials")
	public void User_enter_Search_feature_with_dependencies_details_with_below_credentials(
			io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> SER = dataTable.asLists();

		enterdatapoints.enterFieldLabel(SER.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SER.get(1).get(1));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SER.get(1).get(2));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SER.get(1).get(3));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnSearch();
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.clickOnEmployeeMaster();
		enterdatapoints.clickOnchooseFieldsToSearch();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnColor();
		enterdatapoints.chooseColorOnSearch();
		enterdatapoints.clickOnShowIcon();
		enterdatapoints.clickOnIcon();
		enterdatapoints.chooseIconOnSearch();
		enterdatapoints.clickOnDoneButton();
		// enterdatapoints.clickOnFilters();
		// enterdatapoints.clickOnPlusIconOnFilters();
		// enterdatapoints.clickOnFieldOnFilters();
		// enterdatapoints.clickOnOption3();
		// enterdatapoints.enterValueOnFilters(SER.get(1).get(2));
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnaddButtonOnDependencies();
		enterdatapoints.clickOnMasterFormField();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnFormField();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnMapping();
		enterdatapoints.clickOnaddButtonOnSearch();
		enterdatapoints.clickOnMasterFormFieldOnSearchWithDependencies1();
		enterdatapoints.clickOnEmployeeName1();
		enterdatapoints.clickOnFormFieldOnSearchWithDependencies1();
		enterdatapoints.chooseFormFieldOption1();
		enterdatapoints.clickOnaddButtonOnSearch();
		enterdatapoints.clickOnMasterFormFieldOnSearchWithDependencies2();
		enterdatapoints.clickOnEmployeeID();
		enterdatapoints.clickOnFormFieldOnSearchWithDependencies2();
		enterdatapoints.chooseFormFieldOption2();
		enterdatapoints.clickOnaddButtonOnSearch();
		enterdatapoints.clickOnMasterFormFieldOnSearchWithDependencies3();
		enterdatapoints.clickOnDepartment();
		enterdatapoints.clickOnFormFieldOnSearchWithDependencies3();
		enterdatapoints.chooseFormFieldOption3();

		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(SER.get(1).get(4));
		enterdatapoints.enterHelpText(SER.get(1).get(5));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnSearch2();
		// enterdatapoints.enterExpression(SER.get(1).get(6));
		enterdatapoints.enterErrormsg(SER.get(1).get(7));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		// enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@When("User enter first field label as {string}")
	public void user_enter_first_field_label_as(String string) {
		enterdatapoints.enterSearchValue(string);
	}

	@When("User click on Search button")
	public void user_click_on_search_button() throws Exception {
		enterdatapoints.clickOnSearchButon();
	}

	@Then("User should see the details of {string}")
	public void user_should_see_the_details_of(String string) throws Exception {
		if (string.equals("Valid")) {
			enterdatapoints.clickOncheckboxOnSearch();
			enterdatapoints.clickOnDoneButtonOnSearch();
		} else if (string.equals("Invalid")) {
			enterdatapoints.getNoData();
			enterdatapoints.clickOnDoneButtonOnSearch();
		}
	}

	// @Then("User click on checkbox on search")
	// public void user_click_on_checkbox_on_search() {
	// enterdatapoints.clickOncheckboxOnSearch();
	// }
	//
	// @Then("User click on Done button on Search")
	// public void user_click_on_done_button_on_search() {
	// enterdatapoints.clickOnDoneButtonOnSearch();
	// }

	@Given("User enter Search feature with dependencies and filters details with below credentials")
	public void User_enter_Search_feature_with_dependencies_and_filters_details_with_below_credentials(
			io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> SER = dataTable.asLists();

		enterdatapoints.enterFieldLabel(SER.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SER.get(1).get(1));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SER.get(1).get(2));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(SER.get(1).get(3));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnSearch();
		enterdatapoints.clickOnChooseForm();
		enterdatapoints.clickOnEmployeeMaster();
		enterdatapoints.clickOnchooseFieldsToSearch();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnColor();
		enterdatapoints.chooseColorOnSearch();
		enterdatapoints.clickOnShowIcon();
		enterdatapoints.clickOnIcon();
		enterdatapoints.chooseIconOnSearch();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFilters();
		enterdatapoints.clickOnPlusIconOnFilters();
		enterdatapoints.clickOnFieldOnFilters();
		enterdatapoints.clickOnOption3();
		enterdatapoints.enterValueOnFilters2(SER.get(1).get(8));
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnaddButtonOnDependencies();
		enterdatapoints.clickOnMasterFormField();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnFormField();
		enterdatapoints.clickOnValue1();
		enterdatapoints.clickOnDependencies();
		enterdatapoints.clickOnMapping();
		enterdatapoints.clickOnaddButtonOnSearch();
		enterdatapoints.clickOnMasterFormFieldOnSearchWithDependencies1();
		enterdatapoints.clickOnEmployeeName1();
		enterdatapoints.clickOnFormFieldOnSearchWithDependencies1();
		enterdatapoints.chooseFormFieldOption1();
		enterdatapoints.clickOnaddButtonOnSearch();
		enterdatapoints.clickOnMasterFormFieldOnSearchWithDependencies2();
		enterdatapoints.clickOnEmployeeID();
		enterdatapoints.clickOnFormFieldOnSearchWithDependencies2();
		enterdatapoints.chooseFormFieldOption2();
		enterdatapoints.clickOnaddButtonOnSearch();
		enterdatapoints.clickOnMasterFormFieldOnSearchWithDependencies3();
		enterdatapoints.clickOnDepartment();
		enterdatapoints.clickOnFormFieldOnSearchWithDependencies3();
		enterdatapoints.chooseFormFieldOption3();

		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(SER.get(1).get(4));
		enterdatapoints.enterHelpText(SER.get(1).get(5));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnSearch2();
		// enterdatapoints.enterExpression(SER.get(1).get(6));
		enterdatapoints.enterErrormsg(SER.get(1).get(7));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		// enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	// ***************************Automation Trigger***************************//
	@Given("User enter Automation Trigger details with below Credentials")
	public void User_enter_Automation_Trigger_details_with_below_Credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> AUT = dataTable.asLists();

		enterdatapoints.enterFieldLabel(AUT.get(1).get(0));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnAutomationTrigger();
		enterdatapoints.clickOnChooseAutomation();
		enterdatapoints.EnterLoadingMessageOnAutomationTrigger(AUT.get(1).get(1));
		enterdatapoints.EnterSuccessMessageOnAutomationTrigger(AUT.get(1).get(2));
		enterdatapoints.EnterErrorMsgOnAutomationTrigger(AUT.get(1).get(3));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(AUT.get(1).get(4));
		enterdatapoints.enterHelpText(AUT.get(1).get(5));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(AUT.get(1).get(6));
		enterdatapoints.enterErrormsg(AUT.get(1).get(7));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		// enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@Then("User enter automation trigger values")
	public void User_enter_automation_trigger_values() {
		enterdatapoints.clickOnAutomationTriggerButton();
		enterdatapoints.clickOnSubmitButtonOnAutomationTrigger();
	}

	// *************************AutomationTrigger(Depricated)****************************************//
	@Given("User enter Automation Trigger Depricated details with below credentials")
	public void User_enter_Automation_Trigger_Depricated_details_with_below_credentials(
			io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> AUTD = dataTable.asLists();

		enterdatapoints.enterFieldLabel(AUTD.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();

		enterdatapoints.enterFieldLabel(AUTD.get(1).get(1));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnAutomationTriggerDepricated();
		enterdatapoints.clickOnActionTypeDropdown();
		enterdatapoints.clickOnOpenForm();
		enterdatapoints.clickOnchoosingFormOrField();
		enterdatapoints.clickOnEmployeeMaster();
		enterdatapoints.clickOnShowIcon();
		enterdatapoints.clickOnIcon();
		enterdatapoints.chooseIconOnSearch();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnColor();
		enterdatapoints.chooseColorOnSearch();

		enterdatapoints.clickOnHelpers();
		enterdatapoints.enterInfoText(AUTD.get(1).get(2));
		enterdatapoints.enterHelpText(AUTD.get(1).get(3));
		enterdatapoints.clickOnDataValidation();
		enterdatapoints.clickOnaddButtonOnDataValidation();
		// enterdatapoints.enterExpression(AUTD.get(1).get(4));
		enterdatapoints.enterErrormsg(AUTD.get(1).get(5));
		enterdatapoints.clickOnAdvanced();
		// enterdatapoints.clickOnRequired();
		enterdatapoints.clickOnAdminOnly();
		// enterdatapoints.clickOnUnique();
		// enterdatapoints.clickOnEditIfUnique();
		enterdatapoints.clickOnDoneButton();
	}

	@When("User Click On Trigger")
	public void user_click_on_trigger() {
		enterdatapoints.clickOnTriggerButtonOnAdd();
	}

	@When("User enter the form Values with below Credentials")
	public void user_enter_the_form_values_with_below_credentials(io.cucumber.datatable.DataTable dataTable) {
		List<List<String>> OF = dataTable.asLists();
		enterdatapoints.enterAutomationTriggerDepricatedOpenFormField1(OF.get(1).get(0));
		enterdatapoints.enterAutomationTriggerDepricatedOpenFormField2(OF.get(1).get(1));
		enterdatapoints.enterAutomationTriggerDepricatedOpenFormField3(OF.get(1).get(2));
	}

	@When("User click On Submit buttton on Trigger")
	public void user_click_on_submit_buttton_on_trigger() throws Exception {
		enterdatapoints.clickOnSubmitButtonOnOpenForm();
	}

	@Then("User should see submission created successfully tooltip")
	public void user_should_see_submission_created_successfully_tooltip() throws Exception {
		enterdatapoints.formSubmittedSuccessfully();
	}

	@Then("User should see submission updated successfully tooltip")
	public void user_should_see_submission_updated_successfully_tooltip() throws Exception {
		enterdatapoints.SubmissionUpdtaedSuccessfully();
	}

	@Then("User should see submission created successfully2 tooltip")
	public void user_should_see_submission_created_successfully2_tooltip() throws Exception {
		enterdatapoints.formSubmittedSuccessfullyForAutomationTriggger();
	}

	@When("User click on Trigger Button from data points form")
	public void user_click_on_trigger_button_from_data_points_form() {
		enterdatapoints.clickOnTriggerOnDataPointsForm();
	}

	@When("User click on the first dropdown to select Form Submission")
	public void user_click_on_the_first_dropdown_to_select_form_submission() {
		enterdatapoints.clickOnActionTypeDropdown();
	}

	@When("User select Form Submission")
	public void user_select_form_submission() {
		enterdatapoints.clickOnOpenSubmission();
	}

	@When("User click on second dropdown to select form field")
	public void user_click_on_second_dropdown_to_select_form_field() {
		enterdatapoints.clickOnchoosingFormOrField();
	}

	@When("User select SubmissionID Field")
	public void user_select_submission_id_field() throws Exception {
		enterdatapoints.clickOnSubmissionID();
	}

	@When("User enter Submission ID as {string}")
	public void user_enter_submission_id_as(String string) {
		enterdatapoints.enterSubmissionID(string);
	}

	@Then("User Should see the Submission Details")
	public void user_should_see_the_submission_details() {

	}

	@When("User edit the Submissions as below Credentials")
	public void user_edit_the_submissions_as_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> OF = dataTable.asLists();
		enterdatapoints.editAutomationTriggerDepricatedOpenFormField1(OF.get(1).get(0));
		enterdatapoints.editAutomationTriggerDepricatedOpenFormField2(OF.get(1).get(1));
		enterdatapoints.editAutomationTriggerDepricatedOpenFormField3(OF.get(1).get(2));
	}

	// *********************************Formula******************************************//

	@Given("User enter the field label as {string}")
	public void user_enter_the_field_label_as(String string) throws Exception {

		enterdatapoints.enterFieldLabel(string);
	}

	@Given("User click on done button")
	public void user_click_on_done_button() {
		enterdatapoints.clickOnDoneButton();
	}

	@Given("User click on field button")
	public void user_click_on_field_button() throws Exception {
		enterdatapoints.clickOnFieldButton();
	}

	@When("User enter the field lable as {string}")
	public void user_enter_the_field_lable_as(String string) throws Exception {

		enterdatapoints.enterFieldLabel(string);
	}

	@When("User click on Done2 button")
	public void user_click_on_done2_button() {
		enterdatapoints.clickOnDoneButton();
	}

	@When("User click on Field button")
	public void user_click_on_Field_button() throws Exception {
		enterdatapoints.clickOnFieldButton();
	}

	@When("User enter the Field label as {string}")
	public void user_enter_the_Field_label_as(String string) throws Exception {

		enterdatapoints.enterFieldLabel(string);
	}

	@When("User click on TextEdit Dropdown")
	public void user_click_on_text_edit_dropdown() throws InterruptedException {
		enterdatapoints.clickOnTexteditDropdown();
	}

	@When("User click on Formula")
	public void user_click_on_formula() {
		enterdatapoints.clickOnFormula();
	}

	@When("User enter the Formula as {string}")
	public void user_enter_the_formula_as(String string) {
		enterdatapoints.enterFormula(string);
	}

	@When("User click On Helpers dropdown")
	public void user_click_on_helpers_dropdown() {
		enterdatapoints.clickOnHelpers();
	}

	@When("User enter the InfoText as {string}")
	public void user_enter_the_info_text_as(String string) {
		enterdatapoints.enterInfoText(string);
	}

	@When("User enter the Help Text as {string}")
	public void user_enter_the_help_text_as(String string) {
		enterdatapoints.enterHelpText(string);
	}

	@When("User click on Data validation")
	public void user_click_on_data_validation() {
		enterdatapoints.clickOnDataValidation();
	}

	@When("User click on add button on DataValidation")
	public void user_click_on_add_button_on_data_validation() {
		enterdatapoints.clickOnaddButtonOnDataValidation();
	}

	@When("User enter the expression as {string}")
	public void user_enter_the_expression_as(String string) {
		enterdatapoints.enterExpression(string);
	}

	@When("User enter error message as {string}")
	public void user_enter_error_message_as(String string) {
		enterdatapoints.enterErrormsg(string);
	}

	@When("User click On Advanced")
	public void user_click_on_Advanced() {
		enterdatapoints.clickOnAdvanced();
	}

	@When("User check On Required")
	public void user_check_on_required() {
		enterdatapoints.clickOnRequired();
	}

	@When("User check On Admin only")
	public void user_check_on_admin_only() throws Exception {
		enterdatapoints.clickOnAdminOnly();
	}

	@When("User check On Unique")
	public void user_check_on_unique() {
		// enterdatapoints.clickOnUnique();
	}

	@When("User check on Edit if unique")
	public void user_check_on_edit_if_unique() {
		// enterdatapoints.clickOnEditIfUnique();
	}

	@When("User click On Done Button")
	public void user_click_on_Done_button() {
		enterdatapoints.clickOnDoneButton();
	}

	@When("User enter the Score as {string}")
	public void user_enter_the_score_as(String string) {
		enterdatapoints.enterFormulaValues1(string);
	}

	@When("user enter the Total as {string}")
	public void user_enter_the_total_as(String string) {
		enterdatapoints.enterFormulaValues2(string);
		enterdatapoints.clickOnResult();
	}

	@When("User enter the Val1 as {string}")
	public void user_enter_the_val1_as(String string) {
		enterdatapoints.enterFormulaValues1(string);
	}

	@When("User enter the Val2 as {string}")
	public void user_enter_the_val2_as(String string) {
		enterdatapoints.enterFormulaValues2(string);
	}

	@When("User enter the Val3 as {string}")
	public void user_enter_the_val3_as(String string) {
		enterdatapoints.enterFormulaValues3(string);
	}

	@When("User enter the Val4 as {string}")
	public void user_enter_the_val4_as(String string) {
		enterdatapoints.enterFormulaValues4(string);
	}

	@When("User click on Result")
	public void user_click_on_result() {
		enterdatapoints.clickOnResultField();
	}

	@When("I clear Submission If any")
	public void i_clear_submission_if_any() {
		enterdatapoints.ClearSubmission();
	}

}
