package stepDefinitions;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.CreateDatabasePageObjects;
import pageObjects.DatabasesPageObjects;
import pageObjects.EnterDataPointsofDatabasesPageObjects;
import testbase.TestBase;
import utilities.Utilities;

public class DatabaseTableStepDefs extends TestBase{


	CreateDatabasePageObjects createdatabase = new CreateDatabasePageObjects(driver);
	EnterDataPointsofDatabasesPageObjects enterdatapoints = new EnterDataPointsofDatabasesPageObjects(driver);
	DatabasesPageObjects databasePageObjects=new DatabasesPageObjects(driver);//sharath
	Utilities util=new Utilities(driver); 

	@When("User click on searchbox")
	public void user_click_on_searchbox()  {
		enterdatapoints.ClickOnSearchbar();
	}
	@When("User enter the created database name")
	public void user_enter_the_created_database_name() throws Exception{
		databasePageObjects.clearSearchBoxInDatabases();
		enterdatapoints.enterDatabaseName(dbname);
		enterdatapoints.clickOnReloadProjects();
	}
	@When("I enter the created database name")
	public void i_enter_the_created_database_name() throws Exception {
		databasePageObjects.clearSearchBoxInDatabases();
		enterdatapoints.enterDatabaseName(dbname);
		//enterdatapoints.clickOnReloadProjects();
	}
//	@Then("User should see the database")
//	public void user_should_see_the_database() {
//
//	}
	@When("User click on database")
	public void user_click_on_database() throws Exception{
		enterdatapoints.goToDatabase();
	}
	@When("I click on database")
	public void i_click_on_database() throws Exception{
		enterdatapoints.goToDatabase();
	}

//	@Then("User should navigated to database page")
//	public void user_should_navigated_to_database_page() {
//
//	}
	@When("User click on edit icon")
	public void user_click_on_edit_icon() throws Exception{
		enterdatapoints.clickOnEditLogo1();
	}
	@When("User click on edit columns")
	public void user_click_on_edit_columns()  {
		enterdatapoints.clickOnEditColumns();
		util.waitUtil.waitExecutionForGivenTime(1);
	}
	@Then("User should see the datapoints form")
	public void user_should_see_the_datapoints_form() throws Exception{
		enterdatapoints.dataPointsForm();
	}
	@When("User click on name textfield")
	public void user_click_on_name_textfield() throws Exception {
		enterdatapoints.clickOnNameTextBox();
	}
//	@Then("User should see the configure form")
//	public void user_should_see_the_configure_form() {
//		
//	}
	@When("User enter the datapoints with below credentials")
	public void user_enter_the_datapoints_with_below_credentials(io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> dp = dataTable.asLists();
		enterdatapoints.clearFieldlabel();
		enterdatapoints.enterFieldLabel(dp.get(1).get(0));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();
		enterdatapoints.clearFieldlabel();
		enterdatapoints.enterFieldLabel(dp.get(1).get(1));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnCheckbox();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();
		enterdatapoints.clearFieldlabel();
		enterdatapoints.enterFieldLabel(dp.get(1).get(2));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnCheckbox();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();
		enterdatapoints.clearFieldlabel();
		enterdatapoints.enterFieldLabel(dp.get(1).get(3));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnDropdownList();
		enterdatapoints.enterDropdownOptions(dp.get(1).get(4));
		enterdatapoints.enterDropdownOptions(dp.get(1).get(5));
		enterdatapoints.enterDropdownOptions(dp.get(1).get(6));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();//sharath
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dp.get(1).get(7));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnTimePicker();
		//databasePageObjects.clickOnChooseTimeFormatDropdown();
		//databasePageObjects.HH_mmOptionInChooseTimeFormatDropdown.click();
		//databasePageObjects.optionsInChooseTimeFormatDropdown.get(3).click();
		enterdatapoints.clickOnDoneButton();
		databasePageObjects.clickOnFieldButton();
		enterdatapoints.clearFieldlabel();
		//databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dp.get(1).get(8));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnShortText();
		enterdatapoints.clickOnDoneButton();

		enterdatapoints.clickOnFieldButton();
		enterdatapoints.clearFieldlabel();
		//databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dp.get(1).get(9));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnEmail();
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnHtmlText();
		databasePageObjects.enterInHtmlTextBox(dp.get(1).get(10));
		enterdatapoints.clickOnFieldButton();
		enterdatapoints.clearFieldlabel();
		enterdatapoints.enterFieldLabel(dp.get(1).get(7));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnRadioGroup();
		enterdatapoints.addOptionRadioGroup(dp.get(1).get(8));
		enterdatapoints.addOptionRadioGroup(dp.get(1).get(9));
		enterdatapoints.clickOnDoneButton();
		enterdatapoints.clickOnFieldButton();
		enterdatapoints.clearFieldlabel();
		enterdatapoints.enterFieldLabel(dp.get(1).get(10));
		enterdatapoints.clickOnTexteditDropdown();
		enterdatapoints.clickOnDatePicker();
		enterdatapoints.clickOnDoneButton();

	}

	//	@When("User click on save  button")
	//	public void user_click_on_save_button() {
	//		enterdatapoints.clickOnSaveButton();
	//	}

