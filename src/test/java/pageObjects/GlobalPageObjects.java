package pageObjects;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.WindowType;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import testbase.TestBase;
import utilities.Utilities;

public class GlobalPageObjects extends TestBase {

	public String URL;
	private WebDriver driver;
	Utilities util = new Utilities(driver);
	TestBase testbase = new TestBase();

	public GlobalPageObjects(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	public boolean isElementPresentByVisibleText(String visibleText) {
		return driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]")).isDisplayed();
	}

	public boolean isElementPresentByVisibleTextEquals(String visibleText) {// DIPAK
		return driver.findElement(By.xpath("//*[(text()='" + visibleText + "')]")).isDisplayed();
	}

	public void isElementPresentByVisibleTextIndex(String visibleText, int index) throws InterruptedException {
		WebElement ele = driver.findElement(By.xpath("(//*[contains(text(),'" + visibleText + "')])[" + index + "]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 5);
		util.actionutil.moveToElement(ele);
		assertTrue("Element is not visible", ele.isDisplayed());
	}

	public void isElementPresentByLabelIndex(String lable, int index) throws InterruptedException {// DIPAK
		WebElement ele = null;
		try {
			ele = driver.findElement(By.xpath("//*[contains(text(),'" + lable + "')][" + index + "]/../../..//input"));
			util.waitUtil.WaitForElementToBePresentUpdate(ele, 5);
			util.actionutil.moveToElement(ele);
		} catch (Exception e) {
			TestBase.writeResponse("Element is not visible");
			assertTrue(ele.isDisplayed());
		}
		// assertTrue("Element is not visible", ele.isDisplayed());
	}

	// DIPAK
	public boolean isElementPresentByVisible_Text(String visibleText) {
		WebElement ele = driver.findElement(By.xpath("(//*[text()='" + visibleText + "'])[2]/../.."));
		if (ele.isEnabled()) {
			System.out.println("ELEMENT IS ENABLED");
			System.out.println(ele.isEnabled());
		}
		if (ele.isDisplayed()) {
			System.out.println(ele.getText() + " :is displayed");
		} else {
			System.out.println(ele.getText() + " :is not displayed");
		}
		return ele.isDisplayed();
	}

	public boolean isElementPresentById(String id) {
		return driver.findElement(By.xpath("//*[@id='" + id + "']")).isDisplayed();
	}

	public boolean isElementPresentByName(String name) {
		return driver.findElement(By.xpath("//*[@name='" + name + "']")).isDisplayed();
	}

	public void isElementDisplayedByVisibleText(String string) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + string + "')]"));
		// String Expected = string;
		Assert.assertTrue(string + " Is Not Presented", ele.isDisplayed());

	}

	public void enterTextByPlaceHolder(String placeHolder, String textToEnter) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(@placeholder,'" + placeHolder + "')]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	public void enterTextBydata_dx_PlaceHolder(String placeHolder, String textToEnter) throws Exception {
		WebElement ele = driver
				.findElement(By.xpath("//*[contains(@data-dx_placeholder,'" + placeHolder + "')]/..//input"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	public void clickOnElementByPlaceHolder(String placeHolder) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(@placeholder,'" + placeHolder + "')]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnElementBydata_dx_PlaceHolder(String placeHolder) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(@data-dx_placeholder,'" + placeHolder + "')]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		testbase.javascriptexecutorClick(ele);
		//ele.click();
	}

	public void clickOnElementByNZPlaceHolder(String placeHolder) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(@nzplaceholder,'" + placeHolder + "')]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void enterTextByPlaceHolderAndEnter(String placeHolder, String textToEnter) {
		driver.findElement(By.xpath("//*[contains(@placeholder,'" + placeHolder + "')]")).clear();
		driver.findElement(By.xpath("//*[contains(@placeholder,'" + placeHolder + "')]")).sendKeys(textToEnter);
		driver.findElement(By.xpath("//*[contains(@placeholder,'" + placeHolder + "')]")).sendKeys(Keys.ENTER);
	}

	public void enterTextById(String id, String textToEnter) {
		WebElement ele = driver.findElement(By.xpath("//*[@id='" + id + "']"));
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	public void enterTextByName(String name, String textToEnter) {
		driver.findElement(By.xpath("//*[@name='" + name + "']")).sendKeys(textToEnter);
	}

	public void enterTextByLabelInput(String Label, String textToEnter) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//input"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter, Keys.ENTER);
	}

	public void enterTextByLabelInputWithoutEnterPress(String Label, String textToEnter) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//input"));
		util.actionutil.moveToElement(ele);
		ele.clear();
		util.waitUtil.waitExecutionForGivenTime(1);
		ele.sendKeys(textToEnter);
	}

	public void enterTextByLabelInputSpan(String Label, String textToEnter) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//span[contains(text(),'" + Label + "')]/../../..//input"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter, Keys.ENTER);
	}

	public void enterTextByLabelTextArea(String Label, String textToEnter) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//textarea"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter, Keys.ENTER);
	}

	public void enterTextByLabelTextAreawithoutEnterPress(String Label, String textToEnter) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//textarea"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	public void clickOnElementByVisibleText(String visibleText) throws InterruptedException {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 5);
		// util.waitUtil.waitForElementClickable(ele, 5);
		util.actionutil.moveToElement(ele);
		util.waitUtil.waitExecutionForGivenTime(1);
		ele.click();
	}

	public void clickOnElementByVisibleTextEquals(String visibleText) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[text()='" + visibleText + "']"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnElementByVisibleTextEqualsJS(String visibleText) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[text()='" + visibleText + "']"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		testbase.javascriptexecutorClick(ele);
