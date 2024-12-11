package stepDefinitions;

import io.cucumber.java.en.Given;
import pageObjects.MoblieAutomationPageObj;
import testbase.TestBase;

public class MobileAutomationStepDef extends TestBase {

	MoblieAutomationPageObj mobilepagestepdef = new MoblieAutomationPageObj();

	@Given("I have set the envirnment as mobile")
	public void i_have_set_the_envirnment_as_mobile() {
	   System.setProperty("platform", "mobile");
	}
	@SuppressWarnings("static-access")
	@Given("I lauch browser")
	public void i_lauch_browser() {
	//	mobilepagestepdef.BrowserLaunch();
	}
	
	

}