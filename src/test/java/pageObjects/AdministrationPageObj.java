package pageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import junit.framework.Assert;
import testbase.TestBase;
import utilities.Utilities;
import static org.junit.Assert.assertEquals;

import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;

import org.junit.Test;

public class AdministrationPageObj {

	private WebDriver driver;
	Utilities util = new Utilities(driver);

	public AdministrationPageObj(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	@FindBy(xpath = "//i[@class='ft-lock']")
	public WebElement AdministrationIconInSidebar;

	public void clickOnAdministrationIconInSidebar() {
		AdministrationIconInSidebar.click();
	}

	@FindBy(xpath = "//*[contains(text(),'Invite members')]/..")
	public WebElement InviteMembers;

	public void clickOnInviteMembers() {
		InviteMembers.click();

	}

	// input[(@class="form-control ng-pristine ng-invalid ng-touched")]
	@FindBy(xpath = "(//input[(@type='text')])[4]")
	public WebElement ClickOnNameInputFiled;

	public void clickOnInputField() {
		ClickOnNameInputFiled.click();
	}

//	(//*[contains(text(),'Name')]/../../..//input)[2]
	@FindBy(xpath = "(//*[contains(text(),'Name')]/../../..//input)[2]")
	public WebElement EnterNameField;

	public void enterNameField(String string) {
		EnterNameField.sendKeys(string);
	}

	@FindBy(xpath = "//*[@class='angular-editor-textarea']")
	public WebElement ClickAndEnterTextArea;

	public void ClickAndEnterTextarea() {
		ClickAndEnterTextArea.clear();
		ClickAndEnterTextArea.click();
	}

	@FindBy(xpath = "//*[@class='angular-editor-textarea']")
	public WebElement EnterText;

	public void EnterTextInTextArea(String string) {

		EnterText.clear();
		EnterText.sendKeys(string);
		;
	}

	@FindBy(xpath = "//*[@id='click-to-copy']")
	WebElement CopyEmail;

	public void copyEmail() {
//	 String textToCopy = CopyEmail.getText();
		CopyEmail.click();
		;
//      Toolkit.getDefaultToolkit().getSystemClipboard().setContents(new StringSelection(textToCopy), null);
	}

	@FindBy(xpath = "//*[contains(@placeholder,'name@ex.com / 1234567')]")
	WebElement EnterEmailAddress;

	public void enterEmailId() throws Exception {
//		EnterEmailAddress.sendKeys(TestBase.getRandomEmail());
//		util.waitUtil.WaitForElementToBePresentUpdate(EnterEmailAddress,30);
//
//		TestBase.writeResponse("I enter the Email Address as == "+TestBase.getRandomEmail() );

//		 Toolkit.getDefaultToolkit().getSystemClipboard().setContents(new StringSelection("copied@email.com"), null);
		Robot robot = new Robot();

		robot.keyPress(KeyEvent.VK_CONTROL);
		robot.keyPress(KeyEvent.VK_V);
		robot.keyRelease(KeyEvent.VK_V);
		robot.keyRelease(KeyEvent.VK_CONTROL);

	}

	@FindBy(xpath = "(//button[@class='btn btn-sm btn-default'])[10]")
	WebElement ClickOnUserMenu;

	public void clickOnUserMenu() {
		ClickOnUserMenu.click();
	}

//	(//input[@role='combobox'])[1]
	// *[@class="ng-option ng-option-selected ng-star-inserted ng-option-marked"]
	@FindBy(xpath = "(//*[contains(@class,'ng-input')])[2]")
	WebElement ClickOnSatus;

	public void clickOnStatus() {
		ClickOnSatus.click();
	}

	@FindBy(xpath = "(//*[@class='dx-checkbox-container'])[21]")
	WebElement ClickOnCheckBox;

	public void clickOnCheckBox() {
		ClickOnCheckBox.click();
	}

//	(//span[@class="ng-arrow-wrapper"])[2]
	public void clickOnDownArrowIcon() {
		WebElement ele = driver.findElement(By.xpath("(//span[@class='ng-arrow-wrapper'])[2]"));
		ele.click();
	}

	// *[contains(@class,'ng-option ng-option-selected ng-star-inserted
	// ng-option-marked')]
	public void clickOnStatusValue() {
		WebElement ele = driver.findElement(
				By.xpath("//*[contains(@class,'ng-option ng-option-selected ng-star-inserted ng-option-marked')]"));
		ele.click();
	}

	@FindBy(xpath = "(//*[@placeholder='Enter unique title'])[1]")
	WebElement EnterRandomRoleName;

	public void enterRoleName(String role) throws Exception {
		EnterRandomRoleName.sendKeys(TestBase.getRandomEmail());
		util.waitUtil.WaitForElementToBePresentUpdate(EnterRandomRoleName, 30);

		TestBase.writeResponse("I enter the Role Name as == " + TestBase.getRandomRoleName());
	}

	public void user_should_see_loginPage_IsChanged() {
		WebElement ele = driver.findElement(By.xpath("//*[@class='bg-img']"));
		assertEquals(true, ele.isDisplayed());
	}

	public void user_should_see_deactivateUser() {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'DEACTIVE')]"));
		assertEquals(true, ele.isDisplayed());
	}

	public void user_should_see_roleIsCreated() {
		WebElement ele = driver.findElement(By.xpath("//*[@id='swal2-title']"));
		assertEquals(true, ele.isDisplayed());
	}

	public void enterDefaultPassword(String locatortext, String textToEnter) throws InterruptedException {
		String xpath = "//*[contains(text(),'" + locatortext + "')]/..//input";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 2);
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter);
	}

}
