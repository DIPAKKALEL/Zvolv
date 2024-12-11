package stepDefinitions;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Month;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.TextStyle;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import Enums.Databases;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.BuilderPage;
import pageObjects.BuilderPageObj;
import pageObjects.CreateDatabasePageObjects;
import pageObjects.DatabasesPageObjects;
import pageObjects.EnterDataPointsofDatabasesPageObjects;
import pageObjects.GlobalPageObjects;
import testbase.TestBase;
import utilities.ActionUtil;
import utilities.Utilities;

public class DatabasesStepDefs extends TestBase {

//	EnterDataPointsofDatabasesPageObjects enterdatapoints = new EnterDataPointsofDatabasesPageObjects(driver);
	DatabasesPageObjects databasePageObjects = new DatabasesPageObjects(driver);
	EnterDataPointsofDatabasesPageObjects enterdatapoints = new EnterDataPointsofDatabasesPageObjects(driver);
	Utilities util = new Utilities(driver);
	CreateDatabasePageObjects createdatabase = new CreateDatabasePageObjects(driver);
	GlobalPageObjects globalPageObjects = new GlobalPageObjects(driver);

	JavascriptExecutor javascript = (JavascriptExecutor) driver;
	BuilderPage builderPage = new BuilderPage(driver);

	
	
	String date1;
	String date2;
	SimpleDateFormat sdf;
	String mon;
	String dat;
	String autonumberValue1;
	String autonumberValue2;
	String elementId;

	@When("User clicks on Select time")
	public void user_clicks_on_select_time() throws InterruptedException {
		databasePageObjects.clickOnSelectTime();
	}

	@And("User clicks on Hrs <hours>")
	public void user_clicks_on_hrs(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		util.actionutil.scrollToElement(databasePageObjects.hrs(dt.get(1).get(0)));
		databasePageObjects.clickOnHrs(dt.get(1).get(0));
	}

	@When("User clicks on Mins <minutes>")
	public void user_clicks_on_mins(DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		javascript.executeScript("arguments[0].scrollIntoView(true);", databasePageObjects.mins(dt.get(1).get(0)));
		// util.actionutil.scrollToElement(databasePageObjects.mins(dt.get(1).get(0)));
		databasePageObjects.clickOnMins(dt.get(1).get(0));
	}

	@When("USer clicks on Secs <seconds>")
	public void u_ser_clicks_on_secs(DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		javascript.executeScript("arguments[0].scrollIntoView(true);", databasePageObjects.secs(dt.get(1).get(0)));
		// util.actionutil.scrollToElement(databasePageObjects.secs(dt.get(1).get(0)));
		databasePageObjects.clickOnSecs(dt.get(1).get(0));
	}

	@When("User clicks on Am or Pm <ampm>")
	public void user_clicks_on_am_or_pm(DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		util.actionutil.scrollToElement(databasePageObjects.amPm(dt.get(1).get(0)));
		databasePageObjects.clickOnAmPm(dt.get(1).get(0));
		databasePageObjects.clickOnbodyOfWebPage();
	}

