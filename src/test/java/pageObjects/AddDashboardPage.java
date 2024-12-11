package pageObjects;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import testbase.TestBase;
import utilities.Utilities;

public class AddDashboardPage extends TestBase {
	// DIPAK
	private WebDriver driver;
	Utilities util = new Utilities(driver);

	public AddDashboardPage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);

	}

	public void UserSawTheLabel(String string) {
		String str = "";
		// System.out.println(driver.findElement(By.xpath("//*[contains(text(),'Details')]")).getText());
		String xpath = "//*[contains(text(),'" + string + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.waitExecutionForGivenTime(0);
//		String Actual = ele.getText();
//		for (int i = 0; i <= Actual.length()-1; i++) {
//			if (Actual.charAt(i) == ' ') {
//				System.out.println("Actual string has a white spaces");
//			} else {
//				str = str + Actual.charAt(i);
//				
//			}
//		}
//		System.out.println("Actual String after removing white spaces :" + str);
//		System.out.println("Actual string :" + Actual);
//		assertTrue(string.equalsIgnoreCase(Actual.trim()));
		// System.out.println(driver.findElement(By.xpath("//*[contains(text(),'Details')]")).getText());
	}

	@FindBy(xpath = "(//span[contains(@class,'ant-select-arrow')])[1]")
	WebElement ViewPersmissionsNewCursor;

	public void DDsomethingNewCursor() {
		util.actionutil.javascriptexecutorClick(ViewPersmissionsNewCursor);
	}

	@FindBy(xpath = "(//span[contains(@class,'ant-select-arrow')])[2]")
	WebElement EditPersmissionsNewCursor;

	public void EditPersmissionsNewCursor() {
		javascriptexecutorClick(EditPersmissionsNewCursor);
	}

	@FindBy(xpath = "(//*[contains(text(),'Select roles')])[2]")
	WebElement editpermissionDD;

	public void editpermissionDD() {
		editpermissionDD.click();
	}

	public void AddDashboardSave_Btn(String string) {
		String[] split = string.split("=");
		String locator = split[0];
		String locatorText = split[1];
		if (locator.equals("VT")) {
			String xpthexpression = "//button//*[contains(text(),'" + locatorText + "')]";
			WebElement ele = driver.findElement(By.xpath(xpthexpression));
			javascriptexecutorClick(ele);
		}
	}

	@FindBy(xpath = "//i[@class='ft-rotate-cw']")
	WebElement ReloadProjects;

	public void clickOnReloadProjects() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(ReloadProjects, 10);
		util.actionutil.moveToElement(ReloadProjects);
		ReloadProjects.click();
		// util.waitUtil.waitExecutionForGivenTime(5);
	}

//Stress Test
	@FindBy(xpath = "//*[contains(text(),'Field')]")
	WebElement field;

	public void clickOnField() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(field, 10);
		javascriptexecutorClick(field);
		// field.click();
	}

	public void enterTextByPlaceHolder(String placeHolder, String textToEnter) throws InterruptedException {
		WebElement ele = driver.findElement(By.xpath("//*[contains(@placeholder,'" + placeHolder + "')]"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 10);
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	@FindBy(xpath = "//*[contains(text(),'Done')]")
	WebElement doneButton;

	public void clickonDoneButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(doneButton, 10);
		doneButton.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//input[@name='title']")
	WebElement EnterDatabasename;

	public void enteringStressDatabasename(String database) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(EnterDatabasename, 10);
		EnterDatabasename.sendKeys(database + " 1000 Fields");
		TestBase.writeResponse("I enter the database name as == " + database);
	}

	@FindBy(xpath = "//input[@placeholder='search by title']")
	public WebElement searchBoxInDatabases;

	public void enterInSearchBoxInDatabases(String dbName) {
		searchBoxInDatabases.clear();
		searchBoxInDatabases.sendKeys(dbName);
	}

	public void clearSearchBoxInDatabases() {
		searchBoxInDatabases.clear();
	}

	@FindBy(xpath = "//input[contains(@class,'ant-input-flat ant-input ng')]")
	WebElement enterDatabaseName;

	public void enterDatabaseName(String database) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(enterDatabaseName, 10);
		enterDatabaseName.sendKeys(TestBase.StressDB);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//*[@title='Text Edit']/../..")
	WebElement textEditTitle;

	public void SelectCheckBoxFieldLabel(String string) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(textEditTitle, 10);
		textEditTitle.click();
		util.waitUtil.waitExecutionForGivenTime(1);
		String xpath = "//li[contains(text(),'" + string + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 10);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click()", ele);
		//checkbox.click();
	}

	@FindBy(xpath = "//input[contains(@class,'mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored')][@placeholder='Add option']")
	public WebElement addOptionInConfigureForm;

	public void EnterDropdownOption(int optionNumber) throws InterruptedException {
	//	for (int i = 1; i <= optionNumber; i++) {
			util.waitUtil.WaitForElementToBePresentUpdate(addOptionInConfigureForm, 10);
		//	addOptionInConfigureForm.sendKeys("Option :" + i);
			addOptionInConfigureForm.sendKeys("Cool Cab");
			util.waitUtil.waitExecutionForGivenTime(1);
			addOptionInConfigureForm.sendKeys(Keys.ENTER);
			addOptionInConfigureForm.sendKeys("Taxi");
			util.waitUtil.waitExecutionForGivenTime(1);
			addOptionInConfigureForm.sendKeys(Keys.ENTER);
			addOptionInConfigureForm.sendKeys("Women Driven");
			util.waitUtil.waitExecutionForGivenTime(1);
			addOptionInConfigureForm.sendKeys(Keys.ENTER);
	//	}
	}

	@FindBy(xpath = "//*[contains(text(),'Select Fields')]/..")
	WebElement selectField;
	@FindBy(xpath = "//mat-option//*[@class='mat-option-pseudo-checkbox mat-pseudo-checkbox ng-star-inserted']")
	List<WebElement> selectfieldOption;

	public void SelectFieldsInSection(int num) {
		int b = 0;
		selectField.click();
		util.waitUtil.waitExecutionForGivenTime(1);
		for (int j = 6; j <= selectfieldOption.size(); j++) {
			javascriptexecutorClick(selectfieldOption.get(j));
			++b;
			if (b == num) {
				break;
			}
		}
	}

	public void SelectInnerFieldsIn(int num) {
		int b = 0;
		util.waitUtil.waitExecutionForGivenTime(1);
		for (int j = 6; j <= selectfieldOption.size(); j++) {
			selectfieldOption.get(j).click();
			++b;
			if (b == num) {
				break;
			}
		}

	}

	public void clickOnbody() {
		String xpath = "//div[contains(@class,'cdk-overlay-backdrop cdk-overlay-transparent-backdrop cdk-overlay-backdrop-showing')]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		javascriptexecutorClick(element);
		// element.click();
	}
	
}
