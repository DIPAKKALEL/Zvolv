package stepDefinitions;

import java.util.List;

import Enums.Databases;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.CreateDatabasePageObjects;
import pageObjects.GenericPageObjects;
import pageObjects.GlobalPageObjects;
import pageObjects.LoginThroughWorkspacePageObj;
import testbase.TestBase;
import utilities.Utilities;

public class CreateDBStepDefs extends TestBase {

	GenericPageObjects generic = new GenericPageObjects(driver);
	GlobalPageObjects globalPageObjects = new GlobalPageObjects(driver);
	CreateDatabasePageObjects createdatabase = new CreateDatabasePageObjects(driver);
	LoginThroughWorkspacePageObj loginbyworkspace = new LoginThroughWorkspacePageObj(driver);
	Utilities util = new Utilities(driver);

	@Given("login into the zvolv application with below credentials")
	public void login_into_the_zvolv_application_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> dt = dataTable.asLists();

		driver.get(CONFIG.getProperty("TEST_URL1"));
//		loginbyworkspace.clickOnFindYourWorkspace();
//		loginbyworkspace.enteringWorkSpaceURL(dt.get(0).get(0));
//		loginbyworkspace.clickOnContinueButton();
		loginbyworkspace.enterEmailOrPhoneNumber(dt.get(0).get(1));
		loginbyworkspace.enterPassword(dt.get(0).get(2));
		loginbyworkspace.clickOnLoginButton();
	}

	@When("Logged in with Valid credentials HomePage of the application will open {string} text will be visible")
	public void logged_in_with_valid_credentials_home_page_of_the_application_will_open_text_will_be_visible(String string) {
		loginbyworkspace.Zapps_Text(string);
	    
	}




	@When("User gets logged out after clicking on the logout Red button")
	public void user_gets_logged_out_after_clicking_on_the_logout_red_button() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("User should navigate to the login page")
	public void user_should_navigate_to_the_login_page() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Given("login into the test server application with below credentials")
	public void login_into_the_test_server_application_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> dt = dataTable.asLists();

		driver.get(CONFIG.getProperty("TEST_URL2"));
//		loginbyworkspace.clickOnFindYourWorkspace();
//		loginbyworkspace.enteringWorkSpaceURL(dt.get(0).get(0));
//		loginbyworkspace.clickOnContinueButton();
		loginbyworkspace.enterEmailOrPhoneNumber(dt.get(0).get(1));
		loginbyworkspace.enterPassword(dt.get(0).get(2));
		loginbyworkspace.clickOnLoginButton();
	}

	@When("Creating public database with below credentials")
	public void creating_public_database_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> db = dataTable.asLists();
		createdatabase.clickOnZapp();
		// createdatabase.clickOnNavBar();
		createdatabase.clickOnDataBases();
		createdatabase.createDataBaseButton();
		createdatabase.ClickOnCretaeDatabase();
		createdatabase.createNewDataBaseForm();
		createdatabase.enteringDatabasename("dft-auto-");
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

	@When("I enter Database name")
	public void i_enter_database_name() throws Exception {
		createdatabase.enteringDatabasename(TestBase.getDbname());
	}

	@When("Creating private database with below credentials")
	public void creating_private_database_with_below_credentials(io.cucumber.datatable.DataTable dataTable)
			throws Exception {
		List<List<String>> db = dataTable.asLists();
		createdatabase.clickOnZapp();
		createdatabase.clickOnDataBases();
		createdatabase.createDataBaseButton();
		createdatabase.ClickOnCretaeDatabase();
		createdatabase.createNewDataBaseForm();
		createdatabase.enteringDatabasename(TestBase.getDbname());
		createdatabase.enterDescripton(db.get(1).get(1));
		createdatabase.entertag(db.get(1).get(2));
		createdatabase.clickOnNextButton();
		createdatabase.dataBaseColourform();
		createdatabase.chooseColour();
		createdatabase.chooseAvatar();
		createdatabase.clickOnNextButton2();
		createdatabase.databaseforform();
		if (db.get(2).get(0).equalsIgnoreCase(Databases.PUBLIC.name())) {
			createdatabase.clickOnPublic();
		}

		createdatabase.clickOnNextButton3();
		createdatabase.clickOnCreateButton();
		createdatabase.formCreatedSuccessfully();

	}

	@When("User click on user avatar")
	public void user_click_on_user_avatar() {
		createdatabase.clickOnUserAvatar();
	}

	@When("User click on login button")
	public void user_click_on_login_button() {
		createdatabase.clickOnLogout();
	}

	@Then("User logout Successfully")
	public void user_logout_successfully() {
		TestBase.writeResponse("User logout Successfully");
	}

	/*
	 * @Then("User should see page title as {string}") public void
	 * user_should_see_page_title_as(String expPageTitle) { String actTitle =
	 * driver.getTitle();
	 * TestBase.writeResponse("Expected web Page Title == "+expPageTitle);
	 * TestBase.writeResponse("Actual web Page Title == "+actTitle);
	 * assertEquals(expPageTitle, actTitle); }
	 * 
	 * @Then("User should see zvolv login page") public void
	 * user_should_see_zvolv_login_page() { boolean email =
	 * loginbyworkspace.isEmailOrPhoneNumberTextBoxDisplayed(); boolean password =
	 * loginbyworkspace.isPasswordTextBoxDisplayed();
	 * TestBase.writeResponse("Is Email Or Phone Number Text Box Displayed == "
	 * +email);
	 * TestBase.writeResponse("Is Password Text Box Displayed == "+password); }
	 * 
	 * @Then("User should see login page title as {string}") public void
	 * user_should_see_login_page_title_as(String exploginPageTitle) { String
	 * actloginTitle = driver.getTitle();
	 * TestBase.writeResponse("Expected login Page Title == "+exploginPageTitle);
	 * TestBase.writeResponse("Actual login Page Title == "+actloginTitle);
	 * assertEquals(exploginPageTitle, actloginTitle); }
	 * 
	 * @Then("User see user avatar") public void User_see_user_avatar() { boolean
	 * userAvatar = loginbyworkspace.isUserAvatarDisplayed();
	 * TestBase.writeResponse("Is User Avatar Displayed == " + userAvatar);
	 * assertTrue(userAvatar);
	 * 
	 * }
	 */
	
	@When("Creating public old database with below credentials")
	public void creating_public_old_database_with_below_credentials(io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> db = dataTable.asLists();
		createdatabase.clickOnZapp();
		// createdatabase.clickOnNavBar();
		createdatabase.clickOnDataBases();
		createdatabase.createDataBaseButton();
		createdatabase.ClickOnCretaeDatabase();
		createdatabase.createNewDataBaseForm();
		createdatabase.enteringDatabasename("dft-auto-");
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
		globalPageObjects.clickOnElementByDI("down");
		globalPageObjects.clickOnElementByVisibleText("Legacy Form");
		Thread.sleep(1000);
		generic.clickOnBody();
		Thread.sleep(1000);
		createdatabase.clickOnCreateButton();
	//	createdatabase.formCreatedSuccessfully();
	}
	
	
	
}