	@When("User enters the below details for creating TextEdit type column")
	public void user_enters_the_below_details_for_creating_text_edit_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.enterInHint((dt.get(1).get(1)));
		databasePageObjects.enterInDefaultValueTextArea(dt.get(1).get(2));
		databasePageObjects.clickOnChooseFieldTypeDropdown();
		databasePageObjects.clickOnTextInChooseFieldTypeDropdown();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(3));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(4));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAddButtonInDataValidation();
		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(1).get(5));
		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(1).get(6));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User enters value in Text Edit field <textEditValue>")
	public void user_enters_value_in_text_edit_field_text_edit_value(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.textEditInputBox.clear();
		databasePageObjects.enterIntextEditInputBox(dt.get(1).get(0));
	}

	@Then("User clicks on Submit button")
	public void user_clicks_on_submit_button() throws InterruptedException {
		// javascript.executeScript("arguments[0].click();",
		// databasePageObjects.submitButton);
		databasePageObjects.clickOnSubmitButton();
	}

	// checkbox
	@When("User enters the below details for creating CheckBox type column with dependency")
	public void user_enters_the_below_details_for_creating_check_box_type_column_with_dependency(
			io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOndoneButton();
		// enterdatapoints.clickOnFieldButton2();
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(1));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnCheckbox();
		databasePageObjects.clickOnDefaultValuecheckbox();
		// databasePageObjects.clickOnDefaultValuecheckbox();
		databasePageObjects.clickOnPythonMandatorycheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(4));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(5));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnDependencies();
		databasePageObjects.clickOnAddButtonInDependencies();
		util.actionutil.scrollByAmount(10, 100);
		databasePageObjects.clickOnSelectValueDropdownInDependencies();
		databasePageObjects.clickOntrueOptionInSelectValueDropdownInDependencies();
		databasePageObjects.clickOnSelectTypeDropdownInDependencies();
		databasePageObjects.clickOnhideOptionInSelectTypeDropdownInDependencies();
		databasePageObjects.clickOnselectFieldDropdownInDependencies();
		databasePageObjects.clickOntextEdit1InselectFieldDropdownInDependencies();
		databasePageObjects.clickOnDependencies();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User clicks on checkBox")
	public void user_clicks_on_checkbox() throws InterruptedException {
		databasePageObjects.clickOncheckBoxInputCheckbox();
	}

	// dropdownList
	@When("User enters the below details for creating DropdownList type column with dependency")
	public void user_enters_the_below_details_for_creating_dropdown_list_type_column_with_dependency(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOndoneButton();
		util.waitUtil.waitExecutionForGivenTime(1);
		// enterdatapoints.clickOnFieldButton2();
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(1));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnDropdownList();
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(1).get(8));
		// databasePageObjects.clickOntickMarkInDropdownListConfigureForm();
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(1).get(9));
		// databasePageObjects.clickOntickMarkInDropdownListConfigureForm();
		databasePageObjects.clickOnallowAddOptionsCheckboxInDropdownList();
		databasePageObjects.clickOnChooseDefaultValueDropdownInCofigureForm();
		databasePageObjects.clickOnOption1InChooseDefaultValueDropdown();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(4));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(5));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnTriage();
		databasePageObjects.clickOnAddButtonInTriage();
		// databasePageObjects.clickOnSelectValueDropdownInTriage();
		databasePageObjects.enterInSelectValueTextboxInTriage(dt.get(1).get(9));
		// databasePageObjects.clickOnoption2InSelectValueDropdownInTriage();
		// databasePageObjects.clickOnSelectTypeDropdownInTriage();
		databasePageObjects.enterInSelectTypeTextboxInTriage(dt.get(1).get(11));// same for Select type text box
		// databasePageObjects.clickOnhideOptionInSelectTypeDropdownInDependencies();//
		// same in Triage also
		// databasePageObjects.clickOnSelectFieldDropdownInTriage();
		databasePageObjects.enterInSelectFieldTextboxInTriage(dt.get(1).get(0));// same for Select field text box
		// databasePageObjects.clickOnoption1InSelectFieldDropdownInTriage();
		databasePageObjects.clickOnTriage();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(1).get(6));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(1).get(7));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User clicks on Dropdown list input")
	public void user_clicks_on_dropdown_list_input() throws InterruptedException {
		// util.waitUtil.WaitAndClick(databasePageObjects.dropdownListAfterClickingAddButton,
		// 3);
		// javascript.executeScript("arguments[0].click();",
		// databasePageObjects.dropdownListAfterClickingAddButton);
		// databasePageObjects.clickOnDropdownListAfterClickingAddButton();
		util.actionutil.click(databasePageObjects.dropdownListAfterClickingAddButton);
	}

	@Then("User clicks on any option")
	public void user_clicks_on_any_option() throws InterruptedException {
		databasePageObjects.clickOnOption2InDropdownListAfterClickingAddButton();
	}

	@Then("User enters value in EnterValue box as <newValue>")
	public void user_enters_value_in_enter_value_box_as_new_value(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.enterInEnterValueBoxInDropdownListAfterClickingAddButton(dt.get(1).get(0));
	}

	@Then("User clicks on Plus button")
	public void user_clicks_on_plus_button() throws InterruptedException {
		databasePageObjects.clickOnPlucButtonInDropdownListAfterClickingAddButton();
		// databasePageObjects.clickOnbodyOfWebPage();
		databasePageObjects.clickOnEscapeButtonOnKeyboard();

	}

	// RadioGroup

	@When("User enters the below details for creating RadioGroup type column with dependency")
	public void user_enters_the_below_details_for_creating_radio_group_type_column_with_dependency(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOndoneButton();
		util.waitUtil.waitExecutionForGivenTime(5);
		// enterdatapoints.clickOnFieldButton2();
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(1));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnRadioGroup();
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(1).get(8));
		// databasePageObjects.clickOntickMarkInDropdownListConfigureForm();
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(1).get(9));
		// databasePageObjects.clickOntickMarkInDropdownListConfigureForm();
		// databasePageObjects.clickOnChooseDefaultValueDropdownInCofigureForm();
		// databasePageObjects.clickOnOption1InChooseDefaultValueDropdown();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(4));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(5));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnTriage();
		databasePageObjects.clickOnAddButtonInTriage();
		// databasePageObjects.clickOnSelectValueDropdownInTriage();
		databasePageObjects.enterInSelectValueTextboxInTriage(dt.get(1).get(9));
		// databasePageObjects.clickOnoption2InSelectValueDropdownInTriage();
		// databasePageObjects.clickOnSelectTypeDropdownInTriage();
		databasePageObjects.enterInSelectTypeTextboxInTriage(dt.get(1).get(11));// same as SelectType
		// databasePageObjects.clickOnhideOptionInSelectTypeDropdownInDependencies();//
		// same in Triage also
		// databasePageObjects.clickOnSelectFieldDropdownInTriage();
		databasePageObjects.enterInSelectFieldTextboxInTriage(dt.get(1).get(0));
		// databasePageObjects.clickOnoption1InSelectFieldDropdownInTriage();
		databasePageObjects.clickOnTriage();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User clicks on Radio option2")
	public void user_clicks_on_radio_option2() throws InterruptedException {
		databasePageObjects.clickOnRadioOption2InRadioGroupAfterClickingAddButton();
		databasePageObjects.clickOnbodyOfWebPage();
	}

	// HTMLText
	@When("User enters the below details for creating HTMLText type column")
	public void user_enters_the_below_details_for_creating_html_text_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnHtmlText();
		databasePageObjects.enterInHtmlTextBox(dt.get(1).get(0));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(1));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(2));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOndoneButton();
		// String expectedText=databasePageObjects.getTextFromHtmlPreview();
	}

	// TimePicker
	@When("User enters the below details for creating TimePicker type column")
	public void user_enters_the_below_details_for_creating_time_picker_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnTimePicker();
		databasePageObjects.enterInDefaultValueTimePicker(dt.get(1).get(1));
		databasePageObjects.clickOnChooseTimeFormatDropdown();
		databasePageObjects.clickOnOption1InChooseTimeFormatDropdown();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(2));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	// ShortText
	@When("User enters the below details for creating ShortText type column")
	public void user_enters_the_below_details_for_creating_short_text_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnShortText();
		databasePageObjects.enterInDefaultValueTextBoxInShortText(dt.get(1).get(1));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(2));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAddButtonInDataValidation();
		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(1).get(4));
		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(1).get(5));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	// Email
	@When("User enters the below details for creating Email type column")
	public void user_enters_the_below_details_for_creating_email_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnEmail();
		databasePageObjects.enterInDefaultValueTextBoxInEmail(dt.get(1).get(1));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAddButtonInDataValidation();
		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(1).get(2));
		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(1).get(3));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();

	}

	// DatePicker
	@When("User enters the below details for creating Date Picker type column")
	public void user_enters_the_below_details_for_creating_date_picker_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnDatePicker();
		databasePageObjects.enterInDefaultValueInDatePicker(dt.get(1).get(1));
		databasePageObjects.clickOnChooseDateFormatDropdownInDatePicker();
		databasePageObjects.clickOnoptionDDMMYYYYInChooseDateFormatDropdownInDatePicker();
		databasePageObjects.clickOnTodayCheckboxInDatePicker();
		databasePageObjects.enterInDaysOptionalInDatePicker(dt.get(1).get(2));
		databasePageObjects.clickOnTodayCheckboxInDatePicker();
		databasePageObjects.enterInGreaterThanInDatePicker(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(4));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(5));
		databasePageObjects.clickOnHelpers();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get(6));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get(7));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User clicks on DatePicker Input")
	public void user_clicks_on_date_picker_input() throws InterruptedException {
		databasePageObjects.clickOnDatePickerInputAfterClickingAddButton();
	}

	@Then("User clicks on the desired date")
	public void user_clicks_on_the_desired_date(DataTable dataTable) {
		// databasePageObjects.clickOnTodayButtonAfterClickinOnDatepickerInput();
		List<Map<String, String>> dt = dataTable.asMaps(String.class, String.class);
		util.waitUtil.waitForElementVisible(databasePageObjects.calendar);// newly added method in WaitUtil class
		String monthYear = databasePageObjects.monthYear.getText();
		System.out.println("monthyear is: " + monthYear);
		System.out.println("monthyear from Datatable is: " + dt.get(0).get("month and year"));

		String str = monthYear.substring(4, 8);
		int currentYear = Integer.parseInt(str);

		String mntyr = dt.get(0).get("month and year");
		mntyr = mntyr.substring(4, 8);
		int testDataYear = Integer.parseInt(mntyr);

		String str2 = monthYear.substring(0, 3);
		DateFormatSymbols dfs = new DateFormatSymbols();
		String[] monthAbbreviations = dfs.getShortMonths();

		int testMonthNumber = 0;
		String str3 = dt.get(0).get("month and year").substring(0, 3);
		for (int i = 0; i < monthAbbreviations.length; i++) {
			if (str3.equalsIgnoreCase(monthAbbreviations[i])) {
				testMonthNumber = i + 1;
				break;
			}
		}

		if (currentYear < testDataYear) {
			while (!(monthYear.equals(dt.get(0).get("month and year")))) {
				System.out.println("monthyear is: " + monthYear);
				System.out.println("monthyear from Datatable is: " + dt.get(0).get("month and year"));
				databasePageObjects.nextMonthButton.click();
				monthYear = databasePageObjects.monthYear.getText();
			}
		} else if (currentYear > testDataYear) {
			while (!(monthYear.equals(dt.get(0).get("month and year")))) {
				System.out.println("monthyear is: " + monthYear);
				System.out.println("monthyear is: " + dt.get(0).get("month and year"));
				databasePageObjects.previousMonthButton.click();
				monthYear = databasePageObjects.monthYear.getText();
			}
		} else if (currentYear == testDataYear) {
			while (!(monthYear.equals(dt.get(0).get("month and year")))) {
				str2 = monthYear.substring(0, 3);
				int monthNumber = 0;
				for (int i = 0; i < monthAbbreviations.length; i++) {
					if (str2.equalsIgnoreCase(monthAbbreviations[i])) {
						monthNumber = i + 1;
						break;
					}
				}
				if (testMonthNumber > monthNumber) {
					databasePageObjects.nextMonthButton.click();
					monthYear = databasePageObjects.monthYear.getText();

				} else if (testMonthNumber < monthNumber) {
					databasePageObjects.previousMonthButton.click();
					monthYear = databasePageObjects.monthYear.getText();
				}
			}
		}
		databasePageObjects.day(dt.get(0).get("day")).click();
		date1 = (String) javascript.executeScript("return arguments[0].value;",
				databasePageObjects.datePickerInputAfterClickingAddButton);
		System.out.println("D: " + date1);
		// date1=databasePageObjects.datePickerInputAfterClickingAddButton.getText();
	}

	// Date-timePicker
	@When("User enters the below details for creating Date-timePicker type column")
	public void user_enters_the_below_details_for_creating_date_time_picker_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnDateTimePicker();
		databasePageObjects.enterInDefaultValueInDatetimePicker(dt.get(1).get(1) + Keys.TAB + dt.get(1).get(7));
		databasePageObjects.clickOnChooseDateTimeFormatDropdownInDatetimePicker();
		databasePageObjects.clickOnOption2InchooseDateTimeFormatDropdownInDatetimePicker();
		databasePageObjects.clickOnTodayCheckboxInDatePicker();// same for Datetime picker
		databasePageObjects.enterInDaysOptionalInDatePicker(dt.get(1).get(2));// same for Datetime picker
		databasePageObjects.clickOnTodayCheckboxInDatePicker();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(3));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(4));
		databasePageObjects.clickOnHelpers();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(1).get(5));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(1).get(6));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User clicks on Date-timePicker input")
	public void user_clicks_on_date_time_picker_input() throws InterruptedException {
		databasePageObjects.clickOnDateTimePickerInputAfterClickingAddButton();
	}

	@Then("User clicks on desired Date-time")
	public void user_clicks_on_desired_date_time(DataTable dataTable) throws InterruptedException {
		// databasePageObjects.clickOnNowButtonAfterClickingDateTimePickerInput();
		List<Map<String, String>> dt = dataTable.asMaps(String.class, String.class);
		String monthYear = databasePageObjects.monthYear.getText();
		System.out.println("monthyear is: " + monthYear);
		System.out.println("monthyear is: " + dt.get(0).get("month and year"));
		String date = databasePageObjects.date.getText();
		while (!(dt.get(0).get("month and year").equals(monthYear))) {
			System.out.println("monthyear is: " + monthYear);
			System.out.println("monthyear is: " + dt.get(0).get("month and year"));
			databasePageObjects.nextMonthButton.click();
			monthYear = databasePageObjects.monthYear.getText();
		}
		databasePageObjects.day(dt.get(0).get("day")).click();
		util.actionutil
				.scrollToElement(databasePageObjects.hrsInDateTimepickerAfterClickingAdd(dt.get(0).get("hours")));
		databasePageObjects.hrsInDateTimepickerAfterClickingAdd(dt.get(0).get("hours")).click();
		javascript.executeScript("arguments[0].scrollIntoView(true);",
				databasePageObjects.minsInDateTimepickerAfterClickingAdd(dt.get(0).get("minutes")));
		// util.actionutil.scrollToElement(databasePageObjects.minsInDateTimepickerAfterClickingAdd(dt.get(0).get("minutes")));
		databasePageObjects.minsInDateTimepickerAfterClickingAdd(dt.get(0).get("minutes")).click();
		databasePageObjects.okButtonDatetimepicker.click();
	}

	// Phone
	@When("User enters the below details for creating Phone type column")
	public void user_enters_the_below_details_for_creating_phone_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnPhone();
		databasePageObjects.clickOnCountryCodeDropdownInPhone();
		// databasePageObjects.clickOnCountryCodeDropdownInPhone();
		databasePageObjects.clickOnINoptionInCountryCodeDropdownInPhone();
		databasePageObjects.enterInvalueNumberBoxInPhone(dt.get(1).get(1));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(2));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(1).get(4));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(1).get(5));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User enters phone number <phone>")
	public void user_enters_phone_number(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.phoneInputAfterClickingAddButton.clear();
		databasePageObjects.enterInPhoneInputAfterClickingAddButton(dt.get(1).get(0));
	}

	@When("User enters the below details for creating Number with Integer type column")
	public void user_enters_the_below_details_for_creating_number_with_integer_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnNumber();
		databasePageObjects.enterInValueNumberBoxInNumber(dt.get(1).get(1));
		databasePageObjects.enterInminNumberBoxInNumber(dt.get(1).get(2));
		databasePageObjects.enterInmaxNumberBoxInNumber(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(4));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(5));
		databasePageObjects.clickOnHelpers();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(1).get(6));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(1).get(7));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User enters number <number>")
	public void user_enters_number_number(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		util.waitUtil.waitExecutionForGivenTime(3);
		JavascriptExecutor jsExecutor = (JavascriptExecutor) driver;
		jsExecutor.executeScript("arguments[0].value = '';", databasePageObjects.numberInputAfterClickingOnAddButton);
//		databasePageObjects.numberInputAfterClickingOnAddButton.clear();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.enterInnumberInputAfterClickingOnAddButton(dt.get(1).get(0));
	}

	// url

	@When("User enters the below details for creating URL type column")
	public void user_enters_the_below_details_for_creating_url_type_column(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnUrl();
		databasePageObjects.enterInDefaultValueTextBoxInEmail(dt.get(1).get(1));// same in URL
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(2));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(1).get(4));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(1).get(5));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User enters url <url>")
	public void user_enters_url_url(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.urlInputAfterClickingAddButton.clear();
		databasePageObjects.enterInUrlInput(dt.get(1).get(0));
	}

	// daterange
	@When("User enters the below details for creating DateRange type column")
	public void user_enters_the_below_details_for_creating_date_range_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnDateRange();
		databasePageObjects.enterInStartDateInDateRange(dt.get(1).get(1));
		databasePageObjects.enterInEndDateInDateRange(dt.get(1).get(2));
		databasePageObjects.clickOnChooseDateFormatDropdownInDatePicker();// same for Daterange
		databasePageObjects.clickOnoptionDDMMYYYYInChooseDateFormatDropdownInDatePicker();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(3));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(4));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User enters desired date range")
	public void user_enters_desired_date_range(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		databasePageObjects.clickOnDateRangeInput();
		// databasePageObjects.clickOnTodayInStartDateInDateRangeInput();
		// databasePageObjects.clickOnTodayInStartDateInDateRangeInput();
		List<Map<String, String>> dt = dataTable.asMaps(String.class, String.class);
		util.waitUtil.waitForElementVisible(databasePageObjects.calendar);// newly added method in WaitUtil class
		String startMonthYear = databasePageObjects.startMonthYear.getText();
		String endMonthYear = databasePageObjects.endMonthYear.getText();

		String str = startMonthYear.substring(4, 8);
		int startCurrentYear = Integer.parseInt(str);

		String str1 = endMonthYear.substring(4, 8);
		int endCurrentYear = Integer.parseInt(str1);

		String mntyr = dt.get(0).get("Start month and year");
		mntyr = mntyr.substring(4, 8);
		int startTestDataYear = Integer.parseInt(mntyr);

		String mntyr1 = dt.get(0).get("End month and year");
		mntyr1 = mntyr1.substring(4, 8);
		int endTestDataYear = Integer.parseInt(mntyr1);

		DateFormatSymbols dfs = new DateFormatSymbols();
		String[] monthAbbreviations = dfs.getShortMonths();

		int testMonthNumber1 = 0;
		String str3 = dt.get(0).get("Start month and year").substring(0, 3);
		for (int i = 0; i < monthAbbreviations.length; i++) {
			if (str3.equalsIgnoreCase(monthAbbreviations[i])) {
				testMonthNumber1 = i + 1;
				break;
			}
		}

		int testMonthNumber2 = 0;
		String str4 = dt.get(0).get("End month and year").substring(0, 3);
		for (int i = 0; i < monthAbbreviations.length; i++) {
			if (str3.equalsIgnoreCase(monthAbbreviations[i])) {
				testMonthNumber2 = i + 1;
				break;
			}
		}

		if (startTestDataYear < startCurrentYear) {
			while (!(startMonthYear.equals(dt.get(0).get("Start month and year")))) {
				databasePageObjects.previousMonthButtonStartDate.click();
				startMonthYear = databasePageObjects.startMonthYear.getText();
			}
		} else if (startTestDataYear == startCurrentYear) {
			while (!(startMonthYear.equals(dt.get(0).get("Start month and year")))) {
				startMonthYear = startMonthYear.substring(0, 3);
				int monthNumber = 0;
				for (int i = 0; i < monthAbbreviations.length; i++) {
					if (startMonthYear.equalsIgnoreCase(monthAbbreviations[i])) {
						monthNumber = i + 1;
						break;
					}
				}
				if (testMonthNumber1 < monthNumber) {
					databasePageObjects.previousMonthButtonStartDate.click();
					startMonthYear = databasePageObjects.startMonthYear.getText();
				} else if (testMonthNumber1 == monthNumber) {
					break;
				}
			}

		}
		databasePageObjects.day(dt.get(0).get("Start day")).click();

		if (endTestDataYear > endCurrentYear) {
			while (!(endMonthYear.equals(dt.get(0).get("End month and year")))) {
				databasePageObjects.nextMonthButtonEndDate.click();
				endMonthYear = databasePageObjects.endMonthYear.getText();
			}
		} else if (endTestDataYear < endCurrentYear) {
			while (!(endMonthYear.equals(dt.get(0).get("End month and year")))) {
				databasePageObjects.previousMonthButtonEndDate.click();
				endMonthYear = databasePageObjects.endMonthYear.getText();
			}
		} else if (endTestDataYear == endCurrentYear) {
			while (!(endMonthYear.equals(dt.get(0).get("End month and year")))) {
				endMonthYear = endMonthYear.substring(0, 3);
				int monthNumber = 0;
				for (int i = 0; i < monthAbbreviations.length; i++) {
					if (endMonthYear.equalsIgnoreCase(monthAbbreviations[i])) {
						monthNumber = i + 1;
						break;
					}
				}
				if (testMonthNumber2 < monthNumber) {
					databasePageObjects.nextMonthButtonEndDate.click();
					endMonthYear = databasePageObjects.endMonthYear.getText();
				} else if (testMonthNumber2 > monthNumber) {
					databasePageObjects.previousMonthButtonEndDate.click();
					endMonthYear = databasePageObjects.endMonthYear.getText();
				} else if (testMonthNumber2 == monthNumber) {
					break;
				}
			}

		}

		databasePageObjects.day2(dt.get(0).get("End day")).click();
	}

	// Timer
	@When("User enters the below details for creating Timer type column")
	public void user_enters_the_below_details_for_creating_timer_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnTimer();
		databasePageObjects.clickOnStartAutomaticallyCheckoboxInTimer();
		databasePageObjects.clickOnHideButtonsCheckboxInTimer();
		databasePageObjects.clickOnHideButtonsCheckboxInTimer();
		databasePageObjects.clickOnShowAsACountdownCheckboxInTimer();
		databasePageObjects.enterInHrsInTimer(dt.get(1).get(1));
		databasePageObjects.enterInminsInTimer(dt.get(1).get(2));
		databasePageObjects.enterInsecsInTimer(dt.get(1).get(3));
		databasePageObjects.clickOnShowAsACountdownCheckboxInTimer();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(4));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(5));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User performs desired operations")
	public void user_performs_desired_operations() throws InterruptedException {
		databasePageObjects.clickOnstartPauseResumeButton();
		databasePageObjects.clickOnResetButton();
		databasePageObjects.clickOnstartPauseResumeButton();
		util.waitUtil.waitExecutionForGivenTime(2);
		databasePageObjects.clickOnbodyOfWebPage();
		databasePageObjects.clickOnstartPauseResumeButton();
		// util.waitUtil.waitExecutionForGivenTime(1);
	}

	// Container
	@When("User enters the below details for creating Container type column")
	public void user_enters_the_below_details_for_creating_container_type_column(io.cucumber.datatable.DataTable dataTable) throws Exception {

		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOndoneButton();
		util.waitUtil.waitExecutionForGivenTime(1);
//		enterdatapoints.clickOnFieldButton2();
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(1));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnContainer();
		// databasePageObjects.clickOnSelectFieldsDropdownInContainer();
		globalPageObjects.clickOnElementByVisibleText("Select Fields");
		// util.waitUtil.waitForElementVisible(databasePageObjects.optionCheckboxInSelectFieldsDropdownByText(dt.get(1).get(0)));
		databasePageObjects.optionCheckboxInSelectFieldsDropdownByText(dt.get(1).get(0)).click();
		// databasePageObjects.clickOnbodyOfWebPage();
		databasePageObjects.clickOnEscapeButtonOnKeyboard();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(2));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	// AutoNumber
	@When("User enters the below details for creating AutoNumber type column")
	public void user_enters_the_below_details_for_creating_auto_number_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnAutoNumber();
		databasePageObjects.enterInStartSequenceNumberBoxInAutoNumber(dt.get(1).get(1));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(2));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	// Matrix
	@When("User enters the below details for creating Matrix type column")
	public void user_enters_the_below_details_for_creating_matrix_type_column(io.cucumber.datatable.DataTable dataTable) throws Exception {

		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOndoneButton();
		util.waitUtil.waitExecutionForGivenTime(1);
		// enterdatapoints.clickOnFieldButton2();
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(1));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnCheckbox();
		databasePageObjects.clickOndoneButton();
		util.waitUtil.waitExecutionForGivenTime(5);
