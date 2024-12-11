package stepDefinitions;

import java.util.List;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.CreateDatabasePageObjects;
import pageObjects.DashboardPageObjects;
import testbase.TestBase;
import utilities.Utilities;

public class DashBoardStepDefs extends TestBase {

	CreateDatabasePageObjects createdatabase = new CreateDatabasePageObjects(driver);
	Utilities util = new Utilities(driver);
	DashboardPageObjects dashboard = new DashboardPageObjects(driver);

	@Then("I enter Database name on {string}")
	public void i_enter_database_name_on(String string) {
		dashboard.enterDBName(string);
	}

	@Then("I enter dashboard name")
	public void i_enter_dashboard_name() throws Exception {
		dashboard.enterDashboardName(TestBase.getDashBoardName());
	}

	@Then("I click on dashboard")
	public void i_click_on_dashboard() {
		dashboard.clickOnDashBoard();
	}

	@Then("I click on Administration")
	public void i_click_on_administration() {
		dashboard.clickOnAdministration();
	}

	@Then("I click on avatar")
	public void i_click_on_avatar() {
		dashboard.clickOnAvatar();
	}

	@Then("I click on admin avatar")
	public void i_click_on_admin_avatar() {
		dashboard.clickOnAdminAvatar();
	}

	@Then("I take Screenshot")
	public void i_take_screenshot() {
		dashboard.TakeScreenShot(executionScenario);
	}

	@When("I take screenshot of {string}")
	public void i_take_screenshot_of(String string) throws Exception {
		dashboard.CompareImages();
	}

//	@Then("I enter Enter value[{int}] as {string}")
//	public void i_enter_enter_value_as(int index, String string) {
//		dashboard.entervalueOfAttributes(string, index);
//	}

	@Then("I enter Enter Key[{int}] as {string}")
	public void i_enter_enter_key_as(Integer int1, String string) {
		dashboard.enterKey(string, int1);
	}

	@Then("I enter {string}[index] as {string}")
	public void i_enter_enter_value_as(int index, String string) {
		dashboard.entervalueOfAttributes(string, index);
	}

//	@Then("I enter Enter Key[{int}] as {string}")
//	public void i_enter_enter_key_as(Integer int1, String string) {
//	   dashboard.enterKey(string,int1);
//	}
//>>>>>>> rohit

	@Then("I enter Attributes value as {string}")
	public void i_enter_attributes_value_as(String string) {
		dashboard.entervalueOfUserAttributes(string);
	}

//	@Then("I click on close icon of Attributes")
//	public void i_click_on_close_icon_of_attributes(int index) {
//		dashboard.clickOnCloseIconOnAttributes(index);
//	}
	@Then("I click on close icon of Attributes")
	public void i_click_on_close_icon_of_attributes() {
		dashboard.clickOnCloseIconOnAttributes();
	}

	@Then("I click on Close Icon")
	public void i_click_on_close_icon() throws Exception {
		dashboard.clickOnCloseIcon();
	}

	@Then("I enter name as {string}")
	public void i_enter_name_as(String string) {
		dashboard.enterNameOfUser(string);
	}

	@Then("I enter {string} of {string} as {string}")
	public void i_enter_of_as(String string, String string2, String Value) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		String[] splitText1 = string2.split("=");
		String locator1 = splitText1[0];
		String locatorText1 = splitText1[1];

