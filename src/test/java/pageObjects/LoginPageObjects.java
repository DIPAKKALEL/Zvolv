package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import utilities.Utilities;

public class LoginPageObjects {
	
	private WebDriver driver;
	Utilities util = new Utilities(driver);

	public LoginPageObjects(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath = "//input[@placeholder='Enter email / phone ']")
	WebElement emailOrPhoneNumber;
		public boolean isEmailOrPhoneNumberTextBoxDisplayed()  {
		//util.waitUtil.WaitForElementToBePresentUpdate(emailOrPhoneNumber, 10);
		return emailOrPhoneNumber.isDisplayed();
	}
	
	public void enterEmailOrPhoneNumber(String email) {
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
	
	
	
	/*@FindBy(xpath = "//*[text()='Forgot Password?']")
	WebElement forgotPassword;
	
	/*public void clickOnForgotPasswordLink() {
		forgotPassword.click();
	}
	
	@FindBy(xpath = "//*[@id='swal2-content']/../input[1]")
	WebElement fpEmailOrPhoneNumber;
	
	public void enterFPEmailOrPhoneNumber(String emailOrPhone) {
		fpEmailOrPhoneNumber.sendKeys(emailOrPhone);
	}
	
	@FindBy(xpath = "//*[text()='Submit']")
	WebElement submitButton;
	
	public void clickOnSubmitButton() {
		submitButton.click();
	}*/
}
