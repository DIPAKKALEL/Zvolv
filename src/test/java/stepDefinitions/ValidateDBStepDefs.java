package stepDefinitions;

import java.util.List;

import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

import Enums.Databases;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.AddDashboardPage;
import pageObjects.CreateDatabasePageObjects;
import pageObjects.EnterDataPointsofDatabasesPageObjects;
import pageObjects.GenericPageObjects;
import pageObjects.GlobalPageObjects;
import testbase.TestBase;
import utilities.Utilities;

public class ValidateDBStepDefs extends TestBase {

	GenericPageObjects generic = new GenericPageObjects(driver);
	CreateDatabasePageObjects createdatabase = new CreateDatabasePageObjects(driver);
	AddDashboardPage dashboardpageobject = new AddDashboardPage(driver);
	GlobalPageObjects globalpageobjects = new GlobalPageObjects(driver);
	EnterDataPointsofDatabasesPageObjects enterdatapoints = new EnterDataPointsofDatabasesPageObjects(driver);
	GlobalPageObjects globalPageObjects = new GlobalPageObjects(driver);
	Utilities util = new Utilities(driver);

	@When("User clicks on any Zapp")
	@When("User2 Click on any Zapp")
	public void user_click_on_any_zapp() throws Exception {
		createdatabase.clickOnZapp();
	}

	@And("User clicks on Databases on side navigation bar")
	@When("User2 click on databases on side navigation bar")
	public void user2_click_on_databases_on_side_navigation_bar() throws Exception {
		createdatabase.clickOnDataBases();
	}

	@Then("User2 should navigated to databases")
	public void user2_should_navigated_to_databases() {

	}

	/*
	 * @When("User2 click on Serach textbox") public void
	 * user2_click_on_serach_textbox() throws Exception {
	 * createdatabase.ClickOnSearchbar(); }
	 */
	@When("User2 enter the public database name which is created by User")
	public void user2_enter_the_public_database_name_which_is_created_by_user() {
		// createdatabase.enterDatabaseName(dbname);
	}

	@Then("User2 should see the Public database deatails")
	public void user2_should_see_the_public_database_deatails() {

	}

	@Then("User clicks on the database in search results")
	public void user_clicks_on_the_database_in_search_results() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("User clicks on Edit icon")
	public void user_clicks_on_edit_icon() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("User clicks on Edit option")
	public void user_clicks_on_edit_option() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("Change Database Name as <dbName>")
	public void change_database_name_as_db_name(io.cucumber.datatable.DataTable dataTable) {
		// Write code here that turns the phrase above into concrete actions
		// For automatic transformation, change DataTable to one of
		// E, List<E>, List<List<E>>, List<Map<K,V>>, Map<K,V> or
		// Map<K, List<V>>. E,K,V must be a String, Integer, Float,
		// Double, Byte, Short, Long, BigInteger or BigDecimal.
		//
		// For other transformations you can register a DataTableType.
		throw new io.cucumber.java.PendingException();
	}

	@Then("Change Database <description>")
	public void change_database_description(io.cucumber.datatable.DataTable dataTable) {
		// Write code here that turns the phrase above into concrete actions
		// For automatic transformation, change DataTable to one of
		// E, List<E>, List<List<E>>, List<Map<K,V>>, Map<K,V> or
		// Map<K, List<V>>. E,K,V must be a String, Integer, Float,
		// Double, Byte, Short, Long, BigInteger or BigDecimal.
		//
		// For other transformations you can register a DataTableType.
		throw new io.cucumber.java.PendingException();
	}

	@Then("Change Database tag")
	public void change_database_tag() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("Click on Next button")
	public void click_on_next_button() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("Change database Color")
	public void change_database_color() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("Change database avatar")
	public void change_database_avatar() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("Click on Public")
	public void click_on_public() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("Click on Updtae Button in All good? screen")
	public void click_on_updtae_button_in_all_good_screen() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

//Stress Test