//		util.actionutil.scrollByAmount(0, 100);
//		util.waitUtil.waitExecutionForGivenTime(1);
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(2));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnMatrix();
		databasePageObjects.clickOnSelectFieldsDropdownInContainer();// same for Matrix
		databasePageObjects.optionCheckboxInSelectFieldsDropdownByText(dt.get(1).get(0)).click();
		databasePageObjects.optionCheckboxInSelectFieldsDropdownByText(dt.get(1).get(1)).click();
		// databasePageObjects.clickOnbodyOfWebPage();
		javascript.executeScript("document.elementFromPoint(100, 100).click();");
		databasePageObjects.enterInNoOfColumnsNumberBoxInMatrix(dt.get(1).get(3));
		databasePageObjects.clickOnColorSquareInMatrix();
		databasePageObjects.clickOnRedColorInMatrix();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(4));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(5));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating Signature type column")
	public void user_enters_the_below_details_for_creating_signature_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(2);
		databasePageObjects.clickOnSignature();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(1));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(2));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();

	}

	@Then("User clicks on Color square")
	public void user_clicks_on_color_square() throws InterruptedException {
		databasePageObjects.clickOnColorSquareInMatrix();
	}

	@Then("User clicks on desired colour")
	public void user_clicks_on_desired_colour() throws InterruptedException {
		databasePageObjects.clickOnGreenColor();
	}

	@Then("User clicks on Change Font Size button")
	public void user_clicks_on_change_font_size_button() throws InterruptedException {
		databasePageObjects.clickOnChangeFontSizeButtonInSignnatureAfterClickingOnAddButton();
	}

	@Then("User clicks on Clear button")
	public void user_clicks_on_clear_button() throws InterruptedException {
		databasePageObjects.clickOnClearButtonInSignatureAfterClickingOnAddButton();
	}

	@Then("User clicks on Undo button")
	public void user_clicks_on_undo_button() throws InterruptedException {
		databasePageObjects.clickOnUndoButton();
	}

	@Then("User uploads the file by clicking on Upload button")
	public void user_uploads_the_file_by_clicking_on_upload_button(io.cucumber.datatable.DataTable dataTable)
			throws AWTException, InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		// databasePageObjects.uploadFileByClickingOnUploadButton(dt.get(1).get(0));
		databasePageObjects.clickOnUploadButton(System.getProperty("user.dir") + dt.get(0).get("FilePath"));
