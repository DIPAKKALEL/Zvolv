package stepDefinitions;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.CreateDatabasePageObjects;
import testbase.TestBase;

public class ConverDBStepDefs extends TestBase {
	
	//ConvertDBPageObjects convertdb = new ConvertDBPageObjects(driver);
	CreateDatabasePageObjects createdatabase = new CreateDatabasePageObjects(driver);
	
	/*@When("User click on searchbox")
	public void user_click_on_searchbox() throws Exception {
		createdatabase.ClickOnSearchbar();
	}
	@When("user enter public database name")
	public void user_enter_public_database_name() throws Exception {
		createdatabase.enterDatabaseName(dbname);
	}
	@When("User click on Public database")
	public void user_click_on_public_database() throws Exception {
		convertdb.goToDatabase();
	}
	@Then("User navigate to Public database page")
	public void user_navigate_to_public_database_page() {
		
	}
	@When("User click on edit icon dropdown")
	public void user_click_on_edit_icon_dropdown() {
		convertdb.clickOnEditLogo1();
	}
	@When("User click on edit option")
	public void user_click_on_edit_option() {
		convertdb.clickOnEdit();
	}
	@Then("User should see the public database details")
	public void user_should_see_the_public_database_details() {
	   
	}
	@When("User Change the description as {string}")
	public void user_change_the_description_as(String string) {
		convertdb.enterDescripton(string);
	}
	@When("click on Nextbutton")
	public void click_on_nextbutton() {
		convertdb.clickOnNextButton();
	}
	@Then("User should navigate to Database color or avatar form")
	public void user_should_navigate_to_database_color_or_avatar_form() {
	   
	}
	@When("User click on nextbutton on color or avatar page")
	public void user_click_on_nextbutton_on_color_or_avatar_page() {
		convertdb.clickOnNextButton2();
	}
	@When("User click on Private")
	public void user_click_on_private() {
		convertdb.choosePrivate();
	}*/

}