//	@When("User click on save  button")
//	public void user_click_on_save_button() {
//		enterdatapoints.clickOnSaveButton();
//	}

	@When("User click on save button")
	public void user_click_on_save_button() {
		enterdatapoints.clickOnSaveButton();  
	}
	@Then("User should see an Update form popup")
	public void user_should_see_an_update_form_popup() {
		enterdatapoints.updatePopup();
	}
	@Then("I see an Update form popup")
	public void i_see_an_update_form_popup() {
		enterdatapoints.updatePopup();
	}

	@When("User check on retrofit form checkbox")
	public void user_check_on_retrofit_form_checkbox()  {
		enterdatapoints.clickOnRetrofitCheckbox();
	}
	@When("User click on ok button")
	public void user_click_on_ok_button() {
		enterdatapoints.clickOnOkButton();
	}
	@Then("User should see Form updated succcessfully tooltip")
	public void user_should_see_form_updated_succcessfully_tooltip() throws Exception {
		enterdatapoints.formUpdtaedSuccessfully();
	}
	@When("User again click on databases from side bar")
	public void user_again_click_on_databases_from_side_bar() throws Exception  {
		createdatabase.clickOnDataBases();
	}
	@Then("User should navigated to Databases page")
	public void user_should_navigated_to_databases_page() throws InterruptedException {

	}
	@Then("User Enter the database name on searchbox")
	public void user_enter_the_database_name_on_searchbox() throws Exception  {
		enterdatapoints.enterDatabaseName(dbname);
	}
	@When("User click on the displayed database")
	public void User_click_on_the_displayed_database()  throws Exception{
		enterdatapoints.goToDatabase();
	}
	@When("I click on the displayed database")
	public void i_click_on_the_displayed_database() throws Exception {
		enterdatapoints.goToDatabase();
	}

	@Then("User should see the Updtaed datapoints")
	public void user_should_see_the_updtaed_datapoints() {

	}

	@When("User click on add button")
	public void user_click_on_add_button()  {
		enterdatapoints.clickOnAddButton();
		//enterdatapoints.clickOnCloseIcon();
		//util.waitUtil.waitExecutionForGivenTime(1);
		//enterdatapoints.clickOnCloseIcon();
	}

	@When("User enter the values with below credentials")
	public void user_enter_the_values_with_below_credentials(io.cucumber.datatable.DataTable dataTable) {
		List<List<String>> dpv = dataTable.asLists();
		enterdatapoints.entertexteditvalue(dpv.get(0).get(0));
	}

	@When("User enters shortText field value <shortText>")
	public void user_enters_short_text_field_value_short_text(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearShortTextInputFieldAfterClickingAddButton();
		databasePageObjects.enterInshortTextInputFieldAfterClickingAddButton(dt.get(1).get(0));
	}

	@When("User enters email field value <email>")
	public void user_enters_email_field_value_email(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		util.waitUtil.waitExecutionForGivenTime(2);
		databasePageObjects.emailInputAfterClickingOnAddButton.clear();
		databasePageObjects.enterEmailInputAfterClickingOnAddButton(dt.get(1).get(0));
	}

	@When("User check the checkbox")
	public void user_check_the_checkbox() {
		enterdatapoints.checkOnChcekbox();
	}

	@When("User select an option from dropdown")
	public void user_select_an_option_from_dropdown() {
		enterdatapoints.clickOnDropDownvalue();
		enterdatapoints.chooseDropdownValue();
	}
	@When("User check on radiobox option")
	public void user_check_on_radiobox_option() {
		enterdatapoints.chooseradiobox();
	}

	@When("User Select the date")
	public void user_select_the_date() {
		enterdatapoints.clickOnSelectDate();
		enterdatapoints.selectDate();
	}


	@When("User click on submit button")
	public void user_click_on_submit_button() throws Exception  {
		enterdatapoints.clickOnSubmitButton();
		//enterdatapoints.clickOnSubmitButton();
	}

	@Then("User should see Submission created successfully tooltip")
	public void user_should_see_submission_created_successfully_tooltip() throws Exception {
		enterdatapoints.formSubmittedSuccessfully();
	}


}


	

	