//		databasePageObjects.clickOnUploadButton();
//		util.waitUtil.waitExecutionForGivenTime(2);
//		Robot robot=new Robot();
//		StringSelection stringSelection=new StringSelection(dt.get(1).get(0));
//		Toolkit.getDefaultToolkit().getSystemClipboard().setContents(stringSelection, null);
//		robot.keyPress(KeyEvent.VK_CONTROL);
//		robot.keyPress(KeyEvent.VK_V);
//		robot.keyRelease(KeyEvent.VK_CONTROL);
//		robot.keyRelease(KeyEvent.VK_V);
//		util.waitUtil.waitExecutionForGivenTime(2);
//		robot.keyPress(KeyEvent.VK_ENTER);
//		robot.keyPress(KeyEvent.VK_ENTER);
//		util.waitUtil.waitExecutionForGivenTime(2);
	}

	// Location
	@When("User enters the below details for creating Location type column")
	public void user_enters_the_below_details_for_creating_location_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnLocation();
		databasePageObjects.clickOnGetLocationOnSubmitCheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(1));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(2));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	// QR/BarcodeScanner
	@When("User enters the below details for creating QRBarcode Scanner type column")
	public void user_enters_the_below_details_for_creating_qr_barcode_scanner_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnQrBarcodeScanner();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(1));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(2));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();

	}

	// ActionButton
	@When("User enters the below details for creating ActionButton type column")
	public void user_enters_the_below_details_for_creating_action_button_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps(String.class, String.class);
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("Field Label"));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(2);
		databasePageObjects.clickOnActionButton();
		databasePageObjects.clickOnActionTypeDropdown();
		databasePageObjects.actionNameInActionTypeDropdown(dt.get(0).get("Action Type")).click();
		databasePageObjects.clickOnChooseFormDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.databaseInChooseFormDropdown(dt.get(0).get("Choose Form")).click();
		// databasePageObjects.clickOnAddButtonChooseAutoPopulateInputs();
		// databasePageObjects.clickOnChooseFieldDropdown1InChooseAutoPopulateInputs();

		// databasePageObjects.clickOnChooseFieldDropdown2InChooseAutoPopulateInputs();

		databasePageObjects.enterInEnterSuccessMessageTextBox(dt.get(0).get("Success message"));
		databasePageObjects.enterInEnterLoadingMessageTextBox(dt.get(0).get("Loading message"));
		databasePageObjects.enterInEnterErrorMessageTextBox(dt.get(0).get("Error message"));
		databasePageObjects.clickOnShowIconCheckbox();
		databasePageObjects.clickOnOutlineCheckbox();
		databasePageObjects.clickOnIconInActionButton();
		databasePageObjects.clickOnIcon3();
		databasePageObjects.clickOnbodyOfWebPage();
		databasePageObjects.clickOnColorSquareInMatrix();// same in Action button
		databasePageObjects.clickOnRedColorInMatrix();// same in Action button
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(0).get("infoText"));
		databasePageObjects.enterInHelpTextField(dt.get(0).get("helpText"));
		databasePageObjects.clickOnHelpers();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User clicks on Action button")
	public void user_clicks_on_action_button(DataTable dataTable) {
		List<Map<String, String>> dt = dataTable.asMaps(String.class, String.class);
		databasePageObjects.actionButtonNameAfterclickingAddButton(dt.get(0).get("ActionButtonName")).click();
		util.waitUtil.waitExecutionForGivenTime(3);
	}

	@Then("User click on submit button2")
	public void user_click_on_submit_button2() throws InterruptedException {
		databasePageObjects.clickOnSubmitButton2();
	}

	@Then("User clicks on Close icon at top right")
	public void user_clicks_on_close_icon_at_top_right() throws InterruptedException {
		util.waitUtil.waitExecutionForGivenTime(4);
		databasePageObjects.clickOnCloseIconAfterEnteringDatabase();
	}

	@Then("User enters database name in search box")
	public void user_enters_database_name_in_search_box(DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearSearchBoxInDatabases();
		databasePageObjects.enterInSearchBoxInDatabases(dt.get(0).get("database Name"));
	}

	@Then("User verifies the entry made in the datatable")
	public void user_verfies_the_entry_made_in_the_datatable(DataTable dataTable) {
		List<Map<String, String>> dt = dataTable.asMaps();
		Assert.assertTrue(
				databasePageObjects.textInDatabaseRecords(dt.get(0).get("textDataInDatabaseRecord")).isDisplayed());
	}

	@Then("User clicks on desired database")
	public void user_clicks_on_desired_database(DataTable dataTable) {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.databaseTitle(dt.get(0).get("database Name")).click();
	}

	@Then("User enters data in Text Edit")
	public void user_enters_data_in_text_edit(io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.enterIntxtEditTextAreaAfterclickingOnActionButton(dt.get(0).get("textData"));
	}

	@When("User enters the below details for creating TextEdit type column with Email subtype")
	public void user_enters_the_below_details_for_creating_text_edit_type_column_with_email_subtype(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.enterInHint((dt.get(0).get("hint")));
		databasePageObjects.enterInDefaultValueTextArea(dt.get(0).get("defaultValue"));
		databasePageObjects.clickOnChooseFieldTypeDropdown();
		databasePageObjects.clickOnEmailInChooseFieldTypeDropdown();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(0).get("infoText"));
		databasePageObjects.enterInHelpTextField(dt.get(0).get("helpText"));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnDataValidation();
//	    databasePageObjects.clickOnAddButtonInDataValidation();
//	    databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
//	    databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();

	}

	@When("User enters the below details for creating TextEdit type column with Mobile subtype")
	public void user_enters_the_below_details_for_creating_text_edit_type_column_with_mobile_subtype(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.enterInHint((dt.get(0).get("hint")));
		databasePageObjects.enterInDefaultValueTextArea(dt.get(0).get("defaultValue"));
		databasePageObjects.clickOnChooseFieldTypeDropdown();
		databasePageObjects.clickOnMobileInChooseFieldTypeDropdown();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(0).get("infoText"));
		databasePageObjects.enterInHelpTextField(dt.get(0).get("helpText"));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnDataValidation();
