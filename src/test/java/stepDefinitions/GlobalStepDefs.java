package stepDefinitions;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.DashboardPageObjects;
import pageObjects.GlobalPageObjects;
import pageObjects.LoginThroughWorkspacePageObj;
import testbase.TestBase;
import utilities.Utilities;

public class GlobalStepDefs extends TestBase {

	GlobalPageObjects globalPageObjects = new GlobalPageObjects(driver);
	Actions actions;
	Utilities util = new Utilities(driver);
	DashboardPageObjects dashboardpageobject = new DashboardPageObjects(driver);
	LoginThroughWorkspacePageObj loginbyworkspace = new LoginThroughWorkspacePageObj(driver);

	@Given("I navigate to web application")
	public void i_navigate_to_web_application() {
		driver.get(CONFIG.getProperty("TEST_URL1"));
	}

	@Given("login into the Testing zvolv application with below credentials")
	public void login_into_the_testing_zvolv_application_with_below_credentials(
			io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> dt = dataTable.asLists();

		driver.get(CONFIG.getProperty("TEST_URL3"));
//		loginbyworkspace.clickOnFindYourWorkspace();
//		loginbyworkspace.enteringWorkSpaceURL(dt.get(0).get(0));
//		loginbyworkspace.clickOnContinueButton();
		loginbyworkspace.enterEmailOrPhoneNumber(dt.get(0).get(1));
		loginbyworkspace.enterPassword(dt.get(0).get(2));
		loginbyworkspace.clickOnLoginButton();

	}

	@Then("I open new Tab")
	public void i_open_new_tab() {
		globalPageObjects.NewTab();
	}

	@Then("I open new Window")
	public void i_open_new_window() {
		globalPageObjects.NewWindow();
	}

	@Then("I click on Tab")
	public void i_click_on_tab() {
		globalPageObjects.Tab();
	}

	@Then("I switched to new Tab")
	public void i_switched_to_new_tab() {
		globalPageObjects.switchToNextTab();
	}

	@When("I get API response")
	public void i_get_api_response() {
		globalPageObjects.getResponseOFAPI();
	}

	@Then("I click on BackSpace")
	public void i_click_on_back_space() {
		util.actionutil.BackSpace();
	}

	@Then("I switched to parent Tab")
	public void i_switched_to_parent_tab() {
		globalPageObjects.switchToParentTab();
	}

	@Then("I get the URL of Uploaded File")
	public void i_get_the_url_of_uploaded_file() {
		globalPageObjects.getURL();
	}

	@Then("I open new incognito tab")
	public void i_open_new_incognito_tab() {
		globalPageObjects.incognito();
	}

	@Then("I should see page title as {string}")
	public void i_should_see_page_title_as(String string) {
		String title = driver.getTitle();
		System.out.println("Page title is " + title);
		TestBase.writeResponse("Expected Page Title == " + string);
		TestBase.writeResponse("Actual Page Title == " + title);
		assertEquals(string, title);
	}

	@Then("I see {string} web element")
	public void i(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		boolean isButtonVisible = false;
		if (locator.equals("VT")) {
			isButtonVisible = globalPageObjects.isElementPresentByVisibleText(locatorText);
		} else if (locator.equals("ID")) {
			isButtonVisible = globalPageObjects.isElementPresentById(locatorText);
		} else if (locator.equals("NAME")) {
			isButtonVisible = globalPageObjects.isElementPresentByName(locatorText);
		} else if (locator.equals("VTEQ")) {
			isButtonVisible = globalPageObjects.isElementPresentByVisibleTextEquals(locatorText);
		}
		// TestBase.writeResponse("Is Login Button Displayed == "+isButtonVisible);
		assertTrue("WebElement is Visible", isButtonVisible);
		// assertTrue(isButtonVisible);
	}

