package stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import junit.framework.Test;
import pageObjects.jfl_uat_PageObjects;
import testbase.TestBase;

public class jfl_uat_StepDefs extends TestBase {

	jfl_uat_PageObjects jfl = new jfl_uat_PageObjects(driver);

	@Given("I navigate to {string} web application")
	public void i_navigate_to_web_application(String string) {
		driver.get(CONFIG.getProperty(string));
	}

	@When("I click on Onboard Candidate button")
	public void i_click_on_onboard_candidate_button() {
		jfl.clickOnButtonOnjfl_uat();
	}
	@When("I get Candidate Name from Database")
	public void i_get_candidate_name_from_database() {
		jfl.nameOfCandidate();
	}
	@When("I get Name from Database")
	public void i_get_name_from_database() {
		jfl.NameOnJfl_UatDatabase();
	}
	@When("I get History from Database")
	public void i_get_history_from_database() {
		jfl.HistoryOnJfl_UatDatabase();
	}
	@When("I enter Name of the Candidate as {string}")
	public void i_enter_name_of_the_candidate_as(String string) {
		jfl.enterNameOfCandidate(string);
	}

	@Given("I Validate jfl-uat entries on Database")
	public void i_validate_jfl_uat_entries_on_database() throws Exception {
		jfl.getCandidateID();
		String[] splitText = jfl.CandidateID.split("-");
		String Prefix = splitText[0];
		String Suffix = splitText[1];
		TestBase.writeResponse(Prefix);
		TestBase.writeResponse(Suffix);
		int num = Integer.parseInt(Suffix); 
		System.out.println(num);
		for(int i= 1; i<=100; i++) {
			String ID = String.valueOf(num); 
			jfl.getName(ID);
			jfl.getHistory(ID);
			num++;
		}
	}
}
