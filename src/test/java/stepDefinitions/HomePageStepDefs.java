package stepDefinitions;

import io.cucumber.java.en.Then;
import pageObjects.HomePage;
import testbase.TestBase;

public class HomePageStepDefs extends TestBase{
	
	HomePage homePage=new HomePage(driver);

	@Then("User searches for {string} Zapp")
	public void user_searches_for_zapp(String string) {
		homePage.enterInzappSearchBox(string);
	}
	@Then("User clicks on {string} Zapp")
	public void user_clicks_on_zapp(String string) {
		homePage.zappName(string).click();
	}

}