		if (locator.equals("PH") && locator1.equals("VT")) {
			dashboard.enterTextUsingPlaceHolderAndLabel(locatorText1, locatorText, Value);
		} else if (locator.equals("VT") && locator1.equals("VT")) {
			dashboard.enterTextFromHeader(locatorText1, locatorText, Value);
		}

	}

	@Then("I click on {string} of {string}")
	public void i_click_on_of(String string, String string2) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		String[] splitText1 = string2.split("=");
		String locator1 = splitText1[0];
		String locatorText1 = splitText1[1];

		if (locator.equals("VT") && locator1.equals("VT")) {
			dashboard.clickOnTextFromHeader(locatorText1, locatorText);
		} else if (locator.equals("VT") && locator1.equals("VT")) {
			dashboard.clickOnElementFromHeader(locatorText1, locatorText);
		} else if (locator.equals("VT") && locator1.equals("DI")) {
			dashboard.clickOnEditFromFile(locatorText1, locatorText);
		} else if (locator.equals("NZPH") && locator1.equals("VT")) {
			dashboard.clickOnDropdownByLabel(locatorText1, locatorText);
		} else if (locator.equals("TY") && locator1.equals("PH")) {
			dashboard.clickOnIsUserChcekBox(locatorText1, locatorText);
		} else if (locator.equals("title") && locator1.equals("VT")) {
			dashboard.clickOnClearAllSymbol(locatorText1, locatorText);
		} else if (locator.equals("DI") && locator1.equals("VT")) {
			dashboard.clickOnEditFromText(locatorText1, locatorText);
		}
	}

	@When("I click on {string} of {string}[{int}]")
	public void i_click_on_of(String string, String string2, Integer int1) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		String[] splitText1 = string2.split("=");
		String locator1 = splitText1[0];
		String locatorText1 = splitText1[1];

		if (locator.equals("NZPH") && locator1.equals("VT")) {
			dashboard.clickOnNZPlaceholderByIndex(locatorText1, locatorText, int1);
			;
		}
	}

	@When("I click on {string} from filter")
	public void i_click_on_from_filter(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboard.clickOnVisibleTextMultiPath(locatorText);
		}

	}

	@Then("I see {string} as {string}")
	public void i_see_as(String string, String string2) {
		dashboard.getText(string2);
	}

	@Then("I click on {string} icon from {string}")
	public void i_click_on_icon_from(String string, String string2) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		String[] splitText2 = string2.split("=");
		String locator2 = splitText2[0];
		String locatorText2 = splitText2[1];

		if (locator.equals("NZ") && locator2.equals("VT")) {
			dashboard.clickOnIconByHeader(locatorText2, locatorText);
		} else if (locator.equals("NZS") && locator2.equals("VT")) {

			dashboard.clickOnElementSpan(locatorText2, locatorText);
		}
	}

	@Then("I click on {string} On KeyBoard")
	public void i_click_on_on_key_board(String string) {
		util.actionutil.ESC();
	}

	@Then("I click on Three dots of {string}")
	public void i_click_on_three_dots_of(String string) {
		dashboard.EditMembersOnAdministration(string);
	}

	@Then("I see ToolTip as {string}")
	public void i_see_tool_tip_as(String string) throws InterruptedException {
		dashboard.getToolTipMessage(string);
	}

	@Then("I see as {string}")
	public void i_see_as(String string) {
		dashboard.getBodyMsg(string);
	}

	@Then("I click on Edit of File")
	public void i_click_on_edit_of_file() {
		dashboard.clickOnEditOfFile();
	}

	@Then("I click on file on Edit")
	public void i_click_on_file_on_edit() {
		dashboard.clickOnFile2();
	}

	@Then("I get {string} of {string}")
	public void i_get_of(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		String[] splitText1 = string2.split("=");
		String locator1 = splitText1[0];
		String locatorText1 = splitText1[1];

		if (locator.equals("VT") && locator1.equals("VT")) {
			dashboard.getElementFromHeader(locatorText1, locatorText);
		} else if (locator.equals("VT") && locator1.equals("DI")) {
			dashboard.clickOnEditFromFile(locatorText1, locatorText);
		}
	}

