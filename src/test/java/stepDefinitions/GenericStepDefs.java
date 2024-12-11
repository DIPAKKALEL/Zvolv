package stepDefinitions;

import org.openqa.selenium.Keys;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.CreateDatabasePageObjects;
import pageObjects.DashboardPageObjects;
import pageObjects.GenericPageObjects;
import testbase.TestBase;
import utilities.Utilities;

public class GenericStepDefs extends TestBase {

	GenericPageObjects generic = new GenericPageObjects(driver);
	CreateDatabasePageObjects createdatabase = new CreateDatabasePageObjects(driver);
	Utilities util = new Utilities(driver);
	DashboardPageObjects dashboard = new DashboardPageObjects(driver);

	@Given("User navigated to Zvolv application")
	public void user_navigated_to_zvolv_application() throws Exception {
		createdatabase.clickOnZapp();
	}
	@Given("User wait for {int} Seconds")
	public void user_wait_for_seconds(Integer int1) {
		util.waitUtil.waitExecutionForGivenTime(int1);
	}
	@Given("I wait for {int} Seconds")
	public void i_wait_for_seconds(Integer int1) {
		util.waitUtil.waitExecutionForGivenTime(int1);
	}
	@Given("User refresh the page")
	public void user_refresh_the_page() {
		driver.navigate().refresh();
	}
	@Given("I refresh the page")
	public void i_refresh_the_page() {
		driver.navigate().refresh();
	}
	@When("User click on {string}")
	public void user_click_on(String string) {
		generic.clickByVisibleTextContains(string);
	}
	@When("User click on {string} icon")
	public void user_click_on_icon(String string) {
		generic.clickonIcons(string);
	}
	@When("User enter {string} as {string}")
	public void user_enter_as(String string, String string2) {
		generic.enterTextUsingPlaceHolder1(string, string2);
	}
	@Given("User click on {string} dropdown")
	public void user_click_on_dropdown(String string) {
		generic.clickOnDropdownUsingLabel(string); 
	}
	@Given("User click on {string} from dropdown")
	public void user_click_on_from_dropdown(String string) {
		generic.clickByVisibleTextSpan(string);
	}
	@Given("User click on Tab On KeyBoard")
	public void user_click_on_tab_on_key_board() {
		util.actionutil.TAB();
	}
	@Given("User click on Body")
	public void user_click_on_body() {
		generic.clickOnBody();
	}
	@Given("I click on Body")
	public void i_click_on_body() {
		generic.clickOnBody();
	}
	
	@Given("I click on BodyJS")
	public void i_click_on_bodyjs() {
		generic.clickOnBodyJS();
	}
	@Then("I click on Body_1")
	public void i_click_on_body_1() {
	   generic.clickOnBody_1();
	  
	}
	@Given("User click on {string} button")
	public void user_click_on_button(String string) {
		generic.clickOnButtonUsingVisibleText(string);
	}
	@Then("User should see the tooltip as {string}")
	public void user_should_see_the_tooltip_as(String string) throws InterruptedException {
		dashboard.getToolTipMessage(string);
	}
	@When("User click on {string} symbol")
	public void user_click_on_symbol(String string) {
		generic.clickOnNzTypeSymbols(string);
	}
	@Then("User should see Data Table Title as {string}")
	public void user_should_see_data_table_title_as(String string) {
		dashboard.getDataTableTitle();
	}
	@When("User enter {string} input as {string}")
	public void user_enter_input_as(String string, String string2) {
	  generic.enterTextUsinglabel(string, string2);
	}
	@When("User click on {string} checkbox")
	public void user_click_on_checkbox(String string) {
	   generic.clickOnChcekBoxUsingVisibleText(string);
	}
	@When("User click on {string} dropdown from label")
	public void user_click_on_dropdown_from_label(String string) {
	   generic.clickOnDropDownFromLabel(string);
	}
	
	@When("User click on the {string} button")
	public void user_click_on_the_button(String string) {
	   generic.clickOnButtonUsingVisibleTextSpace(string);
	}
	@When("User click on {string} option")
	public void user_click_on_option(String string) {
	   generic.clickByVisibleTextSpaces(string);
	}
	@When("User click on {string} [{int}] symbol")
	public void user_click_on_symbol(String string, Integer int1) {
	   generic.clickOnNzTypeSymbolsUsingIndex(string, int1);
	}


}