	@Then("I see {string}[{int}] web element") // DIPAK
	public void i_see_web_element(String string, Integer int1) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.isElementPresentByVisibleTextIndex(locatorText, int1);
		} else if (locator.equals("LABLE")) {
			globalPageObjects.isElementPresentByLabelIndex(locatorText, int1);
		}

	}

	@Then("I see {string}")
	public void i_see(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.isElementDisplayedByVisibleText(locatorText);
		}
	}

	@Then("I see {string} and {string} web element")
	public void i_see_and_web_element(String string, String string2) {
		String[] strInput = { string, string2 };
		for (int i = 0; i <= strInput.length - 1; i++) {
			String[] splitText = strInput[i].split("=");
			String locator = splitText[0];
			String locatorText = splitText[1];
			boolean isButtonVisible = false;
			if (locator.equals("VT")) {
				isButtonVisible = globalPageObjects.isElementPresentByVisibleText(locatorText);
			} else if (locator.equals("ID")) {
				isButtonVisible = globalPageObjects.isElementPresentById(locatorText);
			} else if (locator.equals("NAME")) {
				isButtonVisible = globalPageObjects.isElementPresentByName(locatorText);
			}
			// TestBase.writeResponse("Is Login Button Displayed == "+isButtonVisible);
			assertTrue("WebElement is Visible", isButtonVisible);
			// assertTrue(isButtonVisible);
		}
		System.out.println();
		System.out.println("=====Login Is Successfull=====");
		System.out.println();
	}

	@Then("I see {string}, {string},{string},{string},{string},{string} web element")
	public void i_see_web_element(String string, String string2, String string3, String string4, String string5,
			String string6) {
		String[] strInput = { string, string2, string3, string4, string5, string6 };
		for (int i = 0; i <= strInput.length - 1; i++) {
			String[] splitText = strInput[i].split("=");
			String locator = splitText[0];
			String locatorText = splitText[1];
			boolean isButtonVisible = false;
			if (locator.equals("VT")) {
				isButtonVisible = globalPageObjects.isElementPresentByVisible_Text(locatorText);
			}
			writeResponse("WebElement is : " + locatorText);
			assertTrue("WebElement is Visible", isButtonVisible);

		}
	}