//	    databasePageObjects.clickOnAddButtonInDataValidation();
//	    databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
//	    databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating TextEdit type column with Number subtype")
	public void user_enters_the_below_details_for_creating_text_edit_type_column_with_number_subtype(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.enterInHint((dt.get(0).get("hint")));
		databasePageObjects.enterInDefaultValueTextArea(dt.get(0).get("defaultValue"));
		databasePageObjects.clickOnChooseFieldTypeDropdown();
		databasePageObjects.clickOnNumberInChooseFieldTypeDropdown();
		databasePageObjects.enterInminNumberBoxInNumber(dt.get(0).get("minimumValue"));
		databasePageObjects.enterInmaxNumberBoxInNumber(dt.get(0).get("maximumValue"));
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(0).get("infoText"));
		databasePageObjects.enterInHelpTextField(dt.get(0).get("helpText"));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnDataValidation();
//	    databasePageObjects.clickOnAddButtonInDataValidation();
//	    databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
//	    databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating TextEdit type column with Decimal subtype")
	public void user_enters_the_below_details_for_creating_text_edit_type_column_with_decimal_subtype(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.enterInHint((dt.get(0).get("hint")));
		databasePageObjects.enterInDefaultValueTextArea(dt.get(0).get("defaultValue"));
		databasePageObjects.clickOnChooseFieldTypeDropdown();
		databasePageObjects.clickOnDecimalInChooseFieldTypeDropdown();
		databasePageObjects.enterInminNumberBoxInNumber(dt.get(0).get("minimumValue"));
		databasePageObjects.enterInmaxNumberBoxInNumber(dt.get(0).get("maximumValue"));
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(0).get("infoText"));
		databasePageObjects.enterInHelpTextField(dt.get(0).get("helpText"));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnDataValidation();
//	    databasePageObjects.clickOnAddButtonInDataValidation();
//	    databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
//	    databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating TextEdit type column with Otp subtype")
	public void user_enters_the_below_details_for_creating_text_edit_type_column_with_otp_subtype(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.enterInHint((dt.get(0).get("hint")));
		databasePageObjects.enterInDefaultValueTextArea(dt.get(0).get("defaultValue"));
		databasePageObjects.clickOnChooseFieldTypeDropdown();
		databasePageObjects.clickOnOtpInChooseFieldTypeDropdown();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnShowAsButtonCheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(0).get("infoText"));
		databasePageObjects.enterInHelpTextField(dt.get(0).get("helpText"));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnDataValidation();