//	@Then("I enter {string}[{int}] as {string}")
//	public void i_enter_as(String string, Integer int1, String string2) {
//		String[] splitText = string.split("=");
//		String locator = splitText[0];
//		String locatorText = splitText[1];
//		if (locator.equals("PH")) {
//			dashboard.enterPlaceHolderByIndex(locatorText, int1, string2);
//		} else if (locator.equals("LABEL")) {
//			dashboard.enterTextByLabelInputByIndex(locatorText, int1, string2);
//		} else if (locator.equals("VT")) {
//			dashboard.clickOnButtonByVisibleTextIndex(locatorText, int1);
//		}
//	}
	@Then("I enter {string}[{int}] as {string}")
	public void i_enter_as(String string, Integer int1, String string2) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("PH")) {
			dashboard.enterPlaceHolderByIndex(locatorText, int1, string2);
		} else if (locator.equals("LABEL")) {
			dashboard.enterTextByLabelInputByIndex(locatorText, int1, string2);
		} else if (locator.equals("VT")) {
			dashboard.clickOnButtonByVisibleTextIndex(locatorText, int1);
		} else if (locator.equals("LABLE2")) {
			dashboard.enterTextByLabelTextareaByIndex(locatorText, int1, string2);
		} else if (locator.equals("NZPH")) {
			dashboard.enterNZPlaceHolderByIndex(locatorText, int1, string2);
		} else if (locator.equals("TYPE")) {
			dashboard.enterValueByTypeByIndex(locatorText, int1, string2);
		} else if (locator.equals("CLASS")) {
			dashboard.enterValueByClassByIndex(locatorText, int1, string2);
		} else if (locator.equals("LABEL")) {
			dashboard.enterValueByLabelByIndex(locatorText, int1, string2);
		} else if (locator.equals("LIE")) {
			dashboard.enterValueByLabelByIndexEnter(locatorText, int1, string2);
		}
	}

	@Then("I click on {string}[{int}] button")
	public void i_click_on_button(String string, Integer int1) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboard.clickOnButtonByVisibleTextIndex(locatorText, int1);
		}
	}

	@When("I click on {string} checkbox")
	public void i_click_on_checkbox(String string) {

		if (string.equals("Submit-No&Close-Yes")) {
			dashboard.clickOnSubmit();
			util.waitUtil.waitExecutionForGivenTime(1);
			dashboard.clickOnDoNotClose();
		} else if (string.equals("Submit-Yes&Close-Yes")) {
			dashboard.clickOnSubmit();
		} else if (string.equals("Submit-Yes&Close-No")) {
			dashboard.clickOnSubmit();
		} else if (string.equals("Submit-No&Close-No")) {
			dashboard.clickOnSubmit();
			util.waitUtil.waitExecutionForGivenTime(1);
			dashboard.clickOnDoNotClose();
		}
	}

	// rohit

//	@Then("I enter {string}[{int}] as {string}")
//	    public void i_enter_as(String string, Integer int1, String string2) {
//	        String[] splitText = string.split("=");
//	        String locator = splitText[0];
//	        String locatorText = splitText[1]; 
//	        if(locator.equals("PH")) {
//	            dashboard.enterPlaceHolderByIndex(locatorText, int1, string2);
//	        } else if(locator.equals("TYPE")){
//	            dashboard.enterValueByTypeByIndex(locatorText, int1, string2);
//	        } else if (locator.equals("CLASS")) {
//	            dashboard.enterValueByClassByIndex(locatorText, int1,string2);
//	        } else if (locator.equals("LABEL")) {
//	            dashboard.enterValueByLabelByIndex(locatorText, int1,string2);
//	        }  else if (locator.equals("LABEL2")) {
//	        	dashboard.enterValueByLabelByTextareaByIndex(locatorText, int1, string2);
//	        }  else if (locator.equals("LIE")) {
//	        	dashboard.enterValueByLabelByIndexEnter(locatorText, int1, string2);
//	        }
//	    }

	@Given("I click on {string} [{int}]")
	public void i_click_on(String string, Integer int1) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		if (locator.equals("TYI")) {
			dashboard.clickOnElementByTypeIndex(locatorText, int1);
		} else if (locator.equals("CLASS")) {
			dashboard.clickOnElementByClassIndex(locatorText, int1);
		}
	}

	@Then("I click on Three Dots at Data Points")
	public void i_click_on_three_dots_at_data_points() {
		dashboard.clickOnThreeDots();
	}

	@When("I enter {string} Script")
	public void i_enter_script(String string) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		if (locator.equals("VT")) {
			dashboard.enterTextByLabelTextAreawithoutEnterPress2(locatorText);
			;
		}
	}
}