//	@When("I enter {string} as {string}")

	@When("I enter {string} as {string}")
	public void i_enter_as(String string, String text2Enter) throws Exception {

		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("PH")) {
			globalPageObjects.enterTextByPlaceHolder(locatorText, text2Enter);
		} else if (locator.equals("data_dx_PH")) {
			globalPageObjects.enterTextBydata_dx_PlaceHolder(locatorText, text2Enter);
		} else if (locator.equals("ID")) {
			globalPageObjects.enterTextById(locatorText, text2Enter);
		} else if (locator.equals("NAME")) {
			globalPageObjects.enterTextByName(locatorText, text2Enter);
		} else if (locator.equals("LABEL1")) {
			globalPageObjects.enterTextByLabelInput(locatorText, text2Enter);
		} else if (locator.equals("LABEL2")) {
			globalPageObjects.enterTextByLabelTextArea(locatorText, text2Enter);
		} else if (locator.equals("LABEL3")) {// DIPAK
			globalPageObjects.enterTextByLabelTextAreawithoutEnterPress(locatorText, text2Enter);
		} else if (locator.equals("LABEL4")) {// DIPAK
			globalPageObjects.enterTextByLabelInputWithoutEnterPress(locatorText, text2Enter);
		} else if (locator.equals("LABELSPAN")) {
			globalPageObjects.enterTextByLabelInputSpan(locatorText, text2Enter);
		} else if (locator.equals("LI")) {
			globalPageObjects.enterTextUsingLabelInputTag(locatorText, text2Enter);
		} else if (locator.equals("NZPH")) {
			globalPageObjects.enterTextByNzPlaceHolder(locatorText, text2Enter);
		} else if (locator.equals("DataPH")) {
			globalPageObjects.enterTextByDATAPlaceHolder(locatorText, text2Enter);
		}
		// TestBase.writeResponse("I Enter "+locatorText+" Id As == "+text2Enter);

	}
	// String locator = splitText[0];
	// String locatorText = splitText[1];
	// if(locator.equals("PH")) {
	// try {
	// globalPageObjects.enterTextByPlaceHolder(locatorText, text2Enter);
	// } catch(Exception e1) {
	// try {
	// globalPageObjects.enterInDropdownByPlaceholder(locatorText, text2Enter);
	// }catch(Exception e2) {
	// e2.printStackTrace();
	// }
	// }
	//
	// } else if(locator.equals("ID")) {
	// globalPageObjects.enterTextById(locatorText, text2Enter);
	// } else if(locator.equals("NAME")) {
	// globalPageObjects.enterTextByName(locatorText, text2Enter);
	// } else if(locator.equals("LABEL")) {
	// globalPageObjects.enterTextByLabel(locatorText, text2Enter);
	// }
	// TestBase.writeResponse("I Enter "+locatorText+" Id As == "+text2Enter);
	//
	// }

	@When("I click on {string}")
	public void i_click_on(String string) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnElementByVisibleText(locatorText);
		} else if (locator.equals("ID")) {
			globalPageObjects.clickOnElementById(locatorText);
		} else if (locator.equals("VTEQ")) {
			globalPageObjects.clickOnElementByVisibleTextEquals(locatorText);
		} else if (locator.equals("VTEQJS")) {
			globalPageObjects.clickOnElementByVisibleTextEqualsJS(locatorText);
		} else if (locator.equals("VTEQ")) {
			globalPageObjects.clickOnElementByVisibleTextEquals(locatorText);
		} else if (locator.equals("ID")) {
			globalPageObjects.clickOnElementById(locatorText);
		} else if (locator.equals("NAME")) {
			globalPageObjects.clickOnElementByName(locatorText);
		} else if (locator.equals("PH")) {
			globalPageObjects.clickOnElementByPlaceHolder(locatorText);
		} else if (locator.equals("data_dx_PH")) {
			globalPageObjects.clickOnElementBydata_dx_PlaceHolder(locatorText);
		} else if (locator.equals("LABEL1")) {
			globalPageObjects.clickOnElementByLabelInput(locatorText);
		} else if (locator.equals("LABEL1JS")) {
			globalPageObjects.JSclickOnElementByLabelInput(locatorText);
		} else if (locator.equals("LABEL2")) {
			globalPageObjects.clickOnElementByLabelTextarea(locatorText);
		} else if (locator.equals("DIJS")) {
		} else if (locator.equals("DI")) {
			globalPageObjects.clickOnElementByDI(locatorText);
		} else if (locator.equals("JS")) {
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript(locatorText);
		} else if (locator.equals("TY")) {
			globalPageObjects.clickOnElementByType(locatorText);
		} else if (locator.equals("NZ")) {
			globalPageObjects.clickOnElementByNZType(locatorText);
		} else if (locator.equals("LI")) {
			globalPageObjects.clickByLink(locatorText);
		} else if (locator.equals("IN")) {
			globalPageObjects.clickOnFiledsByIndex(string);
		} else if (locator.equals("title")) {
			globalPageObjects.selectDate(locatorText);
		} else if (locator.equals("LABEL")) {
			globalPageObjects.clickOnDropDownByLabel(locatorText);
		} else if (locator.equals("ICON")) {
			globalPageObjects.clickOnIcon(locatorText);
		} else if (locator.equals("NZC")) {
			globalPageObjects.clickOnElementByNZConetnt(locatorText);
		} else if (locator.equals("LABEL3")) {
			globalPageObjects.clickOnElementByInputLabel(locatorText);
		} else if (locator.equals("VALUE")) {
			globalPageObjects.clickOnElementByInputValue(locatorText);
		} else if (locator.equals("NZPH")) {
			globalPageObjects.clickOnElementByNZPlaceHolder(locatorText);
		}
	}

	// TestBase.writeResponse("I Click on "+locatorText+" web element");

	@Then("I click on {string}[{int}]")
	public void i_click_on(String string, Integer int1) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnElemetByVisibleTextIndex(locatorText, int1);
		} else if (locator.equals("DI")) {
			globalPageObjects.clickOnIconByVisibleTextIndex(locatorText, int1);
		} else if (locator.equals("DI2")) {// DIPAK
			globalPageObjects.clickOnIconButtonByVisibleTextIndex(locatorText, int1);
		} else if (locator.equals("LIND")) {
			globalPageObjects.clickOnInputByLabelIndex(locatorText, int1);
		} else if (locator.equals("DII")) {
			globalPageObjects.clickOnElementByDIIndex(locatorText, int1);
		} else if (locator.equals("NZIN")) {
			globalPageObjects.clickOnElementByNzTypeByIndex(locatorText, int1);
		} else if (locator.equals("BTN")) {
			globalPageObjects.clickOnElementByButtonByIndex(locatorText, int1);
		} else if (locator.equals("LABEL")) {
			globalPageObjects.clickOnInputByLabelIN(locatorText, int1);
		} else if (locator.equals("NZTYPE")) {
			globalPageObjects.clickOnNzTypeIndex(locatorText, int1);
		} else if (locator.equals("DI3")) {// DIPAK
			globalPageObjects.clickOnIconButtonByVisibleTextIndex2(locatorText, int1);
		} else if (locator.equals("LABEL2")) {// DIPAK
			globalPageObjects.clickOnElementByLabelInputIndex(locatorText, int1);
		} else if (locator.equals("LABEL22")) {// DIPAK
			globalPageObjects.clickOnElementByLabelInputINDEX(locatorText, int1);
		} else if (locator.equals("LABEL22JS")) {// DIPAK
			globalPageObjects.JSclickOnElementByLabelInputINDEX(locatorText, int1);
		} else if (locator.equals("NZPH")) {
			globalPageObjects.clickOnDropdownByNzPlaceHolderByIndex(locatorText, int1);
		} else if (locator.equals("TY")) {
			globalPageObjects.clickOnElementByTypeIndex(locatorText, int1);
		} else if (locator.equals("VTEQ")) {// DIPAK
			globalPageObjects.clickByVisibleTextEqualIndex(locatorText, int1);
		}
	}
	// String locator = splitText[0];
	// String locatorText = splitText[1];
	// if(locator.equals("VT")) {
	// globalPageObjects.clickOnElementByVisibleText(locatorText);
	// } else if(locator.equals("ID")) {
	// globalPageObjects.clickOnElementById(locatorText);
	// } else if(locator.equals("NAME")) {
	// globalPageObjects.clickOnElementByName(locatorText);
	// } else if(locator.equals("LABEL")) {
	// globalPageObjects.clickOnElementByLabel(locatorText);
	// } else if(locator.equals("DI")) {
	// globalPageObjects.clickOnElementByDI(locatorText);
	// } else if(locator.equals("JS")) {
	// globalPageObjects.clickOnElementByVisiualTextAndJavaScript(locatorText);
	// }
	// TestBase.writeResponse("I Click on "+locatorText+" web element");
	//
	// }

	@When("I move to {string} and click")
	public void i_move_to_and_click(String string) {
		String[] splitText = string.split("=");

		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.moveToElementAndClickByVisibleText(locatorText);
		}
		// TestBase.writeResponse("I Click on "+locatorText+" web element");
	}

	@When("I move to {string}")
	public void i_move_to(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.moveToElementByVisibleText(locatorText);
			// TestBase.writeResponse("I Click on "+locatorText+" web element");
		} else if (locator.endsWith("DI")) {
			globalPageObjects.moveToElementByDataIcon(locatorText);
		} else if (locator.endsWith("ID")) {
			globalPageObjects.moveToElementByID(locatorText);
		}
	}
	// TestBase.writeResponse("I Click on "+locatorText+" web element");

	@Then("I move to {string} Button")
	public void i_move_to_button(String string) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.moveToElementByVisibleTextButton(locatorText);
		}
	}

	@Then("I click on {string} dropdown")
	public void i_click_on_dropdown(String string) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("LABEL")) {
			globalPageObjects.clickOnDropDownByLabel(locatorText);
		}
		if (locator.equals("NZPH")) {
			globalPageObjects.clickOnDropdownByNzPlaceHolder(locatorText);
		}
		if (locator.equals("VT")) {
			globalPageObjects.clickOnDropdownByVisibleText(locatorText);
		}

		// TestBase.writeResponse("I Click on "+locatorText+" Dropdown");
	}

	@When("I click on {string} from {string}")
	public void i_click_on_from(String string, String string2) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		String[] splitText1 = string2.split("=");
		String locator1 = splitText1[0];
		String locatorText1 = splitText1[1];

		if (locator.equals("VT") && locator1.equals("VT")) {
			globalPageObjects.clickOnElementByHeader(locatorText1, locatorText);
		} else if (locator.equals("CS") && locator1.equals("VT")) {
			globalPageObjects.clickOnStyleByHeader(locatorText1, locatorText);
		} else if (locator.equals("NZPH") && locator1.equals("LABEL")) {
			globalPageObjects.clickOnPlaceholderByLabel(locatorText1, locatorText);
		} else if (locator.equals("DI") && locator1.equals("VT")) {
			globalPageObjects.clickOndownarrowByVisibleText2(locatorText1, locatorText);
		} else if (locator.equals("VT") && locator1.equals("LABEL")) {
			globalPageObjects.clickOnElementByLabel(locatorText1, locatorText);
		} else if (locator.equals("CLASS") && locator1.equals("VT")) {
			globalPageObjects.clickOnSwitch(locatorText1, locatorText);
		} else if (locator.equals("VT") && locator1.equals("LABEL")) {
			globalPageObjects.clickOnElementByLabel(locatorText1, locatorText);
		}
	}

	@When("I click on {string} downarrow")
	public void i_click_on_downarrow(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		if (locator.equals("VT")) {
			globalPageObjects.clickOndownarrowByVisibleText(locatorText);
		}

		// TestBase.writeResponse("I Click on "+locatorText+" Dropdown");
	}

	// @Then("I click on {string} dropdown")
	// public void i_click_on_dropdown(String string) {
	// String[] splitText = string.split("=");
	// String locator = splitText[0];
	// String locatorText = splitText[1];
	// if(locator.equals("VT")) {
	// globalPageObjects.clickOnDropDownByVisibleText(locatorText);
	// } else if(locator.equals("LABEL")) { // Sharath
	// globalPageObjects.clickOnDropDownByLabel1(locatorText);
	// }
	// TestBase.writeResponse("I Click on "+locatorText+" Dropdown");
	// }

	// @When("I click on {string} downarrow")
	// public void i_click_on_downarrow(String string) {
	// String[] splitText = string.split("=");
	// String locator = splitText[0];
	// String locatorText = splitText[1];
	// if(locator.equals("VT")) {
	// globalPageObjects.clickOndownarrowByVisibleText(locatorText);
	// }
	// TestBase.writeResponse("I Click on "+locatorText+" Dropdown");
	//
	// }

	@Then("I click on {string} button from {string}")
	public void i_click_on_button_from(String string, String string1) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		String[] splitText1 = string1.split("=");
		String locator1 = splitText1[0];
		String locatorText1 = splitText1[1];
		if (locator.equals("VT") && locator1.equals("VT")) {
			globalPageObjects.clickOnButtonByHeader(locatorText1, locatorText);
		} else if (locator.equals("VT") && locator1.equals("VT1")) {
			globalPageObjects.clickOnButtonByHeader1(locatorText1, locatorText);
		} else if (locator.equals("VT1") && locator1.equals("VT")) {
			globalPageObjects.clickOnButtonByHeader2(locatorText1, locatorText);
		} else if (locator.equals("VT") && locator1.equals("VT2")) {
			globalPageObjects.clickOnButtonByHeader3(locatorText1, locatorText);
		}
	}

	@When("I click on {string} form")
	public void i_click_on_form(String string) {
		String[] splitText = string.split("=");

		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnSubmitFormByVisibleText(locatorText);
		}
		// TestBase.writeResponse("I Click on "+locatorText+" form");
	}

	@When("I click on {string} button")
	public void i_click_on_button(String string) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnButtonByVisibleText(locatorText);
		} else if (locator.equals("ID")) {
			globalPageObjects.clickOnButtonById(locatorText);
		} else if (locator.equals("NAME")) {
			globalPageObjects.clickOnButtonByName(locatorText);
		} else if (locator.equals("VTJS")) {
			globalPageObjects.clickOnButtonByVisibleTextJavaScript(locatorText);
		} else if (locator.equals("VTAC")) {
			globalPageObjects.clickOnButtonByVisibleTextActionClass(locatorText);
		} else if (locator.equals("VTEQ")) {
			globalPageObjects.clickOnButtonByVisibleTextEquals(locatorText);
		} else if (locator.equals("DI")) {// DIPAK
			globalPageObjects.clickOnElementbyDI(locatorText);

		}
		// TestBase.writeResponse("I Click on "+locatorText+" Button");

		// TestBase.writeResponse("I Click on "+locatorText+" Button");
	}

	@When("I click on {string} button from {string}[{int}]")
	public void i_click_on_button_from(String string, String string2, Integer int1) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];

		String[] splitText1 = string2.split("=");
		String locator1 = splitText1[0];
		String locatorText1 = splitText1[1];

		if (locator.equals("VT") && locator1.equals("VT")) {
			globalPageObjects.clickOnButtonByHeaderByIndex(locatorText1, locatorText, int1);
		}
	}

	@Then("User click on {string} widget")
	public void user_click_on_widget(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobject.clickonWidgets(locatorText);
		}

	}

	@When("I wait for {string} milli seconds")
	public void i_wait_for_seconds_milli(String string) throws InterruptedException {
		Thread.sleep(Integer.parseInt(string));

	}

	@When("I enter {string} dropdown value as {string}")
	public void i_enter_dropdown_value_as(String string, String text2Enter) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("PH")) {
			globalPageObjects.enterTextByPlaceHolderAndEnter(locatorText, text2Enter);
		}
		// TestBase.writeResponse("I Enter "+locatorText+" Id As == "+text2Enter);
	}

	@Then("I click on {string} from dropdown")
	public void i_click_on_from_dropdown(String string) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnVisibleTextUsingNormaliseSpace(locatorText);
		} else if (locator.equals("VTEQ")) {
			globalPageObjects.clickOnVisibleTextFromDropdownSpan(locatorText);
		}
	}

	@When("I click on {string} filter")
	public void i_click_on_filter(String string) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnIconByVisibleText(locatorText);
		}
	}

	@Then("I click on {string} {string}")
	public void i_click_on(String string, String string2) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickByVisibleText(locatorText);
		} else if (locator.equals("Button")) {
			globalPageObjects.clickButtonByVisibleText(locatorText);
		}
	}

	@Then("I click on {string} Button")
	public void i_click_on_Button(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnButtonByVisibleText2(locatorText);
		} else if (locator.equals("DI")) {
			globalPageObjects.clickOnElementByDIButton(locatorText);
		}
	}

	@When("I upload {string} as {string}")
	public void i_upload_as(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.uploadFileFromLabel(locatorText, string2);
			;
		}
	}

	// Newly Added Step defs
	@When("I2 enter {string} as {string}")
	public void i2_enter_as(String string, String text2Enter) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("PH")) {
			globalPageObjects.enterTextByPlaceHolder(locatorText, text2Enter);
		} else if (locator.equals("ID")) {
			globalPageObjects.enterTextById(locatorText, text2Enter);
		} else if (locator.equals("NAME")) {
			globalPageObjects.enterTextByName(locatorText, text2Enter);
		} else if (locator.equals("LABEL")) {
			globalPageObjects.enterTextByLabel2(locatorText, text2Enter);
		} else if (locator.equals("CLASS")) {
			globalPageObjects.enterTextByClass(locatorText, text2Enter);
		}
		TestBase.writeResponse("I Enter " + locatorText + " Id As == " + text2Enter);
	}

	@When("I doubleclick on {string}")
	public void i_doubleclick_on(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String textToClick = splitText[1];
		if (locator.equals("VT")) {
			WebElement ele = driver.findElement(By.xpath("//*[text()='" + textToClick + "']"));
			util.actionutil.moveToElement(ele);
			util.actionutil.doubleClick(ele);
		}
	}

	@When("I click on {string} in dropdown")
	public void i_click_on_in_dropdown(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String textToClick = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnElementByVisibleTextInDropdown(textToClick);
		}
	}

	@Then("User click on {string} dropdown option")
	public void user_click_on_dropdown_option(String string) {
		globalPageObjects.clickonDropdownOption(string);
	}