//	    databasePageObjects.clickOnAddButtonInDataValidation();
//	    databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
//	    databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User clicks on database name")
	public void user_clicks_on_database_name() {
		databasePageObjects.databaseTitle(dbname).click();
	}

	@When("User enters the below details for creating RadioGroup type column with dependent fields")
	public void user_enters_the_below_details_for_creating_radio_group_type_column_with_dependent_fields(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("dependentField1"));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnRadioGroup();
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(0).get("state1_India"));
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(0).get("state2_India"));
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		// databasePageObjects.clickOndoneButton();
		globalPageObjects.clickOnElementByVisibleText("Done");
		enterdatapoints.clickOnFieldButton2();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("dependentField2"));
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(0).get("state1_USA"));
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(0).get("state2_USA"));
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();

		enterdatapoints.clickOnFieldButton2();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnRadioGroup();
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(0).get("country1"));
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(0).get("country2"));
		databasePageObjects.clickOnTriage();
		databasePageObjects.clickOnAddButtonInTriage();
		databasePageObjects.clickOnSelectValueDropdownInTriage();
		databasePageObjects.optionBasedOnVisibileTextInSelectValueDropdownInTriage(dt.get(0).get("country1")).click();
		// databasePageObjects.clickOnSelectTypeDropdownInTriage();
		databasePageObjects.enterInSelectTypeTextboxInTriage(dt.get(0).get("Select type value1"));
		databasePageObjects.clickOnSelectFieldDropdownInTriage();
		databasePageObjects.optionBasedOnVisibleTextInSelectFieldDropdownInTriage(dt.get(0).get("dependentField1"))
				.click();

		databasePageObjects.clickOnAddButtonInTriage();
		databasePageObjects.clickOnSelectValueDropdownInTriage();
		databasePageObjects.optionBasedOnVisibileTextInSelectValueDropdownInTriage(dt.get(0).get("country2")).click();
		// databasePageObjects.clickOnSelectTypeDropdownInTriage();
		databasePageObjects.enterInSelectTypeTextboxInTriage(dt.get(0).get("Select type value1"));
		databasePageObjects.clickOnSelectFieldDropdownInTriage();
		databasePageObjects.optionBasedOnVisibleTextInSelectFieldDropdownInTriage(dt.get(0).get("dependentField2"))
				.click();

		databasePageObjects.clickOnAddButtonInTriage();
		databasePageObjects.clickOnSelectValueDropdownInTriage();
		databasePageObjects.optionBasedOnVisibileTextInSelectValueDropdownInTriage(dt.get(0).get("country1")).click();
		// databasePageObjects.clickOnSelectTypeDropdownInTriage();
		databasePageObjects.enterInSelectTypeTextboxInTriage(dt.get(0).get("Select type value2"));
		databasePageObjects.clickOnSelectFieldDropdownInTriage();
		databasePageObjects.optionBasedOnVisibleTextInSelectFieldDropdownInTriage(dt.get(0).get("dependentField1"))
				.click();

		databasePageObjects.clickOnAddButtonInTriage();
		databasePageObjects.clickOnSelectValueDropdownInTriage();
		databasePageObjects.optionBasedOnVisibileTextInSelectValueDropdownInTriage(dt.get(0).get("country2")).click();
		// databasePageObjects.clickOnSelectTypeDropdownInTriage();
		databasePageObjects.enterInSelectTypeTextboxInTriage(dt.get(0).get("Select type value2"));
		databasePageObjects.clickOnSelectFieldDropdownInTriage();
		databasePageObjects.optionBasedOnVisibleTextInSelectFieldDropdownInTriage(dt.get(0).get("dependentField1"))
				.click();

		databasePageObjects.clickOnTriage();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User clicks on Radio button based on visible text <text>")
	public void user_clicks_on_radio_button_based_on_visible_text_text(io.cucumber.datatable.DataTable dataTable) {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.radioButtonBasedOnVisibleText(dt.get(0).get("text")).click();
	}

	@Then("User clears Date-timePicker input field")
	public void user_clears_date_time_picker_input_field() {
		util.actionutil.moveToElement(databasePageObjects.dateTimePickerInputAfterClickingAddButton);
		databasePageObjects.clickOnCloseCircle();
	}

	@Then("User clears Dropdown list field")
	public void user_clears_dropdown_list_field() throws InterruptedException {
		util.actionutil.moveToElement(databasePageObjects.dropdownListAfterClickingAddButton);
		// util.actionutil.moveToElement(databasePageObjects.closeCircle);
		databasePageObjects.clickOnCloseCircle2();
		databasePageObjects.clickOnEscapeButtonOnKeyboard();
	}

	@Then("User clears Text Edit field")
	public void user_clears_text_edit_field() {
//		databasePageObjects.textEditInputBox.clear();
//		util.waitUtil.waitExecutionForGivenTime(2);
		Actions actions = new Actions(driver);
		databasePageObjects.textEditInputBox.click();
		actions.keyDown(Keys.CONTROL).sendKeys("a").keyUp(Keys.CONTROL).perform();
		actions.keyDown(Keys.BACK_SPACE).keyUp(Keys.BACK_SPACE).perform();
	}

	@Then("User clicks on checkBox\\(Required)")
	public void user_clicks_on_check_box_required() {
		databasePageObjects.checkboxByLableAfterClickingAddButton("checkbox").click();
	}

	@Then("User clicks on mandatory checkBox")
	public void user_clicks_on_mandatory_check_box() throws InterruptedException {
		databasePageObjects.clickOnCheckBoxInputCheckboxMandatory();
	}

	@Then("User mouse overs on the element")
	public void user_mouse_overs_on_the_element(WebElement ele) {
		util.actionutil.moveToElement(ele);
	}

	@Then("User clears the field")
	public void user_clears_the_field() {
		databasePageObjects.clickOnCloseCircle();
	}

	@Then("User mouse overs on Timepicker input element")
	public void user_mouse_overs_on_timepicker_input_element() {
		util.actionutil.moveToElement(databasePageObjects.selectTime);
	}

	@Then("User clears ShortText input field")
	public void user_clears_short_text_input_field() {
		// databasePageObjects.clearShortTextInputFieldAfterClickingAddButton();
		databasePageObjects.shortTextInputFieldAfterClickingAddButton.click();
		Actions actions = new Actions(driver);
		actions.keyDown(Keys.CONTROL).sendKeys("a").keyUp(Keys.CONTROL).perform();
		actions.keyDown(Keys.BACK_SPACE).keyUp(Keys.BACK_SPACE).perform();
		// util.waitUtil.waitExecutionForGivenTime(1);
	}

	@Then("User clears Email input field")
	public void user_clears_email_input_field() {
//		databasePageObjects.emailInputAfterClickingOnAddButton.clear();
//		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.emailInputAfterClickingOnAddButton.click();
		Actions actions = new Actions(driver);
		actions.keyDown(Keys.CONTROL).sendKeys("a").keyUp(Keys.CONTROL).perform();
		actions.keyDown(Keys.BACK_SPACE).keyUp(Keys.BACK_SPACE).perform();
	}

	@Then("User mouse overs on Datepicker input field")
	public void user_mouse_overs_on_datepicker_input_field() {
		util.actionutil.moveToElement(databasePageObjects.datePickerInputAfterClickingAddButton);
	}

	@Then("User clears text input field")
	public void user_clears_text_input_field() {
		databasePageObjects.phoneInputAfterClickingAddButton.click();
		Actions actions = new Actions(driver);
		actions.keyDown(Keys.CONTROL).sendKeys("a").keyUp(Keys.CONTROL).perform();
		actions.keyDown(Keys.BACK_SPACE).keyUp(Keys.BACK_SPACE).perform();
	}

	@Then("User should see valid error for Phone field")
	public void user_should_see_valid_error_for_phone_field() {
		databasePageObjects.validErrorOfPhoneFieldIsDisplayed();
	}

	@Then("User clears Number input field")
	public void user_clears_phone_input_field() {
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.numberInputAfterClickingOnAddButton.click();
		Actions actions = new Actions(driver);
		actions.keyDown(Keys.CONTROL).sendKeys("a").keyUp(Keys.CONTROL).perform();
		actions.keyDown(Keys.BACK_SPACE).keyUp(Keys.BACK_SPACE).perform();
	}

	@Then("User should see common error message for required fields")
	public void user_should_see_common_error_message_for_required_fields() {
		databasePageObjects.commonErrorMessageForRequiredFieldIsDisplayed();
	}

	@Then("User clears Url input field")
	public void user_clears_url_input_field() {
		databasePageObjects.urlInputAfterClickingAddButton.clear();
	}

	@Then("User should see common error message for Invalid Format in fields")
	public void user_should_see_common_error_message_for_invalid_format_in_fields() {
		databasePageObjects.commonErrorMessageForInvalidFormatsIsDisplayed();
	}

	@Then("User clears TextEdit Email input field")
	public void user_clears_text_edit_email_input_field() {
//		databasePageObjects.textEditInputBox.clear();
//		util.waitUtil.waitExecutionForGivenTime(2);
		Actions actions = new Actions(driver);
		databasePageObjects.textEditInputBox.click();
		actions.keyDown(Keys.CONTROL).sendKeys("a").keyUp(Keys.CONTROL).perform();
		actions.keyDown(Keys.BACK_SPACE).keyUp(Keys.BACK_SPACE).perform();
	}

	@Then("User clears TextEdit Mobile inout field")
	public void user_clears_text_edit_mobile_inout_field() {
		// databasePageObjects.textEditInputBox.clear();
		Actions actions = new Actions(driver);
		databasePageObjects.textEditInputBox.click();
		actions.keyDown(Keys.CONTROL).sendKeys("a").keyUp(Keys.CONTROL).perform();
		actions.keyDown(Keys.BACK_SPACE).keyUp(Keys.BACK_SPACE).perform();
	}

	@When("User enters the below details for creating DropdownList and TextEdit type columns")
	public void user_enters_the_below_details_for_creating_dropdown_list_and_text_edit_type_columns(io.cucumber.datatable.DataTable dataTable) throws Exception {

		List<Map<String, String>> dt = dataTable.asMaps();
		util.waitUtil.WaitForElementToBePresentUpdate(databasePageObjects.fieldLabel, 30);
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("dependentLabel"));
		databasePageObjects.enterInDefaultValueTextArea("0");
		databasePageObjects.clickOndoneButton();
		util.waitUtil.waitExecutionForGivenTime(2);
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnDropdownList();
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(0).get("option1"));
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(0).get("option2"));

		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(0).get("infoText"));
		databasePageObjects.enterInHelpTextField(dt.get(0).get("helpText"));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnTriage();
		databasePageObjects.clickOnAddButtonInTriage();
		databasePageObjects.clickOnSelectValueDropdownInTriage();
		// databasePageObjects.optionByVisibleTextInSelectValueDropdown(dt.get(0).get("option1")).click();
		databasePageObjects.enterInSelectValueTextboxInTriage(dt.get(0).get("option1"));
		// databasePageObjects.clickOnoption2InSelectValueDropdownInTriage();
		// databasePageObjects.clickOnSelectTypeDropdownInTriage();
		databasePageObjects.enterInSelectTypeTextboxInTriage(dt.get(0).get("Select type value1"));// same for Select
																									// type text box
		// databasePageObjects.clickOnhideOptionInSelectTypeDropdownInDependencies();//
		// same in Triage also
		// databasePageObjects.clickOnSelectFieldDropdownInTriage();
		databasePageObjects.enterInSelectFieldTextboxInTriage(dt.get(0).get("dependentLabel"));// same for Select field
																								// text box
		// databasePageObjects.clickOnoption1InSelectFieldDropdownInTriage();

		databasePageObjects.clickOnAddButtonInTriage();
		// databasePageObjects.clickOnSelectValueDropdownInTriage();
		// databasePageObjects.optionByVisibleTextInSelectValueDropdown(dt.get(0).get("option2")).click();
		databasePageObjects.enterInSelectValueTextboxInTriage(dt.get(0).get("option2"));
		// databasePageObjects.clickOnoption2InSelectValueDropdownInTriage();
		// databasePageObjects.clickOnSelectTypeDropdownInTriage();
		databasePageObjects.enterInSelectTypeTextboxInTriage(dt.get(0).get("Select type value2"));// same for Select
																									// type text box
		// databasePageObjects.clickOnhideOptionInSelectTypeDropdownInDependencies();//
		// same in Triage also
		// databasePageObjects.clickOnSelectFieldDropdownInTriage();
		databasePageObjects.enterInSelectFieldTextboxInTriage(dt.get(0).get("dependentLabel"));// same for Select field
																								// text box
		// databasePageObjects.clickOnoption1InSelectFieldDropdownInTriage();
		databasePageObjects.clickOnTriage();
		globalPageObjects.clickOnElementByVisibleText("Done");

	}

	@Then("User fetches the value from TextEdit field")
	public void user_fetches_the_value_from_text_edit_field() {
		TestBase.writeResponse("Deafult Value from TextEdit field: " + databasePageObjects.textEditInputBox.getText());
	}

	@Then("User enters a value in TextEdit field")
	public void user_enters_a_value_in_text_edit_field(DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.textEditInputBox.clear();
		databasePageObjects.enterIntextEditInputBox(dt.get(0).get("value"));
	}

	@Then("User selects the desired option from Dropdownlist input")
	public void user_selects_the_desired_option_from_dropdownlist_input(io.cucumber.datatable.DataTable dataTable) {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.optionByVisibleTextInDropdownlistInput(dt.get(0).get("option")).click();
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@When("User enters the below details for creating Number with Decimal type column")
	public void user_enters_the_below_details_for_creating_number_with_decimal_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("Field Label"));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnNumber();
		databasePageObjects.clickOnChooseNumbersTypeDropdown();
		databasePageObjects.clickOnDecimalInChooseNumbersTypeDropdown();
		databasePageObjects.enterInPrecisionInputInNumber(dt.get(0).get("precision"));
		databasePageObjects.enterInValueNumberBoxInNumber(dt.get(0).get("value"));
		databasePageObjects.enterInminNumberBoxInNumber(dt.get(0).get("Min"));
		databasePageObjects.enterInmaxNumberBoxInNumber(dt.get(0).get("Max"));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(0).get("infoText"));
		databasePageObjects.enterInHelpTextField(dt.get(0).get("helpText"));
		databasePageObjects.clickOnHelpers();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating TextEdit type column for Regex-Defaultvalue")
	public void user_enters_the_below_details_for_creating_text_edit_type_column_for_regex_defaultvalue(io.cucumber.datatable.DataTable dataTable) throws Exception {

		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.enterInDefaultValueTextArea(dt.get(0).get("defaultValue"));
		databasePageObjects.clickOnChooseFieldTypeDropdown();
		databasePageObjects.clickOnTextInChooseFieldTypeDropdown();
		util.waitUtil.waitExecutionForGivenTime(2);
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAddButtonInDataValidation();
		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
		databasePageObjects.clickOnDataValidation();
		globalPageObjects.clickOnElementByVisibleText("Done");
	}

	@When("User enters the below details for creating ShortText type column for Regex-Defaultvalue")
	public void user_enters_the_below_details_for_creating_short_text_type_column_for_regex_defaultvalue(io.cucumber.datatable.DataTable dataTable) throws Exception {

		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("Field Label"));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnShortText();
		databasePageObjects.enterInDefaultValueTextBoxInShortText(dt.get(0).get("defaultValue"));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAddButtonInDataValidation();
		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
		databasePageObjects.clickOnDataValidation();
		globalPageObjects.clickOnElementByVisibleText("Done");
	}

	@When("User enters the below details for creating Email type column for Regex-Defaultvalue")
	public void user_enters_the_below_details_for_creating_email_type_column_for_regex_defaultvalue(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("Field Label"));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnEmail();
		databasePageObjects.enterInDefaultValueTextBoxInEmail(dt.get(0).get("defaultValue"));
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAddButtonInDataValidation();
		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
		databasePageObjects.clickOnDataValidation();
		util.waitUtil.waitExecutionForGivenTime(2);
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating TextEdit type column as Requiredfield")
	public void user_enters_the_below_details_for_creating_text_edit_type_column_as_requiredfield(io.cucumber.datatable.DataTable dataTable) throws Exception {

		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.enterInHint((dt.get(0).get("hint")));
		databasePageObjects.enterInDefaultValueTextArea(dt.get(0).get("defaultValue"));
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnAdvanced();
		// databasePageObjects.clickOndoneButton();
		globalPageObjects.clickOnElementByVisibleText("Done");
	}

	@Then("User clicks on Dropdown list")
	public void user_clicks_on_dropdown_list() throws InterruptedException {
		databasePageObjects.clickOnDropdownListAfterClickingAddButton();
	}

	@Then("User clears number field")
	public void user_clears_number_field() {
		databasePageObjects.numberInputAfterClickingOnAddButton.clear();
	}

	@Then("User should see Missing Value for Required Field error message")
	public void user_should_see_missing_value_for_required_field_error_message() {
		databasePageObjects.missingValueForRequiredFieldErrorMessageIsDispayed();
	}

	@Then("User enters value in Text Edit field sharath")
	public void user_enters_value_in_text_edit_field_sharath() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("User enters value in Text Edit field {string}")
	public void user_enters_value_in_text_edit_field(String string) throws InterruptedException {
		databasePageObjects.textEditInputBox.clear();
		databasePageObjects.enterIntextEditInputBox(string);
	}

	@Then("User clicks on Add button, enters value in Text Edit field <textEditValue> and clicks on Submit button")
	public void user_clicks_on_add_button_enters_value_in_text_edit_field_text_edit_value_and_clicks_on_submit_button(
			io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<Map<String, String>> dt = dataTable.asMaps();
		for (int i = 0; i < dataTable.height() - 1; i++) {
			databasePageObjects.clickOnAddButtonInDatabases();
			util.waitUtil.waitExecutionForGivenTime(1);
			databasePageObjects.textEditInputBox.clear();
			databasePageObjects.enterIntextEditInputBox(dt.get(0).get("textEditValue"));
			enterdatapoints.clickOnSubmitButton();
		}
	}

	@When("User enters the below details for creating RadioGroup type column")
	public void user_enters_the_below_details_for_creating_radio_group_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnRadioGroup();
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(1).get(7));
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(1).get(8));
		databasePageObjects.clickOnChooseDefaultValueDropdownInCofigureForm();
		databasePageObjects.clickOnOption1InChooseDefaultValueDropdown();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(3));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(4));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating CheckBox type column")
	public void user_enters_the_below_details_for_creating_check_box_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnCheckbox();
		databasePageObjects.clickOnDefaultValuecheckbox();
		databasePageObjects.clickOnDefaultValuecheckbox();
		databasePageObjects.clickOnPythonMandatorycheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(3));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(4));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters {string}, {string}, {string} for creating HTMLText type column")
	public void user_enters_for_creating_html_text_type_column(String string, String string2, String string3) throws Exception {

		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnHtmlText();
		databasePageObjects.enterInHtmlTextBox(string);
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(string2);
		databasePageObjects.enterInHelpTextField(string3);
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnAdvanced();
		// databasePageObjects.clickOndoneButton();
		globalPageObjects.clickOnElementByVisibleText("Done");
	}

	@When("User enters the below details for creating DropdownList type column")
	public void user_enters_the_below_details_for_creating_dropdown_list_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnDropdownList();
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(1).get(7));
		databasePageObjects.enterInAddOptionInConfigureForm(dt.get(1).get(8));
		databasePageObjects.clickOnallowAddOptionsCheckboxInDropdownList();
		databasePageObjects.clickOnChooseDefaultValueDropdownInCofigureForm();
		databasePageObjects.clickOnOption1InChooseDefaultValueDropdown();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(3));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(4));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User creates a Datepicker field")
	public void user_creates_a_datepicker_field_and_makes_an_entry(DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnDatePicker();
		databasePageObjects.clickOnChooseDateFormatDropdownInDatePicker();
		databasePageObjects.clickOnoptionDDMMYYYYInChooseDateFormatDropdownInDatePicker();
		databasePageObjects.clickOndoneButton();
	}

	@Then("User creates database and creates a Form\\/Database Search field")
	public void user_creates_database_and_creates_a_form_database_search_field(DataTable dataTable) throws Exception {
		List<Map<String, String>> dt = dataTable.asMaps();
		createdatabase.ClickOnCretaeDatabase();
		sdf = new SimpleDateFormat("MM");
		mon = sdf.format(new Date());
		sdf = new SimpleDateFormat("dd");
		dat = sdf.format(new Date());
		globalPageObjects.enterTextByPlaceHolder("Enter database name", dt.get(0).get("dbName") + mon + dat);
		// createdatabase.clickOnNextButton();
		// util.waitUtil.waitExecutionForGivenTime(2);
		createdatabase.clickOnNextButton();
		createdatabase.clickOnNextButton2();
		createdatabase.databaseforform();
		globalPageObjects.clickOnButtonByVisibleText("Next");
		createdatabase.clickOnCreateButton();
		createdatabase.formCreatedSuccessfully();
		globalPageObjects.refreshPage();
		util.waitUtil.waitExecutionForGivenTime(4);

		databasePageObjects.enterInSearchBoxInDatabases(dt.get(0).get("dbName") + mon + dat);
		databasePageObjects.databaseTitle(dt.get(0).get("dbName") + mon + dat).click();
		globalPageObjects.refreshPage();
		util.waitUtil.waitExecutionForGivenTime(4);
		enterdatapoints.clickOnEditLogo1();
		enterdatapoints.clickOnEditColumns();
		util.waitUtil.waitExecutionForGivenTime(2);
		enterdatapoints.clickOnNameTextBox();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("fieldLabel"));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnForm_DatabaseSearch();
		globalPageObjects.clickOndownarrowByVisibleText("Choose Form");
		util.waitUtil.waitExecutionForGivenTime(1);
		globalPageObjects.clickOnElementByVisibleTextInDropdown(dbname);
		globalPageObjects.clickOndownarrowByVisibleText("Search Field");
		globalPageObjects.clickOnElementByVisibleTextInDropdown("datePicker");
		globalPageObjects.clickOndownarrowByVisibleText("Select Field");
		util.waitUtil.waitExecutionForGivenTime(1);
		globalPageObjects.clickOnElementByVisibleTextInDropdown("datePicker");
		globalPageObjects.clickOndownarrowByVisibleText("Display Field");
		util.waitUtil.waitExecutionForGivenTime(1);
		globalPageObjects.clickOnElementByVisibleTextInDropdown("datePicker");
		databasePageObjects.clickOndoneButton();
	}

	@Then("User enters database name in search box from datatable")
	public void user_enters_database_name_in_search_box_from_datatable(DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clearSearchBoxInDatabases();
		databasePageObjects.enterInSearchBoxInDatabases(dt.get(0).get("dbName") + mon + dat);
	}

	@Then("User clicks on database name from datatable")
	public void user_clicks_on_database_name_from_datatable(DataTable dataTable) {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.databaseTitle(dt.get(0).get("dbName") + mon + dat).click();
	}

	@Then("User verifies the date format")
	public void user_verifies_the_date_format() throws InterruptedException {
		databasePageObjects.clickOnForm_DatabaseSearchAfterClickingAddButton();
		globalPageObjects.clickOnElementByVisibleTextInDropdown("01-01-2024");
		date2 = databasePageObjects.getDropdownOptionTextInFormDatabaseSearch();
		TestBase.writeResponse("Date formats are: " + date1 + " , " + date2);
		Assert.assertEquals(date1, date2);
	}

	@When("User gets Autonumber value from the Entry before deleting")
	public void user_gets_autonumber_value_from_the_entry_before_deleting() throws InterruptedException {
		autonumberValue1 = databasePageObjects.getTextFromCellInDatabaseForAutonumberEntry();
		TestBase.writeResponse("Autonumber value before deleting: " + autonumberValue1);
	}

	@When("User clicks on checkbox to select an entry")
	public void user_clicks_on_checkbox_to_select_an_entry() throws InterruptedException {
		databasePageObjects.clickOnCheckboxForEntryInDatabase();
	}

	@Then("User clicks on Delete icon")
	public void user_clicks_on_delete_icon() throws InterruptedException {
		databasePageObjects.clickOnDeleteButtonInDatabase();
	}

	@Then("User compares Autonumber entries")
	public void user_compares_autonumber_entries() {
		// Assert.assertTrue((Integer.parseInt(autonumberValue2))>(Integer.parseInt(autonumberValue1)+1));
		Assert.assertTrue((Integer.parseInt(autonumberValue2)) == (Integer.parseInt(autonumberValue1) + 1));
		TestBase.writeResponse("Autonumber entry after deleting is greater than before deleting " + autonumberValue2
				+ " > " + autonumberValue1);
	}

	@Then("User gets Autonumber value from the Entry after deleting")
	public void user_gets_autonumber_value_from_the_entry_after_deleting() throws InterruptedException {
		autonumberValue2 = databasePageObjects.getTextFromCellInDatabaseForAutonumberEntry();
		TestBase.writeResponse("Autonumber value after deleting: " + autonumberValue2);
	}

	@When("User enters the below details for creating CheckBox type column by selecting Bot in Data validation")
	public void user_enters_the_below_details_for_creating_check_box_type_column_by_selecting_bot_in_data_validation(io.cucumber.datatable.DataTable dataTable) throws Exception {

		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnCheckbox();
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAddButtonInDataValidation();
		globalPageObjects.clickOndownarrowByVisibleText("Validation Type");
		globalPageObjects.clickOnElementByVisibleTextInDropdown("Trigger");
		globalPageObjects.clickOndownarrowByVisibleText("Choose Automation");
		globalPageObjects.clickOnVisibleTextUsingNormaliseSpace("testbot");
		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		util.actionutil.moveToElement(databasePageObjects.doneButtonInConfigureForm);
		// elementId=globalPageObjects.getTextFromInputFieldByLabel("Element ID");
		WebElement eleId = driver.findElement(By.xpath("//*[contains(text(),'Element ID')]/../../..//input"));
		eleId.click();
		eleId.sendKeys(Keys.CONTROL + "a");
		// eleId.sendKeys("A");
		eleId.sendKeys(Keys.CONTROL + "c");
		// eleId.sendKeys("C");

		TestBase.writeResponse("Element ID is: " + elementId);
		databasePageObjects.clickOndoneButton();
	}

	@Then("User fetches the message from Prevalidation bot")
	public void user_fetches_the_message_from_prevalidation_bot() {
		TestBase.writeResponse(
				"Error message by PreValidation Bot is: " + databasePageObjects.getErrorMessageByPrevalidationBot());
	}

	@Then("User clicks on edit icon beside 1st row in Database")
	public void user_clicks_on_edit_icon_beside_1st_row_in_database() throws InterruptedException {
		databasePageObjects.clickOnEditIconForRow1InDatabase();
	}

	@Then("User removes the uploaded file")
	public void user_removes_the_uploaded_file() throws InterruptedException {
		databasePageObjects.clickOnCloseIconForRemovingFile();
		TestBase.writeResponse("Option is here to remove the uploaded file");
	}

	@Then("User uploads the file by clicking on Upload button {string}")
	public void user_uploads_the_file_by_clicking_on_upload_button(String string,
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps();
		databasePageObjects.clickOnUploadButton(System.getProperty("user.dir") + dt.get(0).get("FilePath"));
	}

	@When("User enters the below details for creating Number type column")
	public void user_enters_the_below_details_for_creating_number_type_column(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnNumber();
		databasePageObjects.enterInValueNumberBoxInNumber(dt.get(1).get(1));
		databasePageObjects.enterInminNumberBoxInNumber(dt.get(1).get(2));
		databasePageObjects.enterInmaxNumberBoxInNumber(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(4));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(5));
		databasePageObjects.clickOnHelpers();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(1).get(6));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(1).get(7));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		// databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();

	}

	@When("User Uploads {string} file")
	public void user_uploads_file(String string) throws Exception {
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
		} else if (string.equals("Image")) {
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

	@Then("User removes the uploaded file Profile Image")
	public void user_removes_the_uploaded_file_profile_image() throws InterruptedException {
		databasePageObjects.clickOnCloseIconForRemovingFileProfileImage();
	}

	@When("User clicks on {string}2")
	public void user_clicks_on_2(String string) {
		databasePageObjects.fileTypeInFileUploadByVisibleText(string).click();
	}

	@When("User enters the below details for creating Container type column-Required")
	public void user_enters_the_below_details_for_creating_container_type_column_required(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOndoneButton();
		util.waitUtil.waitExecutionForGivenTime(1);
//		enterdatapoints.clickOnFieldButton2();
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(1));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnContainer();
		// databasePageObjects.clickOnSelectFieldsDropdownInContainer();
		globalPageObjects.clickOnElementByVisibleText("Select Fields");
		// util.waitUtil.waitForElementVisible(databasePageObjects.optionCheckboxInSelectFieldsDropdownByText(dt.get(1).get(0)));
		databasePageObjects.optionCheckboxInSelectFieldsDropdownByText(dt.get(1).get(0)).click();
		// databasePageObjects.clickOnbodyOfWebPage();
		databasePageObjects.clickOnEscapeButtonOnKeyboard();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(2));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(3));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating Matrix type column-Required")
	public void user_enters_the_below_details_for_creating_matrix_type_column_required(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOndoneButton();
		util.waitUtil.waitExecutionForGivenTime(1);
		// enterdatapoints.clickOnFieldButton2();
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(1));
		databasePageObjects.clickOnTextEditDropdown();
		databasePageObjects.clickOnCheckbox();
		databasePageObjects.clickOndoneButton();
		util.waitUtil.waitExecutionForGivenTime(5);
