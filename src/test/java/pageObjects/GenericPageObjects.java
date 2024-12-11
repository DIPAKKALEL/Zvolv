package pageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import io.cucumber.java.en.Given;
import utilities.Utilities;

public class GenericPageObjects {

	private WebDriver driver;
	Utilities util = new Utilities(driver);

	public GenericPageObjects(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	public void clickByVisibleTextContains(String string) {
		String xpath = "//*[contains(text(),'" + string + "')]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void clickByVisibleTextSpaces(String string) {
		String xpath = "//*[contains(text(),' " + string + "')]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void clickByVisibleText(String string) {
		String xpath = "//*[text()='" + string + "']";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void clickByVisibleTextSpan(String string) {
		String xpath = "//Span[text()='" + string + "']";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void clickOnButtonUsingVisibleText(String string) {
		String xpath = "//*[contains(text(),'" + string + "')]/..";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void clickOnButtonUsingVisibleTextSpace(String string) {
		String xpath = "//*[contains(text(),' " + string + "')]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void clickOnChcekBoxUsingVisibleText(String string) {
		String xpath = "//*[contains(text(),'" + string + "')]/..";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

//******************************Symbols***************************************//
	public void clickonIcons(String string) {
		String xpath = "//*[contains(@type,'" + string + "')]/..";
		driver.findElement(By.xpath(xpath)).click();
	}

	public void clickOnNzTypeSymbols(String string) {
		String xpath = "//*[contains(@nztype,'" + string + "')]/..";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

//********************************************************************************//	
	public void enterTextUsingPlaceHolder1(String string, String value) {
		String xpath = "//*[@placeholder='" + string + "']";
		WebElement element = driver.findElement(By.xpath(xpath));
		element.clear();
		element.sendKeys(value);
	}

	public void enterTextUsinglabel(String string, String value) {
		String xpath = "//*[contains(text(),'" + string + "')]/../textarea";
		WebElement element = driver.findElement(By.xpath(xpath));
		element.clear();
		element.sendKeys(value);
	}

	public void clickOnDropdownUsingLabel(String string) {
		String xpath = "//*[text()='" + string + "']/..//div/div/div";
		driver.findElement(By.xpath(xpath)).click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void clickOnDropDownFromLabel(String string) {
		String xpath = "//*[contains(text(),'" + string + "')]/..//input";
		WebElement element = driver.findElement(By.xpath(xpath));
		element.click();
	}

	public void selectDropdownValuesUsingVisibleText(String string) {
		String xpath = "//*[text()='" + string + "']";
		driver.findElement(By.xpath(xpath)).click();
	}

	public void clickOnBody() {
		String xpath = "//div[contains(@class,'cdk-overlay-backdrop')]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void clickOnBodyJS() {
		String xpath = "//div[contains(@class,'cdk-overlay-backdrop')]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", element);
	}

	public void clickOnBody_1() {
		String xpath = "//div[contains(@class,'cdk-overlay-backdrop')][2]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void clickOnNzTypeSymbolsUsingIndex(String string, int index) {
		String xpath = "(//*[@nztype='" + string + "']/..)[" + index + "]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

}