//	#rohit

	@When("User click on {string} on side navigation bar")
	public void user_click_on_on_side_navigation_bar(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String textToClick = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnButtonByVisibleTextActionClass(textToClick);
		}
	}

	@When("I scroll down the page")
	public void i_scroll_down_the_page() {
		util.actionutil.scrollByAmount(0, 250);
		;
	}

	@When("I scroll up the page")
	public void i_scroll_up_the_page() {
		util.actionutil.scrollByAmount(250, 0);
		;
	}

	@Given("I click on {string}[{int}] from {string}")
	public void i_enter_as(String string, Integer int1, String string2) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String textToClick = splitText[1];

		String[] splitText1 = string2.split("=");
		String locator1 = splitText1[0];
		String locatorText1 = splitText1[1];

		if (locator.equals("VT") && locator1.equals("LABEL")) {
			globalPageObjects.clickOnElementByLabelIndex(locatorText1, int1, textToClick);
		} else if (locator.equals("DI") && locator1.equals("VT")) {
			globalPageObjects.clickOnElementByLabelIndex2(locatorText1, int1, textToClick);
		}
	}

	@Given("I click on pageDown")
	public void i_click_on_page_down() {
		util.actionutil.pageDown();
	}

	@Then("I click on Acceptalert")
	public void i_click_on_acceptalert() {
		util.alertutil.alertPopupAccept();
	}

	@Given("I minimize the page")
	public void i_minize_the_page() throws Exception {
//	    util.robotclassutil.minimize();
		util.actionutil.minimizeScreen();
	}

	@Given("I click on {string}[{int}] Button") // DIPAK
	public void i_click_on_button(String string, Integer int1) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.clickOnVisibleTextbyIndexButton(locatorText, int1);
		} else if (locator.equals("DI")) {
			globalPageObjects.clickOnDIbyIndexButton(locatorText, int1);
		} else if (locator.equals("NZIN")) {
			globalPageObjects.clickOnElementByNzTypeByIndexButton(locatorText, int1);
		}
	}

	@Then("I click on Body[{int}]")
	public void i_click_on_body(Integer int1) {
		globalPageObjects.clickOnBodyByIndex(int1);
	}