//		ele.click();
	}

	public void clickOnElementById(String id) {
		driver.findElement(By.xpath("//*[@id='" + id + "']")).click();
	}
	
	public void clickOnAndroidAppElementById(String id) throws Exception {
		WebElement element = driver1.findElement(By.xpath("//*[@id='" + id + "']"));
		util.waitUtil.WaitForElementToBePresentUpdate(element, 15);
		element.click();
	}

	public void clickOnElementByName(String name) {
		driver.findElement(By.xpath("//*[@name='" + name + "']")).click();
	}

	public void clickOnElementByLabelInput(String Label) {
		driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//input")).click();
	}

	public void JSclickOnElementByLabelInput(String Label) throws InterruptedException {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//input"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 5);
		util.actionutil.moveToElement(ele);
		testbase.javascriptexecutorClick(ele);

	}

	public void clickOnElementByLabelInputIndex(String Label, int index) {// DIPAK
		driver.findElement(By.xpath("(//*[contains(text(),'" + Label + "')])[" + index + "]/../../..//input")).click();
	}

	public void clickOnElementByLabelInputINDEX(String Label, int index) {// DIPAK
		driver.findElement(By.xpath("(//*[contains(text(),'" + Label + "')]/../../..//input)[" + index + "]")).click();
	}

	public void JSclickOnElementByLabelInputINDEX(String Label, int index) throws InterruptedException {// DIPAK
		WebElement ele = driver
				.findElement(By.xpath("(//*[contains(text(),'" + Label + "')]/../../..//input)[" + index + "]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 1);
		testbase.javascriptexecutorClick(ele);
	}

	public void clickOnElementByLabelTextarea(String Label) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//textarea"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		ele.click();
		TestBase.writeResponse(ele.getText());
	}

	public void enterTextByLabel(String Label, String textToEnter) {
		driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//input")).sendKeys(textToEnter,
				Keys.ENTER);
	}

	// public void clickOnElementByLabel(String Label) {
	// driver.findElement(By.xpath("//*[contains(text(),'" + Label +
	// "')]/../../..//input"));
	// }

	// public void clickOnElementByDI(String di) {
	// WebElement ele = driver.findElement(By.xpath("(//*[@data-icon='" + di +
	// "'])[1]/.."));
	// JavascriptExecutor jse = (JavascriptExecutor) driver;

	public void clickOnElementByLabel(String Label) {
		driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//input"));
	}

	public void clickOnElementByDI(String di) {
		WebElement ele = driver.findElement(By.xpath("(//*[@data-icon='" + di + "'])[1]/.."));
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click()", ele);
	}

	public void clickOnElementByVisiualTextAndJavaScript(String visibleText) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]"));
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click()", ele);
	}

	public void moveToElementAndClickByVisibleText(String visibleText) {
		WebElement element = driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]"));
		Actions action = new Actions(driver);
		action.moveToElement(element, 0, 0);
		element.click();
	}

	public void moveToElementByVisibleText(String visibleText) {
		WebElement element = driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]"));
		Actions action = new Actions(driver);
		action.moveToElement(element, 0, 0);
	}

	public void moveToElementByCLASS(String classValue) {
		WebElement element = driver.findElement(By.xpath("(//*[@class='" + classValue + "'])"));
		util.actionutil.moveToElement(element);
		// Actions action = new Actions(driver);
		// action.moveToElement(element, 0, 0);
	}

	public void moveToElementByVisibleTextButton(String visibleText) throws InterruptedException {
		WebElement element = driver.findElement(By.xpath("(//*[contains(text(),'" + visibleText + "')])/../.."));
		util.waitUtil.WaitForElementToBePresentUpdate(element, 10);
		util.actionutil.moveToElement(element);
		// Actions action = new Actions(driver);
		// action.moveToElement(element, 0, 0);
	}

	public void clickOnDropDownByVisibleText(String visibleText) {
		driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]/..//i/*[@data-icon='down']")).click();
		// driver.findElement(By.xpath("//*[contains(text(),'"+visibleText+"')]/../div/div")).click();
	}

	public void clickOndownarrowByVisibleText(String visibleText) {
		driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]/../../span")).click();
	}

	public void clickOndownarrowByVisibleText2(String visibleText) {
		driver.findElement(By.xpath("//*[contains(text(),'View Operator')]/..//*[@type='down']")).click();
	}

	public void clickOndownarrowByVisibleText2(String string, String string1) {
		driver.findElement(By.xpath("//*[contains(text(),'" + string + "')]/../..//*[@type='" + string1 + "']"))
				.click();
	}

	public void clickOnSubmitFormByVisibleText(String visibleText) {
		driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]/../../button[@type='submit']"));
	}

	public void clickOnButtonByVisibleTextEquals(String visibleText) {
		driver.findElement(By.xpath("//*[text()='" + visibleText + "']/../..")).click();
	}

	public void clickOnButtonByVisibleText(String visibleText) throws InterruptedException {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]/.."));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 10);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnButtonByVisibleText2(String visibleText) {
		driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]/../..")).click();
	}

	public void clickOnElementbyDI(String di) {
		driver.findElement(By.xpath("(//*[@data-icon='" + di + "'])/..")).click();
	}

	public void clickOnElementByDIButton(String di) {
		driver.findElement(By.xpath("(//*[@data-icon='" + di + "'])/../..")).click();
	}

	public void clickOnButtonByVisibleTextJavaScript(String visibleText) {
		// driver.findElement(By.xpath("//*[contains(text(),'"+visibleText+"')]/..")).click();
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]/.."));
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click()", ele);
	}

	public void clickOnButtonByVisibleTextActionClass(String visibleText) {
		// driver.findElement(By.xpath("//*[contains(text(),'"+visibleText+"')]/..")).click();
		WebElement element = driver.findElement(By.xpath("//*[contains(text(),'" + visibleText + "')]/.."));
		Actions actions = new Actions(driver);
		actions.moveToElement(element).click().build().perform();
	}

	public void clickOnButtonById(String id) {
		driver.findElement(By.xpath("//*[@id='" + id + "']")).click();
	}

	public void clickOnButtonByName(String name) {
		driver.findElement(By.xpath("//*[@name='" + name + "']")).click();
	}

	// Saikumar
	public void clickOnElementByType(String type) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[@type='" + type + "']/.."));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnElementByTypeIndex(String type, int index) throws Exception {
		WebElement ele = driver.findElement(By.xpath("(//*[@type='" + type + "']/..)[" + index + "]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		if (!ele.isSelected()) {
			ele.click();
		} else {

		}

	}

	public void clickOnElementByNZType(String type) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[@nztype='" + type + "']/.."));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnDropdownByNzPlaceHolder(String string) throws Exception {
		WebElement ele = driver.findElement(By.xpath("(//*[@nzplaceholder='" + string + "'])"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnDropdownByNzPlaceHolderByIndex(String string, int index) throws Exception {
		WebElement ele = driver.findElement(By.xpath("(//*[@nzplaceholder='" + string + "'])[" + index + "]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnDropdownByVisibleText(String string) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + string + "')]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnElemetByVisibleTextIndex(String string, int index) throws Exception {
		WebElement ele = driver.findElement(By.xpath("(//*[contains(text(),'" + string + "')])[" + index + "]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnIconByVisibleTextIndex(String string, int index) throws Exception {
		WebElement ele = driver.findElement(By.xpath("(//*[@data-icon='" + string + "'])[" + index + "]/../.."));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnIconButtonByVisibleTextIndex(String string, int index) {// DIPAK
		WebElement ele = driver.findElement(By.xpath("(//*[@data-icon='" + string + "'])[" + index + "]/../.."));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnIconButtonByVisibleTextIndex2(String string, int index) {// DIPAK
		WebElement ele = driver.findElement(By.xpath("(//*[@data-icon='" + string + "'])[" + index + "]/.."));
		util.actionutil.moveToElement(ele);
		util.actionutil.javascriptexecutorClick(ele);
	}

	public void clickOnElementByHeader(String string, String string1) {
		WebElement ele = driver.findElement(
				By.xpath("//*[contains(text(),'" + string + "')]/../../..//*[contains(text(),'" + string1 + "')]"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnButtonByHeader(String string, String string1) {
		WebElement ele = driver.findElement(
				By.xpath("//*[contains(text(),'" + string + "')]/..//*[contains(text(),'" + string1 + "')]/.."));
		util.waitUtil.waitForElementClickable(ele, 5);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnButtonByHeader1(String string, String string1) {
		WebElement ele = driver.findElement(
				By.xpath("//*[contains(text(),'" + string + "')]/../../..//*[contains(text(),'" + string1 + "')]/.."));
		util.waitUtil.waitForElementClickable(ele, 5);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnElementByLabel(String string, String string1) {
		WebElement ele = driver.findElement(
				By.xpath("//*[contains(text(),'" + string + "')]/..//*[contains(text(),'" + string1 + "')]"));
		util.actionutil.moveToElement(ele);
		if (ele.isDisplayed()) {
			ele.click();
		} else {

		}
	}

	public void clickOnStyleByHeader(String string, String string1) throws Exception {
		WebElement ele = driver
				.findElement(By.xpath("//*[contains(text(),'" + string + "')]/../../..//*[@class='" + string1 + "']"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	// public void clickOnElementByLabel(String string, String string1) throws
	// Exception {
	// WebElement ele = driver.findElement(
	// By.xpath("//*[contains(text(),'" + string + "')]/..//*[contains(text(),'" +
	// string1 + "')]"));
	// util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
	// util.actionutil.moveToElement(ele);
	// ele.click();
	// }

	// public void clickOnButtonByHeader(String string, String string1) throws
	// Exception {
	// WebElement ele = driver.findElement(
	// By.xpath("//*[contains(text(),'" + string + "')]/..//*[contains(text(),'" +
	// string1 + "')]/.."));
	// util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
	// util.actionutil.moveToElement(ele);
	// ele.click();
	// }

	// public void clickOnButtonByHeader1(String string, String string1) throws
	// Exception {
	// WebElement ele = driver.findElement(
	// By.xpath("//*[contains(text(),'" + string +
	// "')]/../../..//*[contains(text(),'" + string1 + "')]/.."));
	// util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
	// util.actionutil.moveToElement(ele);
	// ele.click();
	// }

	public void clickOnButtonByHeader2(String string, String string1) throws Exception {
		WebElement ele = driver.findElement(
				By.xpath("//*[contains(text(),'" + string + "')]/..//*[contains(text(),'" + string1 + "')]/../.."));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnButtonByHeader3(String string, String string1) {
		WebElement ele = driver.findElement(
				By.xpath("//*[contains(text(),'" + string + "')]/../..//*[contains(text(),'" + string1 + "')]/.."));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnButtonByHeaderByIndex(String string, String string1, int index) throws Exception {
		WebElement ele = driver.findElement(By.xpath("(//*[contains(text(),'" + string + "')])[" + index
				+ "]/..//*[contains(text(),'" + string1 + "')]/.."));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	// public void clickOnStyleByHeader(String string, String string1) throws
	// Exception {
	// WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + string
	// + "')]/../../..//*[@class='" + string1 + "']"));
	// util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
	// util.actionutil.moveToElement(ele);
	// ele.click();
	// }

	public void clickOnElementByLabelIndex2(String string, int index, String string1) throws InterruptedException {
		WebElement ele = driver.findElement(By.xpath(
				"(//*[contains(text(),'" + string + "')]/../..//*[@data-icon='" + string1 + "'])[" + index + "]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 5);
		util.actionutil.moveToElement(ele);
		if (ele.isDisplayed()) {
			ele.click();
		} else {

		}
	}

	public void clickOnDropDownByLabel(String Label) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/..//input"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnVisibleTextUsingNormaliseSpace(String string) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//li[normalize-space()='" + string + "']"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.waitUtil.waitForElementClickable(ele, 10);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnVisibleTextUsingNormaliseSPACE(String string) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//li[normalize-space()='" + string + "']"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.waitUtil.waitForElementClickable(ele, 10);
		ele.click();
	}

	public void clickOnVisibleTextFromDropdownSpan(String string) {
		WebElement ele = driver.findElement(By.xpath("//li//span[text()='" + string + "']"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnIconByVisibleText(String string) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + string + "')]/../div[1]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void enterTextUsingLabelInputTag(String string, String value) throws Exception {
		String xpath = "//*[contains(text(),'" + string + "')]/..//input";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(value);
		// , Keys.ENTER
	}

	public void enterTextUsingLabelInputTagEnter(String string, String value) {
		String xpath = "//*[contains(text(),'" + string + "')]/..//input";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(value, Keys.ENTER);

	}

	public void clickByLink(String string) throws Exception {
		String xpath = "//*[@href='/" + string + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void enterTextByNzPlaceHolder(String string, String Value) throws Exception {
		String xpath = "//*[@nzplaceholder='" + string + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.sendKeys(Value);
	}

	public void enterTextByDATAPlaceHolder(String string, String Value) throws Exception {
		String xpath = "//*[@data-placeholder='" + string + "']";// *[@data-placeholder='Default value']
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.sendKeys(Value);
	}

	public void clickByVisibleText(String string) throws Exception {
		String xpath = "//*[text()='" + string + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickByVisibleTextEqualIndex(String string, int index) throws Exception {
		String xpath = "(//*[text()='" + string + "'])[" + index + "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickButtonByVisibleText(String string) throws Exception {
		String xpath = "//*[text()='" + string + "']/../..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnFiledsByIndex(String string) throws Exception {
		String xpath = "(//*[contains(text(),'" + string + "')])[2]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	// public void NewTab() {
	// JavascriptExecutor jse = (JavascriptExecutor) driver;
	// jse.executeScript("window.open('" + URL + "','_blank');");

	public void clickOnElementByLabelTextarea2(String Label) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../../..//textarea"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		ele.click();
		// TestBase.writeResponse(ele.getText());
	}

	public void NewTabWithUrl() {
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		URL = "https://temp-mail.org/en/";
		jse.executeScript("window.open('" + URL + "','_blank');");
		ArrayList<String> tab = new ArrayList<>(driver.getWindowHandles());
		driver.switchTo().window(tab.get(1));
	}

	public void NewTab() {
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.open('" + URL + "','_blank');");
		String apiUrl = URL;

		// Send GET request and get the response

		Response response = RestAssured.get(apiUrl);

		// Extract and print the response details
		String ExpectedResponse = "200";
		int Code = response.getStatusCode();
		String responseCode = String.valueOf(Code);
		TestBase.writeResponse("Expected API Response Code: " + ExpectedResponse);
		TestBase.writeResponse("Actual API Response Code: " + response.getStatusCode());
		assertEquals(ExpectedResponse, responseCode);
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());

	}

	public void NewWindow() {
		driver.switchTo().newWindow(WindowType.WINDOW);
		driver.get(URL);

		String apiUrl = URL;

		// Send GET request and get the response

		Response response = RestAssured.get(apiUrl);
		// String ExpectedResponse = "200";
		// int responseCode = response.getStatusCode();
		// assertEquals(ExpectedResponse, responseCode);
		// String ExpectedResponse = "200";
		// int responseCode = response.getStatusCode();
		// assertEquals(ExpectedResponse, responseCode);

		// Extract and print the response details
		String ExpectedResponse = "200";
		int Code = response.getStatusCode();
		String responseCode = String.valueOf(Code);
		TestBase.writeResponse("Expected API Response Code: " + ExpectedResponse);
		TestBase.writeResponse("Actual API Response Code: " + response.getStatusCode());
		assertEquals(ExpectedResponse, responseCode);
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());
		TestBase.writeResponse("Actual API Response Code: " + response.getStatusCode());
		assertEquals(ExpectedResponse, responseCode);
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());

	}

	public void getURL() {
		URL = driver.getCurrentUrl();
	}

	public void Tab() {
		util.actionutil.TAB();

	}

	// >>>>>>> rohit

	public void switchToNextTab() {
		ArrayList<String> tab = new ArrayList<>(driver.getWindowHandles());
		driver.switchTo().window(tab.get(1));
		// Set<String> windowHandles = driver.getWindowHandles();
		//
		// // Switch to the new tab
		// for (String handle : windowHandles) {
		// driver.switchTo().window(handle);
		// }
		URL = driver.getCurrentUrl();
		TestBase.writeResponse(URL);

		String apiUrl = URL;

		// Send GET request and get the response

		Response response = RestAssured.get(apiUrl);
		// String ExpectedResponse = "200";
		// int responseCode = response.getStatusCode();
		// assertEquals(ExpectedResponse, responseCode);
		// String ExpectedResponse = "200";
		// int responseCode = response.getStatusCode();
		// assertEquals(ExpectedResponse, responseCode);

		// Extract and print the response details
		String ExpectedResponse = "200";
		int Code = response.getStatusCode();
		String responseCode = String.valueOf(Code);
		TestBase.writeResponse("Expected API Response Code: " + ExpectedResponse);
		TestBase.writeResponse("Actual API Response Code: " + response.getStatusCode());
		assertEquals(ExpectedResponse, responseCode);
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());

	}

	public void getResponseOFAPI() {

		URL = driver.getCurrentUrl();
		TestBase.writeResponse(URL);

		String apiUrl = URL;

		// Send GET request and get the response

		Response response = RestAssured.get(apiUrl);
		// String ExpectedResponse = "200";
		// int responseCode = response.getStatusCode();
		// assertEquals(ExpectedResponse, responseCode);

		// String ExpectedResponse = "200";
		// int responseCode = response.getStatusCode();
		// assertEquals(ExpectedResponse, responseCode);

		// Extract and print the response details
		String ExpectedResponse = "200";
		int Code = response.getStatusCode();
		String responseCode = String.valueOf(Code);
		TestBase.writeResponse("Expected API Response Code: " + ExpectedResponse);
		TestBase.writeResponse("Actual API Response Code: " + response.getStatusCode());
		assertEquals(ExpectedResponse, responseCode);
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());
		// TestBase.writeResponse("Actual API Response Code: " +
		// response.getStatusCode());
		// assertEquals(ExpectedResponse, responseCode);
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());

	}

	public void switchToParentTab() {
		ArrayList<String> tab = new ArrayList<>(driver.getWindowHandles());
		driver.switchTo().window(tab.get(0));
	}

	public void incognito() {
		URL = driver.getCurrentUrl();
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.open('" + URL + "', '_blank', 'incognito')");
		jse.executeScript("window.open('" + URL + "', '_blank', 'incognito')");

		String apiUrl = URL;

		// Send GET request and get the response

		Response response = RestAssured.get(apiUrl);
		// String ExpectedResponse = "200";
		// int responseCode = response.getStatusCode();
		// assertEquals(ExpectedResponse, responseCode);
		// String ExpectedResponse = "200";
		// int responseCode = response.getStatusCode();
		// assertEquals(ExpectedResponse, responseCode);

		// Extract and print the response details
		String ExpectedResponse = "200";
		int Code = response.getStatusCode();
		String responseCode = String.valueOf(Code);
		TestBase.writeResponse("Expected API Response Code: " + ExpectedResponse);
		TestBase.writeResponse("Actual API Response Code: " + response.getStatusCode());
		assertEquals(ExpectedResponse, responseCode);
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());
		// TestBase.writeResponse("Actual API Response Code: " +
		// response.getStatusCode());
		// assertEquals(ExpectedResponse, responseCode);
		// TestBase.writeResponse("API Response Body:\n" +
		// response.getBody().asString());

	}

	public void selectDate(String string) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(@title,'" + string + "')]"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void uploadFileFromLabel(String string, String file) {
		WebElement ele = driver
				.findElement(By.xpath("//*[contains(text(),'" + string + "')]/../../..//*[@type='file']"));
		ele.sendKeys(System.getProperty("user.dir") + file);
	}

	// Newly added Page objects
	public void enterTextByLabel2(String Label, String textToEnter) {
		driver.findElement(
				By.xpath("//*[contains(text(),'" + Label + "')]/following-sibling::*[self::textarea or self::input]"))
				.sendKeys(textToEnter);
	}

	public void clickOnDropDownByLabel1(String label) {// label[normalize-space()='"+label+"']/following-sibling::ng-select
		driver.findElement(By.xpath("//label[normalize-space()='" + label
				+ "']/following-sibling::*[self::nz-select or self::ng-select]/div")).click();
	}

	public void enterInDropdownByPlaceholder(String placeHolder, String textToEnter) {
		driver.findElement(By.xpath(
				"//div[normalize-space()='" + placeHolder + "']/following-sibling::div[@class='ng-input']//input"))
				.sendKeys(textToEnter, Keys.ENTER);
	}

	// public void clickOnElementByVisibleTextInDropdown(String visibleText) {
	// String xpathExpression = "//*[self::ul or self::div]//*[self::li or
	// self::span][normalize-space()='"
	// + visibleText + "']";
	// driver.findElement(By.xpath(xpathExpression)).click();

	public void clickOnElementByVisibleTextInDropdown(String visibleText) {
		String xpathExpression = "//*[self::ul or self::div]//*[self::li or self::span][normalize-space()='"
				+ visibleText + "']";
		driver.findElement(By.xpath(xpathExpression)).click();
		driver.findElement(By.xpath("//li[normalize-space()='" + visibleText + "']")).click();
	}
	// public void clickOnAnyKeyInKeyboard(String key) {
	// Actions actions=new Actions(driver);
	// Keys keyEnum=Keys.valueOf(key.toUpperCase());
	// actions.sendKeys(keyEnum).perform();
	// >>>>>>> rohit
	// }

	public void clickOnAnyKeyInKeyboard(String key) {
		Actions actions = new Actions(driver);
		Keys keyEnum = Keys.valueOf(key.toUpperCase());
		actions.sendKeys(keyEnum).perform();
	}

	public void refreshPage() {
		driver.get(driver.getCurrentUrl());
	}

	public void clickOnPlaceholderByLabel(String string, String string1) {
		String xpathExpression = "//*[contains(text(),'" + string + "')]/..//*[contains(text(),'" + string1 + "')]";
		driver.findElement(By.xpath(xpathExpression)).click();
	}
	//
	// public String getTextFromInputFieldByLabel(String label)
	// {//newlyAddedBySharath9thFeb
	// return
	// driver.findElement(By.xpath("//*[contains(text(),'"+label+"')]/../../..//input")).getText();
	// }
	// >>>>>>> rohit
	//
	// public void clickOnPlaceholderByLabel(String string, String string1) {
	// String xpathExpression = "//*[contains(text(),'" + string +
	// "')]/..//*[contains(text(),'" + string1 + "')]";
	// driver.findElement(By.xpath(xpathExpression)).click();
	// }
	//
	// public String getTextFromInputFieldByLabel(String label) {//
	// newlyAddedBySharath9thFeb
	// return driver.findElement(By.xpath("//*[contains(text(),'" + label +
	// "')]/../../..//input")).getText();
	// }

	public void clickonDropdownOption(String str) {
		String[] split = str.split("=");
		String locator = split[0];
		String locatorText = split[1];
		if (locator.equals("VT")) {
			String xpath = "//li[contains(text(),'" + locatorText + "')]";
			WebElement ele = driver.findElement(By.xpath(xpath));
			util.actionutil.moveToElement(ele);
			ele.click();
		}
	}
	// DIPAK

	public void clickOnDIbyIndexButton(String string, int index) {
		String xpath = "(//*[@data-icon='" + string + "'])[" + index + "]/../..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnVisibleTextbyIndexButton(String string, int index) {
		String xpath = "(//*[contains(text(),'" + string + "')])[" + index + "]/../..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnBodyByIndex(int index) {
		String xpath = "//div[contains(@class,'cdk-overlay-backdrop')][" + index + "]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		testbase.javascriptexecutorClick(element);
	}

	// DIPAK
	public void WebElementNotVisisbleByVisibleTextEQ(String string) {
		String xpath = "(//*[text()='" + string + "'])";
		try {
			WebElement element = driver.findElement(By.xpath(xpath));
			util.waitUtil.WaitForElementToBePresentUpdate(element, 1);
			util.actionutil.moveToElement(element);
			assertFalse("WebElement is Visible", element.isDisplayed());
		} catch (Exception e) {
			TestBase.writeResponse("WebElement is NOT VISIBLE :");
		}
	}

	public void WelElementPresentVisibleByText(String string) {
		String str = "(//*[contains(text(),'" + string + "')])";
		WebElement ele = driver.findElement(By.xpath(str));
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].scrollIntoView();", ele);
		assertTrue("WebElement is not Visible ", ele.isDisplayed());
	}

	public void KeyBoardKeyPressToSeeWebElement(String Key, int int1, String string) {
		for (int i = 0; i <= int1; i++) {
			String str = "//*[@title='" + string + "']";
			// String str = "(//*[contains(text(),'" + string + "')])";
			WebElement ele = driver.findElement(By.xpath(str));
			if (ele.isDisplayed()) {
				assertTrue(ele.isDisplayed());
				testbase.javascriptexecutorClick(ele);
				// ele.click();
				break;
			} else {
				Actions actions = new Actions(driver);
				Keys keyEnum = Keys.valueOf(Key.toUpperCase());
				actions.sendKeys(keyEnum).build().perform();
				if (i == int1) {
					TestBase.writeResponse("WebElement is Not Displayed");
				}
			}
		}

	}

	// rohit

	// i[@class='ft-user-plus']
	// public void clickOnVisibleText(String string) {
	// String xpath = "(//i[@class='"+string+"'])";
	// WebElement ele = driver.findElement(By.xpath(xpath));
	// ele.click();
	// }

	// (//*[contains(text(),'Add another')])[2]
	// public void clickOnVisibleTextButtonByIndex (String string , int index ) {
	// WebElement ele =
	// driver.findElement(By.xpath("(//*[contains(text(),'"+string+"')])["+index+"]"));
	// util.actionutil.moveToElement(ele);
	// ele.click();
	// }

	// *[contains(text(),'System Admin')]
	public void enterTextByInput(String string, String textToEnter) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + string + "')]"));
		ele.sendKeys(textToEnter, Keys.ENTER);
	}

	// *[@class='ngx-editor-textarea']
	public void enterTextByClass(String string, String textToEnter) {
		WebElement ele = driver.findElement(By.xpath("//*[@class='" + string + "']"));
		ele.clear();
		ele.sendKeys(textToEnter, Keys.ENTER);
	}

	// *[@class='ft-filter']
	public void clickOnIcon(String string) {
		WebElement ele = driver.findElement(By.xpath("//*[@class='ft-" + string + "']"));
		ele.click();
	}

	// span[@class="ng-value-icon right ng-star-inserted"]
	public void clickIconBySpan(String string) {
		WebElement ele = driver.findElement(By.xpath("//span[@class='" + string + "']"));
		if (ele.isDisplayed()) {
			ele.click();
		} else {

		}
	}

	// *[@nzcontent="Deactivate selected users"]/..
	public void clickOnElementByNZConetnt(String type) {
		WebElement ele = driver.findElement(By.xpath("//*[@nzcontent='" + type + "']/.."));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	// (//*[contains(text(),'Child Roles')]/..//*[contains(text(),'×')])[1]
	public void clickOnElementByLabelIndex(String string, int index, String string1) {
		WebElement ele = driver.findElement(By.xpath(
				"(//*[contains(text(),'" + string + "')]/..//*[contains(text(),'" + string1 + "')])[" + index + "]"));
		util.actionutil.moveToElement(ele);
		if (ele.isDisplayed()) {
			ele.click();
		} else {

		}
	}

	// (//*[contains(text(),'Choose')])[4]/..//input
	public void clickOnInputByLabelIndex(String Label, int index) {
		WebElement ele = driver
				.findElement(By.xpath("(//*[contains(text(),'" + Label + "')])[" + index + "]/..//input"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	// (//*[contains(text(),'dc')])[2]/../..//input
	public void clickOnInputByLabelIN(String Label, int index) {
		WebElement ele = driver
				.findElement(By.xpath("(//*[contains(text(),'" + Label + "')])[" + index + "]/../..//input"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnSwitch(String string, String string1) {
		WebElement ele = driver
				.findElement(By.xpath("//*[contains(text(),'" + string + "')]/../..//*[@class='ant-" + string1 + "']"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnElementByDIIndex(String di, int index) {
		WebElement ele = driver.findElement(By.xpath("(//*[@data-icon='" + di + "'])[" + index + "]/.."));
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click()", ele);
	}

	// (//*[@nztype="primary"])[1]
	public void clickOnElementByNzTypeByIndex(String string, int index) {
		WebElement ele = driver.findElement(By.xpath("(//*[@nztype='" + string + "'])[" + index + "]"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnElementByNzTypeByIndexButton(String string, int index) {// DIPAK
		WebElement ele = driver.findElement(By.xpath("(//*[@nztype='" + string + "'])[" + index + "]/../.."));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void enterTextByInputLabel(String Label, String textToEnter) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../..//input"));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	public void clickOnElementByInputLabel(String string) throws InterruptedException {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + string + "')]/../..//input"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 2);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnElementByButtonByIndex(String string, int index) {
		WebElement ele = driver.findElement(By.xpath("(//*[contains(text(),'" + string + "')])[" + index + "]/.."));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void moveToElementByDataIcon(String visibleText) {
		WebElement element = driver.findElement(By.xpath("//*[@data-icon='" + visibleText + "']"));
		Actions action = new Actions(driver);
		action.moveToElement(element, 0, 0);
	}

	public void clickOnElementByInputValue(String string) {
		WebElement ele = driver.findElement(By.xpath("//*[@value='" + string + "']"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void moveToElementByID(String visibleText) {
		WebElement element = driver.findElement(By.xpath("//*[@id='" + visibleText + "']"));
		Actions action = new Actions(driver);
		action.moveToElement(element, 0, 0);
	}

	public void clickOnNzTypeIndex(String string, int index) {
		WebElement ele = driver.findElement(By.xpath("(//*[@nztype='" + string + "'])[" + index + "]"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void enterValueByType(String string, String value) {
		String xpath = "//*[@type='" + string + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(value);
	}

	public void EditIconForm(String string, int index) throws InterruptedException {
		WebElement ele = driver.findElement(By.xpath("(//*[@data-icon='" + string + "']/../..)[" + index + "]"));
		// WebElement ele = driver
		// .findElement(By.xpath("(//table//tr[@aria-selected='false']//*[@data-icon='edit']/../..)[1]"));
		// WebElement ele = driver.findElement(By.xpath("(//*[@nztype='" + string +
		// "'])[" + index + "]/../.."));
		if (ele.isEnabled()) {
			util.waitUtil.WaitForElementToBePresentUpdate(ele, 10);
			// util.waitUtil.waitForElementClickable(ele, 10);
			// util.actionutil.moveToElement(ele);
			testbase.javascriptexecutorClick(ele);
			// ele.click();
		} else {
			System.out.println("Element is not enabled");
		}
	}

	public void elementPresentWithText(String string, int index) throws InterruptedException {
		String xpath = "(//span//nz-input-group)[" + index + "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 2);
		assertTrue("Element is not Visible", ele.isDisplayed());
	}

	public void isSelectedCheckboxVisible(String lable, int index) {
		WebElement ele = null;
		try {
			String xpath = "(//*[contains(text(),'" + lable + "')]/../../../../../../..//input)[" + index + "]";
			ele = driver.findElement(By.xpath(xpath));
			util.waitUtil.WaitForElementToBePresentUpdate(ele, 2);
		} catch (Exception e) {
			assertTrue(ele.isDisplayed());
			TestBase.writeResponse("Element is not visible");
		}
	}

	public void ratingBarRating(int rating) throws InterruptedException {
		String xpath = "(//*[@class='ant-rate-star ng-star-inserted ant-rate-star-full'])";
		List<WebElement> ele = driver.findElements(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdateList(ele, 10);
		int size = ele.size();
		assertEquals("Rating are not matched :", rating, size);
	}

}
