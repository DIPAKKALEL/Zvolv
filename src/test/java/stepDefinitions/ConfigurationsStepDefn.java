package stepDefinitions;

import io.cucumber.java.en.Given;
import pageObjects.ConfigurationsPageObj;
import testbase.TestBase;

public class ConfigurationsStepDefn extends TestBase{

	ConfigurationsPageObj configuartion = new ConfigurationsPageObj(driver);
	
	@Given("I click on {string}[{int}] {string} by select class")
    public void i_click_on_dropdown_by_select_class(String string , Integer index) {
		configuartion.selectDropdownValueBySelectClass(string, index);
    }
	
}