//DIPAK
	@Then("Webelement {string} is Not Visible")
	public void webelement_is_not_visible(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VTEQ")) {
			globalPageObjects.WebElementNotVisisbleByVisibleTextEQ(locatorText);
		}
	}

//DIPAK	
	@Then("I see {string} WebElement")
	public void i_see_web_element(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.WelElementPresentVisibleByText(locatorText);
		}
	}

	@Then("I press the {string} of keyboard {int} times to see the {string} WebElement")
	public void i_press_the_of_keyboard_times_to_see_the_web_element(String string, Integer int1, String string2) {
		String[] splitText = string2.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.KeyBoardKeyPressToSeeWebElement(string, int1, locatorText);
		}
	}

	@When("I click on {string}[{int}]  form Button")
	public void i_click_on_form_button(String string, Integer int1) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("DIIN")) {
			globalPageObjects.EditIconForm(locatorText, int1);
		}
	}

	@Then("I see text {string}[{int}] of web element")
	public void i_see_text_of_web_element(String string, Integer int1) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			globalPageObjects.elementPresentWithText(locatorText, int1);
		}
	}

	@Then("I see {string}[{int}] Selected Checkbox")
	public void i_see_selected_checkbox(String string, Integer int1) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("LABLE")) {
			globalPageObjects.isSelectedCheckboxVisible(locatorText, int1);
		}
	}

	@Then("I see {int} rating on the rating bar")
	public void i_see_rating_on_the_rating_bar(Integer int1) throws InterruptedException {
		globalPageObjects.ratingBarRating(int1);
	}

	@When("I switched to new browser tab")
	public void i_switched_to_new_browser_tab() {
		util.windowHandlesUtil.switchToNewWindow();
	}

	@Then("I close the new tab of the browser")
	public void i_close_the_new_tab_of_the_browser() {
		driver.close();
	}

	@When("I switched back to Parent tab")
	public void i_switched_back_to_parent_tab() {
		util.windowHandlesUtil.SwitchToParentWindow();
	}
	
	@Given("I click on android app {string}")
	public void i_click_on_android_app(String string) throws Exception {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		 if (locator.equals("ID")) {
			globalPageObjects.clickOnAndroidAppElementById(locatorText);
		} 
	}

}
