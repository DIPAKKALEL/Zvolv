package pageObjects;

import static org.junit.Assert.assertTrue;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import utilities.Utilities;

public class LoginThroughWorkspacePageObj {

	private WebDriver driver;
	Utilities util = new Utilities(driver);

	public LoginThroughWorkspacePageObj(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	@FindBy(xpath = "//p[@class='mb-1 mt-1']")
	public WebElement FindYourWorkspace;

	public void clickOnFindYourWorkspace() {
		util.waitUtil.waitForElementClickable(FindYourWorkspace,10);
		FindYourWorkspace.click();
	}

	@FindBy(xpath = "//input[@placeholder='yoursitename']")
	WebElement WorkSpaceUrl;

	public void enteringWorkSpaceURL(String Workspacename) {
		WorkSpaceUrl.sendKeys(Workspacename);
	}

	@FindBy(xpath = "//span[text()='Continue']")
	WebElement ContinueButton;

	public void clickOnContinueButton() {
		ContinueButton.submit();
	}

	@FindBy(xpath = "//input[@placeholder='Enter email / phone ']")
	WebElement emailOrPhoneNumber;

	public boolean isEmailOrPhoneNumberTextBoxDisplayed() {
		return emailOrPhoneNumber.isDisplayed();
	}

	public void enterEmailOrPhoneNumber(String email) throws Exception {

		// util.waitUtil.waitExecutionForGivenTime(3);
		util.waitUtil.WaitForElementToBePresentUpdate(emailOrPhoneNumber, 0);

		//util.waitUtil.waitExecutionForGivenTime(3);
        util.waitUtil.WaitForElementToBePresentUpdate(emailOrPhoneNumber,30);

		emailOrPhoneNumber.sendKeys(email);
	}

	@FindBy(id = "password")
	WebElement password;

	public void enterPassword(String pwd) {
		password.sendKeys(pwd);
	}

	public boolean isPasswordTextBoxDisplayed() {
		return password.isDisplayed();
	}

	@FindBy(xpath = "//span[text()='Login']")
	WebElement loginButton;

	public void clickOnLoginButton() {
		loginButton.click();

	}

	@FindBy(xpath = "//span[text()='Create zapp']")
	WebElement moduletitle;

	public String gettingmoduletitle() {
		String title = moduletitle.getText();
		return title;
	}

	@FindBy(xpath = "//*[@id='dropdownBasic3']/nz-avatar")
	WebElement userAvatar;

	public void clickOnAvatar() {
		userAvatar.click();
	}

	public boolean isUserAvatarDisplayed() {
		return userAvatar.isDisplayed();
	}

	@FindBy(xpath = "//*[text()='Zapps']")
	WebElement Zapps_Text;

	public void Zapps_Text(String str) {
		String Zapp_Text = Zapps_Text.getText();
		assertTrue("Text Matched", Zapp_Text.contentEquals(str));

	}

	@FindBy(xpath = "//img[@class='ng-star-inserted']")
	WebElement LogoutMenu;
	@FindBy(xpath = "//*[text()='Logout']")
	WebElement Logout_Btn;
	public void Logout_User() {
		
		
	}

}