	@When("Creating public database for stress with below credentials")
	public void creating_public_database_for_stress_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> db = dataTable.asLists();
		createdatabase.clickOnZapp();
		// createdatabase.clickOnNavBar();
		createdatabase.clickOnDataBases();
		createdatabase.createDataBaseButton();
		createdatabase.ClickOnCretaeDatabase();
		createdatabase.createNewDataBaseForm();
		dashboardpageobject.enteringStressDatabasename(TestBase.StressTestBD());
		createdatabase.enterDescripton(db.get(1).get(1));
		// createdatabase.entertag(db.get(1).get(2));
		createdatabase.clickOnNextButton();
		createdatabase.dataBaseColourform();
		createdatabase.chooseColour();
		createdatabase.chooseAvatar();
		createdatabase.clickOnNextButton2();
		createdatabase.databaseforform();
		if (db.get(1).get(0).equalsIgnoreCase(Databases.PUBLIC.name())) {
			createdatabase.clickOnPublic();
		}
		createdatabase.clickOnNextButton3();
		createdatabase.clickOnCreateButton();
		createdatabase.formCreatedSuccessfully();
	}

	@When("I enter the Stress test created database name")
	public void i_enter_the_stress_test_created_database_name() throws Exception {
		dashboardpageobject.clearSearchBoxInDatabases();
		dashboardpageobject.enterDatabaseName(StressDB);
		dashboardpageobject.clickOnReloadProjects();
	}

	@Then("I Add {int} Text Edit fields in the form")
	public void i_add_text_edit_fields_in_the_form(Integer int1) throws InterruptedException {
		int a = 10;
		for (int i = int1; i <= int1; i++) {
			dashboardpageobject.clickOnField();
			dashboardpageobject.enterTextByPlaceHolder("Field label", "NAME");
			dashboardpageobject.clickonDoneButton();
			TestBase.writeResponse("Text Edit field added " + i);
			util.waitUtil.waitExecutionForGivenTime(1);
			if ((i == a) || ((i == int1) && (int1 < a))) {
				a = a + 10;
				globalPageObjects.clickOnButtonByVisibleText("Save");
				util.waitUtil.waitExecutionForGivenTime(1);
				enterdatapoints.clickOnRetrofitCheckbox();
				globalPageObjects.clickOnElementByVisibleText("OK");
				util.waitUtil.waitExecutionForGivenTime(1);
			}
		}
	}

	@Then("I Add {int} {string} fields in the form")
	public void i_add_fields_in_the_form(Integer int1, String string) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			int a = 10;
			for (int i = int1; i <= int1; i++) {
				dashboardpageobject.clickOnField();
				dashboardpageobject.enterTextByPlaceHolder("Field label", locatorText + "-" + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				dashboardpageobject.SelectCheckBoxFieldLabel(locatorText);
				dashboardpageobject.clickonDoneButton();
				TestBase.writeResponse(locatorText + " field added : " + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				if ((i == a) || ((i == int1) && (int1 < a))) {
					a = a + 10;
					globalPageObjects.clickOnButtonByVisibleText("Save");
					util.waitUtil.waitExecutionForGivenTime(1);
					enterdatapoints.clickOnRetrofitCheckbox();
					globalPageObjects.clickOnElementByVisibleText("OK");
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}
	}

	@Then("I Add {int} {string} fields in the form with {int} dropdown options")
	public void i_add_fields_in_the_form_with_dropdown_options(Integer int1, String string, Integer int2)
			throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			int a = 10;
			for (int i = int1; i <= int1; i++) {
				dashboardpageobject.clickOnField();
				dashboardpageobject.enterTextByPlaceHolder("Field label", locatorText + "-" + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				globalPageObjects.clickOnButtonByVisibleTextJavaScript(locatorText);
				dashboardpageobject.SelectCheckBoxFieldLabel(locatorText);
				dashboardpageobject.EnterDropdownOption(int2);
				dashboardpageobject.clickonDoneButton();
				TestBase.writeResponse(locatorText + " field added : " + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				if ((i == a) || ((i == int1) && (int1 < a))) {
					a = a + 300;
					globalPageObjects.clickOnButtonByVisibleText("Save");
					util.waitUtil.waitExecutionForGivenTime(1);
					enterdatapoints.clickOnRetrofitCheckbox();
					globalPageObjects.clickOnElementByVisibleText("OK");
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}
	}

	@Then("I Add {int} {string} fields in the form with {int} fields in each section")
	public void i_add_fields_in_the_form_with_fields_in_each_section(Integer int1, String string, Integer int2)
			throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			int a = 10;
			for (int i = int1; i <= int1; i++) {
				dashboardpageobject.clickOnField();
				dashboardpageobject.enterTextByPlaceHolder("Field label", locatorText + "-" + i);
				dashboardpageobject.SelectCheckBoxFieldLabel(locatorText);
				dashboardpageobject.SelectFieldsInSection(int2);
				util.waitUtil.waitExecutionForGivenTime(1);
				dashboardpageobject.clickOnbody();
				util.waitUtil.waitExecutionForGivenTime(1);
				dashboardpageobject.clickonDoneButton();
				TestBase.writeResponse(locatorText + " field added : " + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				if ((i == a) || ((i == int1) && (int1 < a))) {
					a = a + 10;
					globalPageObjects.clickOnButtonByVisibleText("Save");
					util.waitUtil.waitExecutionForGivenTime(1);
					enterdatapoints.clickOnRetrofitCheckbox();
					globalPageObjects.clickOnElementByVisibleText("OK");
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}
	}

	@Then("I Add {int} {string} fields in the form with {int} Steps and {int} inner field each Stepper")
	public void i_add_fields_in_the_form_with_steps_and_inner_field_each_stepper(Integer int1, String string,
			Integer int2, Integer int3) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			int a = 10;
			for (int i = int1; i <= int1; i++) {
				dashboardpageobject.clickOnField();
				dashboardpageobject.enterTextByPlaceHolder("Field label", locatorText + "-" + i);
				dashboardpageobject.SelectCheckBoxFieldLabel(locatorText);
				util.waitUtil.waitExecutionForGivenTime(1);
				for (int j = 0; j <= int2; j++) {
					globalPageObjects.clickOnElementByDI("plus");
					util.waitUtil.waitExecutionForGivenTime(1);
					globalPageObjects.clickOnElementByVisibleText("Select Inner Fields");
					dashboardpageobject.SelectInnerFieldsIn(int3);
					util.waitUtil.waitExecutionForGivenTime(1);
					dashboardpageobject.clickOnbody();
					util.waitUtil.waitExecutionForGivenTime(1);
				}
				dashboardpageobject.clickonDoneButton();
				TestBase.writeResponse(locatorText + " field added : " + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				if ((i == a) || ((i == int1) && (int1 < a))) {
					a = a + 10;
					globalPageObjects.clickOnButtonByVisibleText("Save");
					util.waitUtil.waitExecutionForGivenTime(1);
					enterdatapoints.clickOnRetrofitCheckbox();
					globalPageObjects.clickOnElementByVisibleText("OK");
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}
	}

	@Then("I Add {int} {string} fields in the form with {int} inner field each Container")
	public void i_add_fields_in_the_form_with_inner_field_each_container(Integer int1, String string, Integer int2)
			throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			int a = 10;
			for (int i = int1; i <= int1; i++) {
				dashboardpageobject.clickOnField();
				dashboardpageobject.enterTextByPlaceHolder("Field label", locatorText + "-" + i);
				dashboardpageobject.SelectCheckBoxFieldLabel(locatorText);
				util.waitUtil.waitExecutionForGivenTime(1);
				globalPageObjects.clickOnButtonByVisibleText("Select Fields");
				dashboardpageobject.SelectInnerFieldsIn(int2);
				util.waitUtil.waitExecutionForGivenTime(1);
				dashboardpageobject.clickOnbody();
				util.waitUtil.waitExecutionForGivenTime(1);
				dashboardpageobject.clickonDoneButton();
				TestBase.writeResponse(locatorText + " field added : " + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				if ((i == a) || ((i == int1) && (int1 < a))) {
					a = a + 10;
					globalPageObjects.clickOnButtonByVisibleText("Save");
					util.waitUtil.waitExecutionForGivenTime(1);
					enterdatapoints.clickOnRetrofitCheckbox();
					globalPageObjects.clickOnElementByVisibleText("OK");
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}
	}

	@Then("I Add {int} {string} fields {int} value {int} min {int} max and {int} step value in the form")
	public void i_add_fields_value_min_max_and_step_value_in_the_form(Integer int1, String string, Integer int2,
			Integer int3, Integer int4, Integer int5) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			int a = 10;
			for (int i =int1; i <= int1; i++) {
				dashboardpageobject.clickOnField();
				dashboardpageobject.enterTextByPlaceHolder("Field label", locatorText + "-" + i);
				dashboardpageobject.SelectCheckBoxFieldLabel(locatorText);
				util.waitUtil.waitExecutionForGivenTime(1);
				globalPageObjects.clickOnElementByVisibleText("Value");
				globalPageObjects.enterTextByPlaceHolder("Value", "5");
				globalPageObjects.clickOnElementByVisibleText("Min");
				globalPageObjects.enterTextByPlaceHolder("Min", "1");
				globalPageObjects.clickOnElemetByVisibleTextIndex("Max", 1);
				globalPageObjects.enterTextByPlaceHolder("Max", "100");
				globalPageObjects.clickOnElementByVisibleText("Step size");
				globalPageObjects.enterTextByPlaceHolder("Step size", "1");
				dashboardpageobject.clickonDoneButton();
				TestBase.writeResponse(locatorText + " field added : " + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				if ((i == a) || ((i == int1) && (int1 < a))) {
					a = a + 10;
					globalPageObjects.clickOnButtonByVisibleText("Save");
					util.waitUtil.waitExecutionForGivenTime(1);
					enterdatapoints.clickOnRetrofitCheckbox();
					globalPageObjects.clickOnElementByVisibleText("OK");
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}
	}

	@Then("I Add {int} {string} fields with {string} as search form and {string} as field")
	public void i_add_fields_with_as_search_form_and_as_field(Integer int1, String string, String string2,
			String string3) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			int a = 10;
			for (int i = int1; i <= int1; i++) {
				dashboardpageobject.clickOnField();
				dashboardpageobject.enterTextByPlaceHolder("Field label", locatorText + "-" + i);
				dashboardpageobject.SelectCheckBoxFieldLabel(locatorText);
				util.waitUtil.waitExecutionForGivenTime(1);
				globalPageObjects.clickOnElementByVisibleText("Choose Form");
				util.waitUtil.waitExecutionForGivenTime(2);
				Thread.sleep(2000);
				globalPageObjects.clickOnVisibleTextUsingNormaliseSPACE(string2);
			//	globalPageObjects.clickOnElemetByVisibleTextIndex(string2, 4);
				//globalPageObjects.clickOnElementByVisibleTextInDropdown(string2);
				util.waitUtil.waitExecutionForGivenTime(2);
				globalPageObjects.clickOnDropdownByNzPlaceHolderByIndex("Search Field", 1);
				util.waitUtil.waitExecutionForGivenTime(2);
				globalPageObjects.clickOnElementByVisibleTextEqualsJS(string3);
//				globalPageObjects.clickOnElementByVisibleText(string3);
				util.waitUtil.waitExecutionForGivenTime(2);
				globalPageObjects.clickOnDropdownByNzPlaceHolderByIndex("Select Field", 1);
				util.waitUtil.waitExecutionForGivenTime(2);
				globalPageObjects.clickOnElementByVisibleTextEqualsJS(string3);
//				globalPageObjects.clickOnElementByVisibleText(string3);
				util.waitUtil.waitExecutionForGivenTime(2);
				globalPageObjects.clickOnDropdownByNzPlaceHolderByIndex("Display Field", 1);
				util.waitUtil.waitExecutionForGivenTime(2);
				globalPageObjects.clickOnElementByVisibleTextEqualsJS(string3);
//				globalPageObjects.clickOnElementByVisibleText(string3);
				dashboardpageobject.clickonDoneButton();
				TestBase.writeResponse(locatorText + " field added : " + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				if ((i == a) || ((i == int1) && (int1 < a))) {
					a = a + 10;
					globalPageObjects.clickOnButtonByVisibleText("Save");
					util.waitUtil.waitExecutionForGivenTime(1);
					enterdatapoints.clickOnRetrofitCheckbox();
					globalPageObjects.clickOnElementByVisibleText("OK");
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}
	}
	
	@Then("I Add {int} {string} fields in the form with {string} as search form and {string} as field")
	public void i_add_fields_in_the_form_with_as_search_form_and_as_field(Integer int1, String string, String string2, String string3) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			int a = 10;
			for (int i = int1; i <= int1; i++) {
				dashboardpageobject.clickOnField();
				dashboardpageobject.enterTextByPlaceHolder("Field label", locatorText + "-" + i);
				globalPageObjects.clickOnElementByNZPlaceHolder("Field Label");
				globalPageObjects.clickOnElemetByVisibleTextIndex(locatorText, 5);
			//	dashboardpageobject.SelectCheckBoxFieldLabel(locatorText);
				util.waitUtil.waitExecutionForGivenTime(1);
				globalPageObjects.clickOnElementByVisibleText("Choose Form");
				util.waitUtil.waitExecutionForGivenTime(1);
				globalPageObjects.clickOnElemetByVisibleTextIndex(string2, 4);
			//	globalPageObjects.clickOnElementByVisibleText(string2);
				util.waitUtil.waitExecutionForGivenTime(1);
				globalPageObjects.clickOnElementByVisibleText("Choose fields to search");
				globalPageObjects.clickOnElementByVisibleText(string3);
				util.waitUtil.waitExecutionForGivenTime(1);
				Actions actions = new Actions(driver);
				Keys keyEnum = Keys.valueOf("ESCAPE".toUpperCase());
				actions.sendKeys(keyEnum).perform();
				dashboardpageobject.clickonDoneButton();
				TestBase.writeResponse(locatorText + " field added : " + i);
				util.waitUtil.waitExecutionForGivenTime(1);
				if ((i == a) || ((i == int1) && (int1 < a))) {
					a = a + 10;
					globalPageObjects.clickOnButtonByVisibleText("Save");
					util.waitUtil.waitExecutionForGivenTime(1);
					enterdatapoints.clickOnRetrofitCheckbox();
					globalPageObjects.clickOnElementByVisibleText("OK");
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}
	
	}



}
