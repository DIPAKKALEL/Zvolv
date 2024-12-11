
package pageObjects;

import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import testbase.TestBase;
import utilities.Utilities;

public class CreateDatabasePageObjects {

	private WebDriver driver;
	public String dbname;
	Utilities util = new Utilities(driver);

	public CreateDatabasePageObjects(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	@FindBy(xpath = "//*[text()='End to End']")
	WebElement zapp;

	public void clickOnZapp() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(zapp, 10);
		util.actionutil.moveToElement(zapp);
		zapp.click();
	}

	@FindBy(xpath = "//i[@class='ft-server']")
	WebElement Databases;

	public void clickOnDataBases() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(Databases, 10);
		util.actionutil.moveToElement(Databases);
		util.actionutil.click(Databases);
	}

	@FindBy(xpath = "//span[text()='Create database']")
	WebElement Createdatabasebutton;

	public void createDataBaseButton() {
		// util.waitUtil.waitForElementClickable();
		String actualcreatebutton = Createdatabasebutton.getText();
		String expectedcreatebutton = "Create database";
		TestBase.writeResponse("actual displayed button is == " + actualcreatebutton);
		TestBase.writeResponse("expected displayed button is == " + expectedcreatebutton);
		Assert.assertEquals(expectedcreatebutton, actualcreatebutton);
	}

	@FindBy(xpath = "//button[contains(@class,'ant-btn ant-btn-prima')]")
	WebElement CreateDatabase;

	public void ClickOnCretaeDatabase() {
		CreateDatabase.click();
	}
	@FindBy(xpath = "//span[text()='Create new database']")
	WebElement createnewdatabaseform;

	public void createNewDataBaseForm() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(createnewdatabaseform, 10);
		String actualform1name = createnewdatabaseform.getText();
		String expectedform1name = "Create new database";
		TestBase.writeResponse("expected displayed form name is == " + expectedform1name);
		TestBase.writeResponse("actual displayed form name is == " + actualform1name);
		Assert.assertEquals(expectedform1name, actualform1name);
		// util.waitUtil.waitForElementClickable();
	}

	@FindBy(xpath = "//input[@name='title']")
	WebElement EnterDatabasename;

	public void enteringDatabasename(String database) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(EnterDatabasename, 10);
		EnterDatabasename.sendKeys(TestBase.getDbname());
		TestBase.writeResponse("I enter the database name as == " + TestBase.dbname);
	}

	@FindBy(xpath = "//textarea[@id='description']")
	WebElement description;

	public void enterDescripton(String Description) {
		description.sendKeys(Description);
	}

	@FindBy(xpath = "(//input[@type='text'])[4]")
	WebElement tag;

	public void entertag(String tagname) {
		util.actionutil.click(tag);
		tag.sendKeys(tagname, Keys.ENTER);
	}

	@FindBy(xpath = "//button[@type='submit']")
	WebElement nextbutton;

	public void clickOnNextButton() {
		nextbutton.click();
	}

	@FindBy(xpath = "//span[text()='Database color or avatar']")
	WebElement choosecolourform;

	public void dataBaseColourform() {
		String actualform2name = choosecolourform.getText();
		String expectedform2name = "Database color or avatar";
		TestBase.writeResponse("expected displayed form name is == " + expectedform2name);
		TestBase.writeResponse("actual displayed form name is == " + actualform2name);
		Assert.assertEquals(expectedform2name, actualform2name);
	}

	@FindBy(xpath = "(//button[contains(@class,'ant-btn ant-btn-link ')])[9]")
	WebElement Colour;

	public void chooseColour() {
		Colour.click();
	}

	@FindBy(xpath = "(//button[@nztype='default'])[35]")
	WebElement Avatar;

	public void chooseAvatar() {
		Avatar.click();
	}

	@FindBy(xpath = "(//button[contains(@class,'ant-btn ant-btn-primary')])[3]")
	WebElement nextbutton2;

	public void clickOnNextButton2() {
		nextbutton2.click();
	}

	@FindBy(xpath = "//span[text()='Who is this database for? ']")
	WebElement databasefor;

	public void databaseforform() {
		String actualform3name = databasefor.getText();
		String expectedform3name = "Who is this database for?";
		TestBase.writeResponse("expected displayed form name is == " + expectedform3name);
		TestBase.writeResponse("actual displayed form name is == " + actualform3name);
		Assert.assertEquals(expectedform3name, actualform3name);
	}

	@FindBy(xpath = "//div[text()='Public']")
	WebElement toPublic;

	public void clickOnPublic() {
		toPublic.click();
	}

	@FindBy(xpath = "(//button[contains(@class,'ant-btn ant-btn-prima')])[2]")
	WebElement nextbutton3;

	public void clickOnNextButton3() {
		nextbutton3.click();
	}

	@FindBy(xpath = "//span[text()='All good?']")
	WebElement allgoodform;

	public void allGoodForm() {
		String actualform4name = allgoodform.getText();
		String expectedform4name = "All good?";
		TestBase.writeResponse("expected displayed form name is == " + expectedform4name);
		TestBase.writeResponse("actual displayed form name is == " + actualform4name);
		Assert.assertEquals(expectedform4name, actualform4name);
	}

	@FindBy(xpath = "(//button[contains(@class,'ant-btn ant-btn-prim')])[2]")
	WebElement createbutton;

	public void clickOnCreateButton() {
		createbutton.click();
	}

	@FindBy(id = "toast-container")
	WebElement FormCreated;

	public void formCreatedSuccessfully() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(FormCreated, 10);
		String expectedpopup = "Form created successfully";
		String Actualpopup = FormCreated.getText();
		TestBase.writeResponse("Actual displayed Popup == " + Actualpopup);
		TestBase.writeResponse("Expected displayed Popup == " + expectedpopup);
		Assert.assertEquals(expectedpopup, Actualpopup);
		// util.waitUtil.waitForElementClickable(FormCreated);
	}

	@FindBy(xpath = "//*[@id='dropdownBasic3']/nz-avatar")
	WebElement useravatar;

	public void clickOnUserAvatar() {
		// util.waitUtil.waitForElementClickable(useravatar);
		useravatar.click();
	}

	@FindBy(xpath = "//span[text()='Logout']")
	WebElement logout;

	public void clickOnLogout() {
		logout.click();
		// util.waitUtil.waitForElementClickable(logout);
	}

}
