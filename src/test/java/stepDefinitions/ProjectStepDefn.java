package stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import pageObjects.ProjectPageObj;
import testbase.TestBase;
import utilities.Utilities;

public class ProjectStepDefn extends TestBase{
	
	ProjectPageObj projectObj = new ProjectPageObj(driver);
	Utilities util = new Utilities(driver);
	
	
	@Then("I should see status is {string}[{int}]")
	public void i_should_see_status_is(String string, Integer int1) {
	    projectObj.user_should_see_statusOfTask(string, int1);

	}
	

    @Given("I click on {string}[{int}] dropdown by select class")
    public void i_click_on_dropdown_by_select_class(String string , Integer index) {
       projectObj.selectDropdownValueBySelectClass(string, index);
    }
    
    @Then("I see project Created Successfully")
    public void i_see_project_created_successfully() {
      projectObj.user_should_see_projectCreated_Successfully();
    }
}
