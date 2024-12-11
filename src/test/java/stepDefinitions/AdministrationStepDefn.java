package stepDefinitions;

import testbase.TestBase;

import utilities.Utilities;

import org.openqa.selenium.By;

//import java.awt.AWTException;
//import java.awt.Robot;
//import java.awt.Toolkit;
//import java.awt.datatransfer.StringSelection;
//import java.awt.event.KeyEvent;
//import java.text.DateFormatSymbols;
//import java.text.SimpleDateFormat;
//import java.time.LocalDate;
//import java.time.Month;
//import java.time.ZoneId;
//import java.time.ZonedDateTime;
//import java.time.format.TextStyle;
//import java.util.Date;
//import java.util.List;
//import java.util.Locale;
//import java.util.Map;
//
//import org.junit.Assert;
//import org.openqa.selenium.By;
//import org.openqa.selenium.JavascriptExecutor;
//import org.openqa.selenium.Keys;
//import org.openqa.selenium.WebElement;
//import org.openqa.selenium.interactions.Actions;
//
//import Enums.Databases;
//import io.cucumber.datatable.DataTable;
//import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.AdministrationPageObj;
import pageObjects.DashboardPageObjects;
import pageObjects.EnterDataPointsofDatabasesPageObjects;
import pageObjects.GlobalPageObjects;
import pageObjects.LoginThroughWorkspacePageObj;

public class AdministrationStepDefn extends TestBase {

	AdministrationPageObj administration = new AdministrationPageObj(driver);
	Utilities util = new Utilities(driver);
	GlobalPageObjects global = new GlobalPageObjects(driver);
	GlobalPageObjects globalPageObjects = new GlobalPageObjects(driver);
	DashboardPageObjects dashboard = new DashboardPageObjects(driver);
	LoginThroughWorkspacePageObj loginbyworkspace = new LoginThroughWorkspacePageObj(driver);
	EnterDataPointsofDatabasesPageObjects enterdatapoints = new EnterDataPointsofDatabasesPageObjects(driver);
	int number;

	@Given("I enter email")
	public void i_enter_email() throws Exception {
		administration.enterEmailId();
	}

	@Given("I click on Custom invitation message")
	public void i_click_on_custom_invitation_message() {
		administration.ClickAndEnterTextarea();
	}

	@Given("I enter Custom invitation message as {string}")
	public void i_enter_custom_invitation_message_as_demo(String string) {
		administration.EnterTextInTextArea(string);
	}

	@Given("I click on menu")
	public void i_click_on_menu() {
		administration.clickOnUserMenu();
	}

	@Given("I click on Status")
	public void i_click_on_status() {
		administration.clickOnStatus();
	}

	@Given("I enter RoleName")
	public void i_enter_role_name() throws Exception {
		administration.enterRoleName(TestBase.getRandomRoleName());
	}

	@Given("I enter {string} as RoleName")
	public void i_enter_as_role_name(String string) throws Exception {
		TestBase.getRandomRoleName();
		TestBase.writeResponse("I enter the Role Name In searchBar as == " + TestBase.getRandomRoleName());
	}

	@Then("I see Role created Successfully")
	public void i_see_role_created_successfully() {
		administration.user_should_see_roleIsCreated();
	}

	@Given("I click on checkbox")
	public void i_click_on_checkbox() {
		administration.clickOnCheckBox();
	}

	@When(" I click on downarrowicon")
	public void i_click_on_in_downarrowicon() {
		administration.clickOnDownArrowIcon();
	}

	@Given("I click on ACTIVE")
	public void i_click_on_active() {
		administration.clickOnStatusValue();
	}

	@Then("I should see deactivate user")
	public void i_should_see_deactivate_user() {
		administration.user_should_see_deactivateUser();
	}

	@Then("I see login picture changed")
	public void i_see_login_picture_changed() {
		administration.user_should_see_loginPage_IsChanged();
	}

	@When("I navigate to the tempEmail page")
	public void i_navigate_to_the_temp_email_page() {
		global.NewTabWithUrl();
	}

	@When("I copy email from TempEmail")
	public void i_copy_email_from_temp_email() {
		administration.copyEmail();
	}

	// User Management 500k DIPAK