//		util.actionutil.scrollByAmount(0, 100);
//		util.waitUtil.waitExecutionForGivenTime(1);
		globalPageObjects.clickOnElementByVisibleText("Field");
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(2));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnMatrix();
		databasePageObjects.clickOnSelectFieldsDropdownInContainer();// same for Matrix
		databasePageObjects.optionCheckboxInSelectFieldsDropdownByText(dt.get(1).get(0)).click();
		databasePageObjects.optionCheckboxInSelectFieldsDropdownByText(dt.get(1).get(1)).click();
		// databasePageObjects.clickOnbodyOfWebPage();
		javascript.executeScript("document.elementFromPoint(100, 100).click();");
		databasePageObjects.enterInNoOfColumnsNumberBoxInMatrix(dt.get(1).get(3));
		databasePageObjects.clickOnColorSquareInMatrix();
		databasePageObjects.clickOnRedColorInMatrix();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(4));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(5));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating Location type column-Required")
	public void user_enters_the_below_details_for_creating_location_type_column_required(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnLocation();
		databasePageObjects.clickOnGetLocationOnSubmitCheckbox();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(1));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(2));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating QRBarcode Scanner type column-Required")
	public void user_enters_the_below_details_for_creating_qr_barcode_scanner_type_column_required(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<List<String>> dt = dataTable.asLists();
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(1).get(0));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.clickOnQrBarcodeScanner();
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(1).get(1));
		databasePageObjects.enterInHelpTextField(dt.get(1).get(2));
		databasePageObjects.clickOnHelpers();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User enters the below details for creating ActionButton type column-Required")
	public void user_enters_the_below_details_for_creating_action_button_type_column_required(
			io.cucumber.datatable.DataTable dataTable) throws InterruptedException {
		List<Map<String, String>> dt = dataTable.asMaps(String.class, String.class);
		databasePageObjects.clearFieldLabel();
		databasePageObjects.enterFieldName(dt.get(0).get("Field Label"));
		databasePageObjects.clickOnTextEditDropdown();
		util.waitUtil.waitExecutionForGivenTime(2);
		databasePageObjects.clickOnActionButton();
		databasePageObjects.clickOnActionTypeDropdown();
		databasePageObjects.actionNameInActionTypeDropdown(dt.get(0).get("Action Type")).click();
		databasePageObjects.clickOnChooseFormDropdown();
		util.waitUtil.waitExecutionForGivenTime(1);
		databasePageObjects.databaseInChooseFormDropdown(dt.get(0).get("Choose Form")).click();
		// databasePageObjects.clickOnAddButtonChooseAutoPopulateInputs();
		// databasePageObjects.clickOnChooseFieldDropdown1InChooseAutoPopulateInputs();

		// databasePageObjects.clickOnChooseFieldDropdown2InChooseAutoPopulateInputs();

		databasePageObjects.enterInEnterSuccessMessageTextBox(dt.get(0).get("Success message"));
		databasePageObjects.enterInEnterLoadingMessageTextBox(dt.get(0).get("Loading message"));
		databasePageObjects.enterInEnterErrorMessageTextBox(dt.get(0).get("Error message"));
		databasePageObjects.clickOnShowIconCheckbox();
		databasePageObjects.clickOnOutlineCheckbox();
		databasePageObjects.clickOnIconInActionButton();
		databasePageObjects.clickOnIcon3();
		databasePageObjects.clickOnbodyOfWebPage();
		databasePageObjects.clickOnColorSquareInMatrix();// same in Action button
		databasePageObjects.clickOnRedColorInMatrix();// same in Action button
		databasePageObjects.clickOnHelpers();
		databasePageObjects.enterInInfoTextField(dt.get(0).get("infoText"));
		databasePageObjects.enterInHelpTextField(dt.get(0).get("helpText"));
		databasePageObjects.clickOnHelpers();
//		databasePageObjects.clickOnDataValidation();
//		databasePageObjects.clickOnAddButtonInDataValidation();
//		databasePageObjects.enterInExpressionFieldInDataValidation(dt.get(0).get("regex"));
//		databasePageObjects.enterInErrorMessageFieldInDataValidation(dt.get(0).get("error message"));
//		databasePageObjects.clickOnDataValidation();
		databasePageObjects.clickOnAdvanced();
		databasePageObjects.clickOnRequiredCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnEditableCheckboxInAdvanced();
		databasePageObjects.clickOnAdminOnlyCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnShowLabelCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnEditIfUniqueCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOnHiddenCheckboxInAdvanced();
		databasePageObjects.clickOndoneButton();
	}

	@When("User clicks on Databases from side bar")
	public void user_clicks_on_databases_from_side_bar() throws Exception {
		createdatabase.clickOnDataBases();
	}

}