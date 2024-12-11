package stepDefinitions;


import org.openqa.selenium.By;


import org.openqa.selenium.Keys;

import io.cucumber.java.en.Then;
import pageObjects.BuilderPageObj;
import testbase.TestBase;
import utilities.Utilities;

public class BuilderPageStepDefs extends TestBase{
//	BuilderPage builderPage=new BuilderPage(driver);

	BuilderPageObj builderPage=new BuilderPageObj(driver); 
	Utilities util = new Utilities(driver);
	

	@Then("User clicks on Builder icon in sidebar")
	public void user_clicks_on_builder_icon_in_sidebar() {
	    builderPage.clickOnBuilderIconInSidebar();
	}
//	@Then("User clicks on {string} automation bot in Builder Automations")
//	public void user_clicks_on_automation_bot_in_builder_automations(String string) {
//	   builderPage.automationBotByTitle("testbot").click();
//	}
	@Then("User clicks on Save button in Builder Automations")
	public void user_clicks_on_save_button_in_builder_automations() {
	    builderPage.clickOnSaveButtonInBuilderAutomations();
	}
	@Then("User clicks on close icon at top right in Builder Automations")
	public void user_clicks_on_close_icon_at_top_right_in_builder_automations() {
	    builderPage.clickOnCloseButtonInBuilderAutomations();
	}


	@Then("User clicks on {string} automation bot in Builder Automations")
	public void user_clicks_on_automation_bot_in_builder_automations(String string) {
		//driver.findElement(By.xpath("//body")).click();
		util.actionutil.moveToElement(builderPage.automationBotByTitle(string));
		builderPage.automationBotByTitle(string).click();
	}
	
	@Then("User pastes Element ID in Programme editor in Builder Automations")
	public void user_pastes_element_id_in_programme_editor_in_builder_automations() {
	    builderPage.eleIdInProgramme.sendKeys(Keys.CONTROL+"v");
	    //builderPage.eleIdInProgramme.sendKeys("V");
	}
	
	
	@Then("Your integration is saved successfuly")
	public void your_integration_is_saved_successfuly() {
	    builderPage.user_should_see_Integration_SaveSuccessfully();
	    ;
	}
	
	@Then("I see workflow created successfully")
	public void i_see_workflow_created_successfully() {
	   builderPage.user_should_see_workflow_created_successfully(); 
	}
	
	
    @Then("I see Api integration created successfully")
    public void i_see_api_integration_created_successfully() {
		builderPage.user_should_see_API_Integration_created_successfully();	    
	}
    
  

//>>>>>>> rohit
}