	@Given("I Import the user through {int} templete of excel file")
	public void i_import_the_user_through_templete_of_excel_file(Integer int1) throws Exception {
		for (int i = 14; i <= int1; i++) {
			dashboard.clickOnElementByClassIndex("ft-upload-cloud", 1);
			enterdatapoints.importUserByExcelTempleteLocalMachine(i);
			util.waitUtil.waitExecutionForGivenTime(2);
			util.waitUtil.WaitForElementToBePresentUpdateList(
					driver.findElements(By.xpath("//*[@placeholder='name@ex.com']")), 180);
			globalPageObjects.clickOnButtonByVisibleText("Advance options");
			util.waitUtil.waitExecutionForGivenTime(2);
			globalPageObjects.enterTextByPlaceHolder("******", "User@123");
			globalPageObjects.clickOnElementByVisibleTextEquals("Send Invitations");
			util.waitUtil.waitExecutionForGivenTime(3);
			util.waitUtil.WaitForElementToBePresentUpdateList(
					driver.findElements(By.xpath("//*[text()='User added successfully']")), 180);
			util.waitUtil.waitExecutionForGivenTime(1);
			System.out.println("User Group added successfully :" + i);
			Thread.sleep(6000);
			util.waitUtil.waitExecutionForGivenTime(2);
			driver.navigate().refresh();
			util.waitUtil.waitExecutionForGivenTime(4);
		}
	}

	@Given("I activate added user and applies ABAC")
	public void i_activate_added_user_and_applies_abac() throws Exception {
		int a = 1693;
		int int1 = 1875;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I1 activate added user and applies ABAC")
	public void i1_activate_added_user_and_applies_abac() throws Exception {
		int a = 3619;
		int int1 = 3750;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I2 activate added user and applies ABAC")
	public void i2_activate_added_user_and_applies_abac() throws Exception {
		int a = 5590;
		int int1 = 5625;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
		
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I3 activate added user and applies ABAC")
	public void i3_activate_added_user_and_applies_abac() throws Exception {
		int a = 7475;
		int int1 = 7500;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {

			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(2);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I4 activate added user and applies ABAC")
	public void i4_activate_added_user_and_applies_abac() throws Exception {
		int a = 9258;
		int int1 = 9375;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I5 activate added user and applies ABAC")
	public void i5_activate_added_user_and_applies_abac() throws Exception {
		int a = 11016;
		int int1 = 11250;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
		
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I6 activate added user and applies ABAC")
	public void i6_activate_added_user_and_applies_abac() throws Exception {
		int a = 12685;
		int int1 = 13125;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I7 activate added user and applies ABAC")
	public void i7_activate_added_user_and_applies_abac() throws Exception {
		int a = 14794;
		int int1 = 15000;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I8 activate added user and applies ABAC")
	public void i8_activate_added_user_and_applies_abac() throws Exception {
		int a = 16102;
		int int1 = 16875;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I9 activate added user and applies ABAC")
	public void i9_activate_added_user_and_applies_abac() throws Exception {
		int a = 18478;
		int int1 = 18750;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I10 activate added user and applies ABAC")
	public void i10_activate_added_user_and_applies_abac() throws Exception {
		int a = 20301;
		int int1 = 20625;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I11 activate added user and applies ABAC")
	public void i11_activate_added_user_and_applies_abac() throws Exception {
		int a = 21635;
		int int1 = 22500;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(2);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I12 activate added user and applies ABAC")
	public void i12_activate_added_user_and_applies_abac() throws Exception {
		int a = 24204;
		int int1 = 24375;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I13 activate added user and applies ABAC")
	public void i13_activate_added_user_and_applies_abac() throws Exception {
		int a = 25840;
		int int1 = 26250;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I14 activate added user and applies ABAC")
	public void i14_activate_added_user_and_applies_abac() throws Exception {
		int a = 27274;
		int int1 = 28125;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}

	@Given("I15 activate added user and applies ABAC")
	public void i15_activate_added_user_and_applies_abac() throws Exception {
		int a = 29595;
		int int1 = 30000;
		int User = 30000;
		int b = User + a;
		int lastUser = User + int1;
		for (int i = b; i <= lastUser; i++) {
			String str = String.valueOf(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			globalPageObjects.enterTextByPlaceHolder("search user by title", str);
			dashboard.clickOnthreeDotByuserindexandClass("fa fa-ellipsis-h", i);
			dashboard.enterPlaceHolderByIndex("Enter Key", 1, "text");
			globalPageObjects.clickOnElementByVisiualTextAndJavaScript("Enter value");
			// globalPageObjects.clickOnElementByInputLabel("Enter value");
			globalPageObjects.enterTextByLabelInput("Enter value", "Text" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sai" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "DIPAK" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "R" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "A" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "ABC" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "XYZ" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Raja" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "John" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "K" + randomsubmission1());
			globalPageObjects.enterTextByLabelInput("Enter value", "Rohit" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Sachin" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Virat" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Subman" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Ishan" + randomsubmission2());
			globalPageObjects.enterTextByLabelInput("Enter value", "Shami" + randomsubmission2());
			globalPageObjects.clickOnButtonByVisibleText("Save");
			globalPageObjects.isElementPresentByVisibleText("User edited successfully");
			System.out.println("User Updated Successfully :" + i);
		}
	}
	
	

}
