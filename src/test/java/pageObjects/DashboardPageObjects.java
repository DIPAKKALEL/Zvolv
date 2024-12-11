package pageObjects;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.imageio.ImageIO;

import org.joda.time.LocalDate;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import io.cucumber.java.Scenario;
import ru.yandex.qatools.ashot.AShot;
import ru.yandex.qatools.ashot.Screenshot;
import ru.yandex.qatools.ashot.comparison.ImageDiff;
import ru.yandex.qatools.ashot.comparison.ImageDiffer;
import testbase.TestBase;
import utilities.Utilities;

public class DashboardPageObjects extends TestBase {

	private WebDriver driver;
	Utilities util = new Utilities(driver);
	GlobalPageObjects global = new GlobalPageObjects(driver);

	String day;
	String month;
	String monthOnCalendar;
	String yearOnCalendar;
	int Calenadar_Year;
	String name;
	String NewDashboardTitle;
	Boolean tag = false;
	String NewDashboardName;
	TestBase testbase = new TestBase();

	public DashboardPageObjects(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	public void enterDBName(String string) {
		String xpath = "//*[@placeholder='" + string + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.sendKeys(TestBase.dbname);
	}

	@FindBy(xpath = "//*[@placeholder='Title']")
	WebElement EnterDashboardname;

	public void enterDashboardName(String database) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(EnterDashboardname, 30);
		EnterDashboardname.sendKeys(TestBase.getDashBoardName());
		TestBase.writeResponse("I enter the database name as == " + TestBase.dashboardname);
	}

	// public void clickOnAvatar() {
	// WebElement ele = driver
	// .findElement(By.xpath("//*[@class='ant-avatar ant-avatar-lg ant-avatar-circle
	// ng-star-inserted']"));
	// util.actionutil.moveToElement(ele);
	// ele.click();
	// }

	public void clickOnDashBoard() {
		String xpath = "//*[normalize-space()='" + TestBase.dashboardname + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnAvatar() {
		WebElement ele = driver.findElement(By.xpath("//*[@id='dropdownBasic3']/nz-avatar"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnAdminAvatar() {
		WebElement ele = driver.findElement(By.xpath("//*[@id='dropdownBasic3']/nz-avatar"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnAdministration() {
		String xpath = "//*[@class='ft-lock']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void entervalueOfAttributes(String value, int index) {
		String xpath = "(//*[contains(@class,'ant-select-search__field')])[" + index + "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(value, Keys.ENTER);
	}

	public void enterKey(String value, int index) {
		String xpath = "(//*[@placeholder='Enter Key'])[" + index + "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(value);
	}

	public void entervalueOfUserAttributes(String value) {
		String xpath = "//*[contains(text(),'Attributes')]/../..//*[@type='text']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
		ele.clear();
		ele.sendKeys(value);
		util.waitUtil.waitExecutionForGivenTime(1);
		ele.sendKeys(Keys.ENTER);
	}

	public void clickOnCloseIconOnAttributes() {
		List<WebElement> ele = driver
				.findElements(By.xpath("//*[contains(text(),'Attributes')]/../..//*[@class='ft-x']"));
		int Size = ele.size();
		for (int i = 0; i <= Size - 1; i++) {
			util.waitUtil.waitExecutionForGivenTime(1);
			ele.get(i).click();
//	    	  if(i==Size) {
//	    		  break;
//	    	  }
		}
	}

	@FindBy(id = "toast-container")
	WebElement ToolTipMessage;

	public void getToolTipMessage(String string) throws InterruptedException {
		// String xpath = "//*[contains(text(),'" + string + "')]";
		// WebElement ToolTipMessage = driver.findElement(By.xpath(xpath));
		// util.waitUtil.WaitForElementToBePresentUpdate(element, 0);
		String text = ToolTipMessage.getText();
		String Expectedmsg = string;
		TestBase.writeResponse("Expected display tooltip : " + Expectedmsg);
		TestBase.writeResponse("Actual displayed tooltip : " + text);
		assertEquals(Expectedmsg, text);
	}

	@FindBy(xpath = "(//h4[@class='card-title cursor-pointer mb-0'])[2]")
	WebElement DataTableTitle;

	public void getDataTableTitle() {
		String ExpectedTitle = "DATA TABLE";
		String ActualTitle = DataTableTitle.getText();
		TestBase.writeResponse("Expected display Title : " + ExpectedTitle);
		TestBase.writeResponse("Actual displayed Title : " + ActualTitle);
		assertEquals(ExpectedTitle, ActualTitle);
	}

	public void enterNameOfUser(String string) {
		String xpath = "//*[contains(text(),'Name is required')]/..//input";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(string);
	}

	public void clickOnVisibleTextMultiPath(String string) {
		String xpath = "//div[@class='dx-item-content dx-list-item-content'][normalize-space()='" + string + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void getText(String string) {
		String xpath = "//div[@class='dx-item-content dx-list-item-content'][normalize-space()='" + string + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		String Actual = ele.getText();
		String Expected = string;
		TestBase.writeResponse("Expected text to display : " + Expected);
		TestBase.writeResponse("Actual text to display : " + Actual);
		assertEquals(Expected, Actual);
	}

	public void clickOnIconByHeader(String string, String string2) throws InterruptedException {
		String xpath = "//*[contains(text(),'" + string + "')]/../../..//*[@nztype='" + string2 + "']/..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 5);
		util.waitUtil.waitForElementClickable(ele);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnElementSpan(String string, String string2) throws Exception {
		String xpath = "//span[contains(text(),'" + string + "')]/../..//*[@nztype='" + string2 + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 30);
		util.actionutil.moveToElement(ele);
		ele.click();

	}

	public void clickOnButtonByHeader(String string, String string1) {
		WebElement ele = driver.findElement(
				By.xpath("//*[contains(text(),'" + string + "')]/..//*[contains(text(),'" + string1 + "')]/.."));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnNZPlaceholderByIndex(String string, String string1, int index) {
		String xpath = "(//*[contains(text(),'" + string + "')]/../../..//*[@nzplaceholder='" + string1 + "'])[" + index
				+ "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnDropdownByLabel(String string, String string1) {
		WebElement ele = driver.findElement(
				By.xpath("//*[contains(text(),'" + string + "')]/..//*[@nzplaceholder='" + string1 + "']"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void enterTextUsingPlaceHolderAndLabel(String string, String string1, String Value) {
		String xpath = "//*[contains(text(),'" + string + "')]/..//*[@placeholder='" + string1 + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(Value);
	}

	public void EditMembersOnAdministration(String string) {
		String xpath = "//*[contains(text(),'" + string + "')]/../../../..//button";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void enterTextFromHeader(String string, String string1, String Value) {
		String xpath = "//*[contains(text(),'" + string + "')]/../..//*[contains(text(),'" + string1 + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		// ele.clear();
		ele.sendKeys(Value);
	}

	public void clickOnEditFromFile(String string, String string1) {
		String xpath = "//*[@data-icon='" + string + "']/../../../..//*[@data-icon='" + string1 + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnEditFromText(String string, String string1) throws Exception {
		String xpath = "(//*[contains(text(),'" + string + "')])[2]/../../../..//*[@data-icon='" + string1 + "']/../..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		// util.waitUtil.WaitForElementToBePresentUpdate(ele,30);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnTextFromHeader(String string, String string1) {
		String xpath = "//*[contains(text(),'" + string + "')]/../..//*[contains(text(),'" + string1 + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		if (ele.isDisplayed()) {
			ele.click();
		} else {

		}
	}

	public void clickOnElementFromHeader(String string, String string1) {
		String xpath = "//*[contains(text(),'" + string + "')]/../..//*[contains(text(),'" + string1 + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		if (ele.isDisplayed()) {
			ele.click();
		} else {

		}
	}

	public void getElementFromHeader(String string, String string1) {
		String xpath = "//*[contains(text(),'" + string + "')]/../..//*[contains(text(),'" + string1 + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);

		if (string1.equals("View")) {
			String Viewtext = ele.getText();
			TestBase.writeResponse(Viewtext);
		} else if (string1.equals("Edit")) {
			String Edittext = ele.getText();
			TestBase.writeResponse(Edittext);
		} else if (string1.equals("New Entry")) {
			String NewEntrytext = ele.getText();
			TestBase.writeResponse(NewEntrytext);
		}

	}

	public void getBodyMsg(String Actual) {

		WebElement ele = driver.findElement(By.tagName("h1"));
		util.actionutil.moveToElement(ele);
		Actual = ele.getText();
		TestBase.writeResponse("Displayed msg : " + Actual);

		WebElement ele1 = driver.findElement(By.tagName("p"));
		util.actionutil.moveToElement(ele1);
		String text = ele1.getText();
		TestBase.writeResponse("Displayed msg : " + text);
	}

	public void clickOnFile() {
		String xpath = "//*[contains(@class,'mr-1 ant-avatar ant-avatar-square ant-avatar-image')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnEditOfFile() {
		String xpath = "(//*[@nztype='edit'])[2]/..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnFile2() {
		String xpath = "//*[@class='ng-tns-c48-499 ng-star-inserted']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void enterPlaceHolderByIndex(String string, int index, String value) {
		String xpath = "(//*[@placeholder='" + string + "'])[" + index + "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(value);
	}

	public void enterNZPlaceHolderByIndex(String string, int index, String value) {
		String xpath = "(//*[@nzplaceholder='" + string + "']//input)[" + index + "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(value);
	}

	public void enterTextByLabelInputByIndex(String Label, int index, String textToEnter) {
		WebElement ele = driver
				.findElement(By.xpath("(//*[contains(text(),'" + Label + "')]/../../..//input)[" + index + "]"));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter, Keys.ENTER);
	}

	public void enterTextByLabelInputByIndexwithoutEnterpress(String Label, int index, String textToEnter) {
		WebElement ele = driver
				.findElement(By.xpath("(//*[contains(text(),'" + Label + "')]/../../..//input)[" + index + "]"));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	public void enterTextByLabelTextareaByIndex(String Label, int index, String textToEnter) {
		WebElement ele = driver
				.findElement(By.xpath("(//*[contains(text(),'" + Label + "')])[" + index + "]/../../..//textarea"));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	public void clickOnButtonByVisibleTextIndex(String visibleText, int index) throws InterruptedException {
		WebElement ele = driver
				.findElement(By.xpath("(//*[contains(text(),'" + visibleText + "')])[" + index + "]/.."));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 5);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnIsUserChcekBox(String string, String string1) {
		String xpath = "//*[@placeholder='" + string + "']/../..//*[@type='" + string1 + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		if (ele.isSelected()) {
			ele.click();
			ele.click();
		} else {
			ele.click();
		}

	}

	public void clickOnCloseIcon() throws Exception {
		String xpath = "//*[@class='ft-x danger']";
		List<WebElement> ele = driver.findElements(By.xpath(xpath));
		// util.actionutil.moveToElement(ele);
		int Size = ele.size();
		for (int i = 0; i <= Size - 1; i++) {
			util.waitUtil.waitExecutionForGivenTime(1);
			ele.get(i).click();
//	    	  if(i==Size) {
//	    		  break;
//	    	  }
		}
	}

	public void clickOnClearAllSymbol(String string, String string1) {
		String xpath = "//*[contains(text(),'" + string + "')]/../..//*[@title='" + string1 + "']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnSubmit() {
		String xpath = "//*[contains(text(),'Submit')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnDoNotClose() {
		String xpath = "//*[contains(text(),'Do not close the form')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	@FindBy(xpath = "//*[@class='card-body pt-0 h-100']")
	WebElement element;

	public void TakeScreenShot2(Scenario scenario) {
		if (scenario.equals(scenario)) {
			try {
				System.out.println("Capture Screenshot");
				byte[] screenshot = ((TakesScreenshot) element).getScreenshotAs(OutputType.BYTES);
				String testName = scenario.getName();
				scenario.attach(screenshot, "image/png", testName);
				System.out.println("Screenshot attached successfully");
			} catch (ClassCastException cce) {
				cce.printStackTrace();
			}
		}
	}

	public void TakeScreenShot(Scenario scenario) {
		if (scenario.equals(scenario)) {
			try {
				System.out.println("Capture Screenshot");
				byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
				String testName = scenario.getName();
				scenario.attach(screenshot, "image/png", testName);
				System.out.println("Screenshot attached successfully");
			} catch (ClassCastException cce) {
				cce.printStackTrace();
			}
		}
	}

	// rohit

//	(//*[contains(text(),'Choose')])[2]/../../..//input
//	public void enterLabelInputByIndex(String value,int index) {
//		String xpath = "(//*[contains(text(),'"+value+"')])["+index+"]/../../..//input";
//		WebElement ele = driver.findElement(By.xpath(xpath));
//		util.actionutil.moveToElement(ele);
////		ele.clear();
//		ele.sendKeys(value);
//	}

	// DIPAK //Action Card
	public void clickonCloseButton(String string, String string2) {
		String xpath = "//*[contains(text(),'" + string + "')]/../../preceding-sibling::button//*[@data-icon='"
				+ string2 + "']/..";
		WebElement closeButton = driver.findElement(By.xpath(xpath));
		closeButton.click();

	}

	public void clickonWidgets(String string) {
		String xpath = "(//*[text()='" + string + "'])//../..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	@FindBy(xpath = "(//*[contains(text(),'Done')])[2]")
	WebElement DoneBtn;

	public void DoneBtnCalender() {
		util.actionutil.moveToElement(DoneBtn);
		DoneBtn.click();
	}

	public void calConfig(String str) {
		String[] splitText = str.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			String xpath = "//li[contains(text(),'" + locatorText + "')]";
			WebElement ele = driver.findElement(By.xpath(xpath));
			ele.click();

		}

	}

	public void DeleteTheCaledarWidget(String str) {
		String[] splitText = str.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("ICON")) {
			String xpath = "//*[@class='card-header pb-1']//*[@data-icon='" + locatorText + "']/../..";
			WebElement ele = driver.findElement(By.xpath(xpath));
			ele.click();
			// testbase.javascriptexecutorClick(ele);

		}
	}

	public void SeetingBtnOfCalendar(String str) {
		String[] splitText = str.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			String xpath = "(//*[contains(text(),' " + locatorText + " ')])/../..//div//i[@nztype='setting']/..";
			WebElement ele = driver.findElement(By.xpath(xpath));
			testbase.javascriptexecutorClick(ele);

		}
	}

	public void clickonFilterFromDataPoints(String string) {
		String xpath = "//*[@role='tablist']//li//*[contains(text(),'" + string + "')]/..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	@FindBy(xpath = "(//*[contains(@class,'ant-select-selection--single')])//i")
	WebElement calendarTimeZonedropdwonIcon;

	public void calendarTimeZonedropdwonIcon() {
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click()", calendarTimeZonedropdwonIcon);
		// ele.click();
	}

	@FindBy(xpath = "(//*[contains(@class,'select-selection--single')])[3]")
	WebElement CaledartimeZoneDropDown;

	public void CaledartimeZoneDropDown() {
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click()", CaledartimeZoneDropDown);
		// CaledartimeZoneDropDown.click();
	}

	@FindBy(xpath = "//*[contains(@role,'menu')]/..//li")
	List<WebElement> CalendarTimeZone;

	public void CalendarTimeZones() {
		long expectedSize = 96;
		util.waitUtil.waitExecutionForGivenTime(1);
		long Actualsize = CalendarTimeZone.size();
		util.waitUtil.waitExecutionForGivenTime(2);
		assertEquals(expectedSize, Actualsize);
		writeResponse("Expected Dropdown Size   :" + expectedSize);
		writeResponse("Actual Dropdown Size   :" + Actualsize);
		for (int i = 0; i <= CalendarTimeZone.size() - 1; i++) {
			String Text1 = CalendarTimeZone.get(i).getText();
			for (int j = i + 1; j < CalendarTimeZone.size() - 1; j++) {
				String Text2 = CalendarTimeZone.get(j).getText();
				if (Text1.equals(Text2)) {
					System.out.println(Text1);
					System.out.println(Text2);
					writeResponse("Duplicate Time Zone :" + Text2);
				}
			}
		}
		assertEquals(CalendarTimeZone.get(0).getText(), "(UTC-12:00) International Date Line West");
		assertEquals(CalendarTimeZone.get(1).getText(), "(UTC-11:00) Coordinated Universal Time-11");
		assertEquals(CalendarTimeZone.get(2).getText(), "(UTC-10:00) Hawaii");
		assertEquals(CalendarTimeZone.get(3).getText(), "(UTC-09:00) Alaska");
		assertEquals(CalendarTimeZone.get(4).getText(), "(UTC-08:00) Baja California");
		assertEquals(CalendarTimeZone.get(5).getText(), "(UTC-08:00) Pacific Time (US and Canada)");
		assertEquals(CalendarTimeZone.get(6).getText(), "(UTC-07:00) Chihuahua, La Paz, Mazatlan");
		assertEquals(CalendarTimeZone.get(7).getText(), "(UTC-07:00) Arizona");
		assertEquals(CalendarTimeZone.get(8).getText(), "(UTC-07:00) Mountain Time (US and Canada)");
		assertEquals(CalendarTimeZone.get(9).getText(), "(UTC-06:00) Central Americ");
		assertEquals(CalendarTimeZone.get(10).getText(), "(UTC-06:00) Central Time (US and Canada)");
		assertEquals(CalendarTimeZone.get(11).getText(), "(UTC-06:00) Saskatchewan");
		assertEquals(CalendarTimeZone.get(12).getText(), "(UTC-06:00) Guadalajara, Mexico City, Monterey");
		assertEquals(CalendarTimeZone.get(13).getText(), "(UTC-05:00) Bogota, Lima, Quito");
		assertEquals(CalendarTimeZone.get(14).getText(), "(UTC-05:00) Indiana (East)");
		assertEquals(CalendarTimeZone.get(15).getText(), "(UTC-05:00) Eastern Time (US and Canada)");
		assertEquals(CalendarTimeZone.get(16).getText(), "(UTC-04:30) Caracas");
		assertEquals(CalendarTimeZone.get(17).getText(), "(UTC-04:00) Atlantic Time (Canada)");
		assertEquals(CalendarTimeZone.get(18).getText(), "(UTC-04:00) Asuncion");
		assertEquals(CalendarTimeZone.get(19).getText(), "(UTC-04:00) Georgetown, La Paz, Manaus, San Juan");
		assertEquals(CalendarTimeZone.get(20).getText(), "(UTC-04:00) Cuiaba");
		assertEquals(CalendarTimeZone.get(21).getText(), "(UTC-04:00) Santiago");
		assertEquals(CalendarTimeZone.get(22).getText(), "(UTC-03:30) Newfoundland");
		assertEquals(CalendarTimeZone.get(23).getText(), "(UTC-03:00) Brasilia");
		assertEquals(CalendarTimeZone.get(24).getText(), "(UTC-03:00) Greenland");
		assertEquals(CalendarTimeZone.get(25).getText(), "(UTC-03:00) Cayenne, Fortaleza");
		assertEquals(CalendarTimeZone.get(26).getText(), "(UTC-03:00) Buenos Aires");
		assertEquals(CalendarTimeZone.get(27).getText(), "(UTC-03:00) Montevideo");
		assertEquals(CalendarTimeZone.get(28).getText(), "(UTC-02:00) Coordinated Universal Time-2");
		assertEquals(CalendarTimeZone.get(29).getText(), "(UTC-01:00) Cape Verde");
		assertEquals(CalendarTimeZone.get(30).getText(), "(UTC-01:00) Azores");// duplicate time zone
		assertEquals(CalendarTimeZone.get(31).getText(), "(UTC+00:00) Casablanca");
		assertEquals(CalendarTimeZone.get(32).getText(), "(UTC-01:00) Azores");// duplicate time zone
		assertEquals(CalendarTimeZone.get(33).getText(), "(UTC+00:00) Monrovia, Reykjavik");
		assertEquals(CalendarTimeZone.get(34).getText(), "(UTC+00:00) Dublin, Edinburgh, Lisbon, London");
		assertEquals(CalendarTimeZone.get(35).getText(), "(UTC+00:00) Coordinated Universal Time");
		assertEquals(CalendarTimeZone.get(36).getText(),
				"(UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna");
		assertEquals(CalendarTimeZone.get(37).getText(), "(UTC+01:00) Brussels, Copenhagen, Madrid, Paris");
		assertEquals(CalendarTimeZone.get(38).getText(), "(UTC+01:00) West Central Africa");
		assertEquals(CalendarTimeZone.get(39).getText(),
				"(UTC+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague");
		assertEquals(CalendarTimeZone.get(40).getText(), "(UTC+01:00) Sarajevo, Skopje, Warsaw, Zagreb");
		assertEquals(CalendarTimeZone.get(41).getText(), "(UTC+01:00) Windhoek");
		assertEquals(CalendarTimeZone.get(42).getText(), "(UTC+02:00) Athens, Bucharest, Istanbul");
		assertEquals(CalendarTimeZone.get(43).getText(), "(UTC+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius");
		assertEquals(CalendarTimeZone.get(44).getText(), "(UTC+02:00) Cairo");
		assertEquals(CalendarTimeZone.get(45).getText(), "(UTC+02:00) Damascus");
		assertEquals(CalendarTimeZone.get(46).getText(), "(UTC+02:00) Amman");
		assertEquals(CalendarTimeZone.get(47).getText(), "(UTC+02:00) Harare, Pretoria");
		assertEquals(CalendarTimeZone.get(48).getText(), "(UTC+02:00) Jerusalem");
		assertEquals(CalendarTimeZone.get(49).getText(), "(UTC+02:00) Beirut");
		assertEquals(CalendarTimeZone.get(50).getText(), "(UTC+03:00) Baghdad");
		assertEquals(CalendarTimeZone.get(51).getText(), "(UTC+03:00) Minsk");
		assertEquals(CalendarTimeZone.get(52).getText(), "(UTC+03:00) Kuwait, Riyadh");
		assertEquals(CalendarTimeZone.get(53).getText(), "(UTC+03:00) Nairobi");
		assertEquals(CalendarTimeZone.get(54).getText(), "(UTC+04:00) Moscow, St. Petersburg, Volgograd");
		assertEquals(CalendarTimeZone.get(55).getText(), "(UTC+04:00) Tbilisi");
		assertEquals(CalendarTimeZone.get(56).getText(), "(UTC+04:00) Yerevan");
		assertEquals(CalendarTimeZone.get(57).getText(), "(UTC+04:00) Abu Dhabi, Muscat");
		assertEquals(CalendarTimeZone.get(58).getText(), "(UTC+04:00) Baku");
		assertEquals(CalendarTimeZone.get(59).getText(), "(UTC+04:00) Port Louis");
		assertEquals(CalendarTimeZone.get(60).getText(), "(UTC+04:30) Kabul");
		assertEquals(CalendarTimeZone.get(61).getText(), "(UTC+05:00) Tashkent");
		assertEquals(CalendarTimeZone.get(62).getText(), "(UTC+05:00) Islamabad, Karachi");
		assertEquals(CalendarTimeZone.get(63).getText(), "(UTC+05:30) Sri Jayewardenepura Kotte");
		assertEquals(CalendarTimeZone.get(64).getText(), "(UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi");
		assertEquals(CalendarTimeZone.get(65).getText(), "(UTC+05:45) Kathmandu");
		assertEquals(CalendarTimeZone.get(66).getText(), "(UTC+06:00) Astana");
		assertEquals(CalendarTimeZone.get(67).getText(), "(UTC+06:00) Dhaka");
		assertEquals(CalendarTimeZone.get(68).getText(), "(UTC+06:00) Yekaterinburg");
		assertEquals(CalendarTimeZone.get(69).getText(), "(UTC+06:30) Yangon");
		assertEquals(CalendarTimeZone.get(70).getText(), "(UTC+07:00) Bangkok, Hanoi, Jakarta");
		assertEquals(CalendarTimeZone.get(71).getText(), "(UTC+07:00) Novosibirsk");
		assertEquals(CalendarTimeZone.get(72).getText(), "(UTC+08:00) Krasnoyarsk");
		assertEquals(CalendarTimeZone.get(73).getText(), "(UTC+08:00) Ulaanbaatar");
		assertEquals(CalendarTimeZone.get(74).getText(), "(UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi");
		assertEquals(CalendarTimeZone.get(75).getText(), "(UTC+08:00) Perth");
		assertEquals(CalendarTimeZone.get(76).getText(), "(UTC+08:00) Kuala Lumpur, Singapore");
		assertEquals(CalendarTimeZone.get(77).getText(), "(UTC+08:00) Taipei");
		assertEquals(CalendarTimeZone.get(78).getText(), "(UTC+09:00) Irkutsk");
		assertEquals(CalendarTimeZone.get(79).getText(), "(UTC+09:00) Seoul");
		assertEquals(CalendarTimeZone.get(80).getText(), "(UTC+09:00) Osaka, Sapporo, Tokyo");
		assertEquals(CalendarTimeZone.get(81).getText(), "(UTC+09:30) Darwin");
		assertEquals(CalendarTimeZone.get(82).getText(), "(UTC+09:30) Adelaide");
		assertEquals(CalendarTimeZone.get(83).getText(), "(UTC+10:00) Hobart");
		assertEquals(CalendarTimeZone.get(84).getText(), "(UTC+10:00) Yakutsk");
		assertEquals(CalendarTimeZone.get(85).getText(), "(UTC+10:00) Brisbane");
		assertEquals(CalendarTimeZone.get(86).getText(), "(UTC+10:00) Guam, Port Moresby");
		assertEquals(CalendarTimeZone.get(87).getText(), "(UTC+10:00) Canberra, Melbourne, Sydney");
		assertEquals(CalendarTimeZone.get(88).getText(), "(UTC+11:00) Vladivostok");
		assertEquals(CalendarTimeZone.get(89).getText(), "(UTC+11:00) Solomon Islands, New Caledonia");
		assertEquals(CalendarTimeZone.get(90).getText(), "(UTC+12:00) Coordinated Universal Time+12");
		assertEquals(CalendarTimeZone.get(91).getText(), "(UTC+12:00) Fiji, Marshall Islands");
		assertEquals(CalendarTimeZone.get(92).getText(), "(UTC+12:00) Magadan");
		assertEquals(CalendarTimeZone.get(93).getText(), "(UTC+12:00) Auckland, Wellington");
		assertEquals(CalendarTimeZone.get(94).getText(), "(UTC+13:00) Nuku'alofa");
		assertEquals(CalendarTimeZone.get(95).getText(), "(UTC+13:00) Samoa");

	}

	public void enterTextByLabelInputClick(String Label) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../..//input"));
		util.actionutil.moveToElement(ele);
		ele.click();

	}

	@FindBy(xpath = "//tbody//*[contains(@class,'ant-calendar-cell ng-star-inserted')]//div | //tbody //*[contains(@aria-selected,'true')]")
	List<WebElement> DatePickerDay;

	public void DateSelectonCal(String Day) {
		util.waitUtil.waitExecutionForGivenTime(1);
		int b = DatePickerDay.size();
		util.waitUtil.waitExecutionForGivenTime(2);
		for (int i = 0; i < b; i++) {
			util.waitUtil.waitExecutionForGivenTime(1);
			WebElement ele = DatePickerDay.get(i);
			String calDay = ele.getText();
			if (calDay.equals(Day)) {
				DatePickerDay.get(i).click();
				tag = true;
				break;
			}
		}
	}

	@FindBy(xpath = "//tbody[@class='ant-calendar-month-panel-tbody']//td//a")
	List<WebElement> SelectMonth;

	public void SelectMonth(String Month) {
		util.waitUtil.waitExecutionForGivenTime(1);
		int b = SelectMonth.size() - 1;
		for (int i = 0; i <= b; i++) {
			util.waitUtil.waitExecutionForGivenTime(1);
			WebElement ele = SelectMonth.get(i);
			util.waitUtil.waitExecutionForGivenTime(1);
			String calMonth = ele.getText();
			util.waitUtil.waitExecutionForGivenTime(2);
			if (calMonth.equals(Month)) {
				SelectMonth.get(i).click();
				break;
			}
		}
	}

	@FindBy(xpath = "//*[@class='ant-calendar-year-panel-body']//td//a")
	List<WebElement> YearBody;

	public void Selectyear(String year) {
		util.waitUtil.waitExecutionForGivenTime(1);
		int b = YearBody.size() - 1;
		System.out.println("Length of the Year element :" + b);
		for (int i = 1; i < b; i++) {
			WebElement ele = YearBody.get(i);
			String calYear = ele.getText();
			if (calYear.equals(year)) {
				YearBody.get(i).click();
				break;
			}
		}
	}

	public void SelectExactYear(String year) {
		util.waitUtil.waitExecutionForGivenTime(1);
		int a = YearBody.size() - 1;
		int Year = Integer.parseInt(year);
		String lastDecateYear = YearBody.get(0).getText();
		int lastDecateyear = Integer.parseInt(lastDecateYear);
		String NextDecateYear = YearBody.get(a).getText();
		int NextDecateyear = Integer.parseInt(NextDecateYear);
		// String yearOnCalendar = DatePickerYear.getText();
		monthOnCalendar = DatePickerMonth.getText();
		int iterationMatch = 1;
		for (int i = iterationMatch; i < a; i++) {
			WebElement ele = YearBody.get(i);
			String calYear = ele.getText();
			if (calYear.equals(year)) {
				YearBody.get(i).click();
				util.waitUtil.waitExecutionForGivenTime(1);
				if (month.equals(monthOnCalendar)) {
					DateSelectonCal(day);
					util.waitUtil.waitExecutionForGivenTime(1);
				} else {
					DatePickerMonth.click();
					util.waitUtil.waitExecutionForGivenTime(1);
					SelectMonth(month);
					util.waitUtil.waitExecutionForGivenTime(1);
					DateSelectonCal(day);
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			} else if (Year < lastDecateyear) {
				YearBody.get(0).click();
				i = iterationMatch;
				util.waitUtil.waitExecutionForGivenTime(1);
				Selectyear(year);
				util.waitUtil.waitExecutionForGivenTime(1);
				if (month.equals(monthOnCalendar)) {
					DateSelectonCal(day);
					util.waitUtil.waitExecutionForGivenTime(1);
				} else {
					DatePickerMonth.click();
					util.waitUtil.waitExecutionForGivenTime(1);
					SelectMonth(month);
					util.waitUtil.waitExecutionForGivenTime(1);
					DateSelectonCal(day);
					util.waitUtil.waitExecutionForGivenTime(1);

				}
			} else if (Year > NextDecateyear) {
				YearBody.get(a - 1).click();
				i = iterationMatch;
				util.waitUtil.waitExecutionForGivenTime(1);
				Selectyear(year);
				util.waitUtil.waitExecutionForGivenTime(1);
				if (month.equals(monthOnCalendar)) {
					DateSelectonCal(day);
					util.waitUtil.waitExecutionForGivenTime(1);
				} else {
					DatePickerMonth.click();
					util.waitUtil.waitExecutionForGivenTime(1);
					SelectMonth(month);
					util.waitUtil.waitExecutionForGivenTime(1);
					DateSelectonCal(day);
					util.waitUtil.waitExecutionForGivenTime(1);

				}
			}
			if (tag == true) {
				break;
			}
		}
	}

	@FindBy(xpath = "//*[@title='Choose a year']")
	WebElement DatePickerYear;
	@FindBy(xpath = "//*[@title='Choose a month']")
	WebElement DatePickerMonth;

	public void SelectDateFromDatePicker(String string) {
		String[] split = string.split("/");
		day = split[0];
		System.out.println("Date entered by User :" + day);
		util.waitUtil.waitExecutionForGivenTime(1);
		month = split[1];
		System.out.println("Month entered by User :" + month);
		util.waitUtil.waitExecutionForGivenTime(1);
		String year = split[2];
		System.out.println("Year entered by User :" + year);
		yearOnCalendar = DatePickerYear.getText();
		System.out.println("Year on the Calendar :" + yearOnCalendar);
		monthOnCalendar = DatePickerMonth.getText();
		System.out.println("Month on the Calendar :" + monthOnCalendar);
		util.waitUtil.waitExecutionForGivenTime(1);
		// Year matches
		if (year.equals(yearOnCalendar)) {
			if (month.equals(monthOnCalendar)) {
				DateSelectonCal(day);
			} else {
				util.waitUtil.waitExecutionForGivenTime(2);
				DatePickerMonth.click();
				util.waitUtil.waitExecutionForGivenTime(1);
				SelectMonth(month);
				util.waitUtil.waitExecutionForGivenTime(1);
				DateSelectonCal(day);
			} // year not matches
		} else {
			util.waitUtil.waitExecutionForGivenTime(1);
			DatePickerYear.click();
			util.waitUtil.waitExecutionForGivenTime(1);
			SelectExactYear(year);
		}
	}

	@FindBy(xpath = "(//*[contains(@placeholder,'Select time')])[1]")
	WebElement StartTime;

	public void StartTime(String string) {
		StartTime.click();
		util.waitUtil.waitExecutionForGivenTime(1);
		SelctTimeFromTimePicker(string);
	}

	@FindBy(xpath = "(//*[contains(@placeholder,'Select time')])[2]")
	WebElement EndTime;

	public void EndTime(String string) {
		EndTime.click();
		util.waitUtil.waitExecutionForGivenTime(1);
		SelctTimeFromTimePicker(string);
	}

	public void SelctTimeFromTimePicker(String string) {// 9:20 am
		String[] split = string.split(":");
		String Hour = split[0];
		String str = split[1];
		String[] split2 = str.split(" ");
		String Minute = split2[0];
		String AMPM = split2[1];

		String xpath = "(//*[@class='ant-time-picker-panel-select ng-star-inserted'])[1]//li[contains(text(),'" + Hour
				+ "')]";
		WebElement hour = driver.findElement(By.xpath(xpath));
		testbase.javascriptexecutorClick(hour);
		util.waitUtil.waitExecutionForGivenTime(1);
		String xpath1 = "(//*[@class='ant-time-picker-panel-select ng-star-inserted'])[2]//li[contains(text(),'"
				+ Minute + "')]";
		WebElement minute = driver.findElement(By.xpath(xpath1));
		testbase.javascriptexecutorClick(minute);
		util.waitUtil.waitExecutionForGivenTime(1);
		String xpath2 = "(//*[@class='ant-time-picker-panel-select ng-star-inserted'])[3]//li[contains(text(),'" + AMPM
				+ "')]";
		WebElement ampm = driver.findElement(By.xpath(xpath2));
		testbase.javascriptexecutorClick(ampm);

	}

	@FindBy(xpath = "//app-dashboard-widget-database-table[@class='ng-star-inserted']")
	WebElement element2;
//	public void TakeScreenShot() throws Exception {
//
//		System.out.println("Capture Screenshot");
//		Screenshot screenshot = new AShot().takeScreenshot(driver, element2);
//		ImageIO.write(screenshot.getImage(),"PNG" ,new File(System.getProperty("user.dir")+"/Samples/Dashboard Image.png"));
//
//	}

	// public void TakeScreenShot() throws Exception {
	//
	// System.out.println("Capture Screenshot");
	// Screenshot screenshot = new AShot().takeScreenshot(driver, element2);
	// ImageIO.write(screenshot.getImage(),"PNG" ,new
	// File(System.getProperty("user.dir")+"/Samples/Dashboard Image.png"));
	//
	// }

	public void CompareImages() throws Exception {
		// Screenshot screenshot2 = new AShot().takeScreenshot(driver, element2);
		// ImageIO.write(screenshot2.getImage(),"PNG" ,new
		// File(System.getProperty("user.dir")+"/Samples/Dashboard Image.png"));
		BufferedImage ExpectedImage = ImageIO
				.read(new File(System.getProperty("user.dir") + "/Samples/Dashboard Image.png"));
		Screenshot screenshot = new AShot().takeScreenshot(driver, element2);
		BufferedImage ActualImage = screenshot.getImage();
		ImageDiffer differ = new ImageDiffer();
		ImageDiff diff = differ.makeDiff(ExpectedImage, ActualImage);
		// Assert.assertNotSame(diff.hasDiff(),"No Difference between images");
		assertFalse("There is a Difference between images", diff.hasDiff());
	}

	@FindBy(xpath = "//*[contains(text(),'Data Points')]/../..//*[contains(@class,'btn btn-sm btn-flat btn-icon round')]")
	WebElement ThreeDots;

	public void clickOnThreeDots() {
		ThreeDots.click();
	}

	public void enterTextByLabelTextAreawithoutEnterPress2(String Label) throws Exception {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'" + Label + "')]/../../../..//textarea"));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 15);
		util.actionutil.moveToElement(ele);
		String textToEnter = "<div class=\"p-2 mt-1  text-center bg-primary\">\r\n"
				+ "<h2 class=\"text-light\">Quick Links</h2>\r\n"
				+ "<h5  class=\"text-secondary\">Opening Submission and Editing Submission Using HTML Code</h5>\r\n"
				+ "<div class=\"mt-3 mb-2\">\r\n" + "\r\n"
				+ "<button type=\"button\" class=\"btn btn-outline-light px-3 mr-2 mt-2 mb-3\" style=\"border-radius:20px\" data-action=\"NEW_FORM_SUBMISSION\" data-formid=\"65f968b58b3390e2aea085a6\" onclick=\"handleButtonClick(this.getAttribute('data-action'), this.getAttribute('data-dashboardid'))\">Create Submission<i class=\"fa fa-angle-right ml-1\" style=\"font-size:18px\" aria-hidden=\"true\"></i></button>\r\n"
				+ "\r\n"
				+ "<button type=\"button\" class=\"btn btn-outline-light px-3 mr-2 mt-2 mb-3\" style=\"border-radius:20px\" data-action=\"EDIT_FORM_SUBMISSION\" data-formid=\"65f968b58b3390e2aea085a6\" data-submissionid=\"660bfda66d0d4eb2723749e4\">Edit Submission <i class=\"fa fa-angle-right ml-1\" style=\"font-size:18px\" aria-hidden=\"true\"></i></button>\r\n"
				+ "\r\n"
				+ "<button type=\"button\" class=\"btn btn-outline-light px-3 mr-2 mt-2 mb-3\" style=\"border-radius:20px\" data-action=\"POPUP_DASHBOARD\" data-dashboardid=\"1088\" onclick=\"handleButtonClick(this.getAttribute('data-action'), this.getAttribute('data-dashboardid'))\">Booking Details<i class=\"fa fa-angle-right ml-1\" style=\"font-size:16px\" aria-hidden=\"true\"></i></button>\r\n"
				+ "";
		ele.click();
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	@FindBy(xpath = "(//*[@class='dx-checkbox-icon'])[2]/..")
	WebElement checkbox;

	public void selectcheckbox() {
		checkbox.click();
	}

	@FindBy(xpath = "(//*[@class='dx-checkbox-icon'])[1]/..")
	WebElement Allcheckbox;

	public void selectAllcheckbox() {
		Allcheckbox.click();
	}

	@FindBy(xpath = "//*[contains(@class,'current-date')]//div")
	WebElement CalendarDay;
	@FindBy(xpath = "//*[contains(@class,'current-time-cell')]")
	WebElement CalendarWeekDay;
	@FindBy(xpath = "//*[contains(@class,'dx-button-has-text')]//span")
	WebElement CalendarMonthYear;
	@FindBy(xpath = "(//*[contains(@class,'dx-button-has-text')])[2]//span")
	WebElement CalnedatMonthYear_2;

	public void currentcalendarDate() {
		LocalDate date = new LocalDate();
		writeResponse("Today's date is :" + date);
		String Date_Month = "";
		int Date_day = date.getDayOfMonth();
		int Date_month = date.getMonthOfYear();
		int Date_year = date.getYear();
		util.waitUtil.waitExecutionForGivenTime(1);

		if (Date_month == 1 | Date_month == 01) {
			Date_Month = "January";
		} else if (Date_month == 2 | Date_month == 02) {
			Date_Month = "February";
		} else if (Date_month == 3 | Date_month == 03) {
			Date_Month = "March";
		} else if (Date_month == 4 | Date_month == 04) {
			Date_Month = "April";
		} else if (Date_month == 5 | Date_month == 05) {
			Date_Month = "May";
		} else if (Date_month == 6 | Date_month == 06) {
			Date_Month = "June";
		} else if (Date_month == 7 | Date_month == 07) {
			Date_Month = "July";
		} else if (Date_month == 8) {
			Date_Month = "August";
		} else if (Date_month == 9) {
			Date_Month = "September";
		} else if (Date_month == 10) {
			Date_Month = "October";
		} else if (Date_month == 11) {
			Date_Month = "November";
		} else if (Date_month == 12) {
			Date_Month = "December";
		}

		String day = CalendarDay.getText();
		int Calendar_DAY = Integer.parseInt(day);
		writeResponse("Calendar's todays day of Month is :" + Calendar_DAY);
		String MonthYear = CalendarMonthYear.getText();
		String[] split = MonthYear.split(" ");
		String Calendar_month = split[0];
		writeResponse("Calendar's current Month is :" + Calendar_month);
		String year = split[1];
		Calenadar_Year = Integer.parseInt(year);
		writeResponse("Calendar's current Year is :" + Calenadar_Year);
		util.waitUtil.waitExecutionForGivenTime(1);
		assertEquals("Calendar Current Day and Day from Local Date class not matched", Date_day, Calendar_DAY);
		assertEquals("Calendar Current Month and Month from Local Date class not matched", Date_Month, Calendar_month);
		assertEquals("Calendar Current Year and Year from Local Date class not matched", Date_year, Calenadar_Year);

	}

	@FindBy(xpath = "//th[contains(@class,'dx-scheduler-header-panel-cell dx-scheduler-cell-sizes-horizontal')]")
	List<WebElement> WeekDays;

	public void weekdayofCalendar() {
		util.waitUtil.waitExecutionForGivenTime(1);
		assertEquals(WeekDays.get(0).getText(), "Sun");
		assertEquals(WeekDays.get(1).getText(), "Mon");
		assertEquals(WeekDays.get(2).getText(), "Tue");
		assertEquals(WeekDays.get(3).getText(), "Wed");
		assertEquals(WeekDays.get(4).getText(), "Thu");
		assertEquals(WeekDays.get(5).getText(), "Fri");
		assertEquals(WeekDays.get(6).getText(), "Sat");

	}

	@FindBy(xpath = "(//*[contains(@class,'dx-button-has-text')]//span)[2]")
	WebElement Month_year;
	@FindBy(xpath = "(//*[contains(text(),'Feb')])[1]")
	WebElement FebMonth;
	@FindBy(xpath = "(//*[@class='dx-widget'])[1]//td//span")
	List<WebElement> YearsOnCaledars;
	@FindBy(xpath = "(//a//i[@class='dx-icon dx-icon-chevronleft'])[1]/..")
	WebElement beforeButton;

	public void leafYearCheck() {
		int previousYears = Calenadar_Year - 5;
		int nextYears = Calenadar_Year + 5;
		util.waitUtil.waitExecutionForGivenTime(1);
		CalendarMonthYear.click();
		util.waitUtil.waitExecutionForGivenTime(1);
		Month_year.click();
		util.waitUtil.waitExecutionForGivenTime(1);
		String path = "//a//div//*[contains(text(),'" + Calenadar_Year + "')]";
		WebElement year_ele = driver.findElement(By.xpath(path));
		util.waitUtil.waitExecutionForGivenTime(1);
		year_ele.click();
		util.waitUtil.waitExecutionForGivenTime(1);
		int a = YearsOnCaledars.size() - 1;
		System.out.println("Size of years element :" + a);
		util.waitUtil.waitExecutionForGivenTime(2);
		for (int j = 0; j <= YearsOnCaledars.size() - 1; j++) {
			String year = YearsOnCaledars.get(j).getText();
			util.waitUtil.waitExecutionForGivenTime(1);
			int YearOnCalendar = Integer.parseInt(year);
			util.waitUtil.waitExecutionForGivenTime(1);
			if ((YearOnCalendar >= previousYears) || (YearOnCalendar <= nextYears)) {
				if ((YearOnCalendar % 400 == 0) || ((YearOnCalendar % 100 != 0) && (YearOnCalendar % 4 == 0))) {
					YearsOnCaledars.get(j).click();
					util.waitUtil.waitExecutionForGivenTime(1);
					FebMonth.click();
					util.waitUtil.waitExecutionForGivenTime(1);
					String xpath = "//*[contains(@aria-label,'February 29, " + YearOnCalendar + "')]";
					WebElement ele = driver.findElement(By.xpath(xpath));
					assertTrue(ele.isDisplayed());
					writeResponse("29 Days are in February Month, Its a Leaf Year :" + YearOnCalendar);
					// System.out.println("Its a Leaf Year :" + YearOnCalendar);
					CalnedatMonthYear_2.click();
					util.waitUtil.waitExecutionForGivenTime(1);
					String path1 = "//a//div//*[contains(text(),'" + YearOnCalendar + "')]";
					WebElement year_ele1 = driver.findElement(By.xpath(path1));
					year_ele1.click();
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}

	}

	public void NonleafYearCheck() {
		int previousYears = Calenadar_Year - 5;
		int nextYears = Calenadar_Year + 5;
		util.waitUtil.waitExecutionForGivenTime(1);
		CalendarMonthYear.click();
		util.waitUtil.waitExecutionForGivenTime(1);
		// Month_year.click();
		// util.waitUtil.waitExecutionForGivenTime(1);
		// String path = "//a//div//*[contains(text(),'" + Calenadar_Year + "')]";
		// WebElement year_ele = driver.findElement(By.xpath(path));
		// util.waitUtil.waitExecutionForGivenTime(1);
		// year_ele.click();
		// util.waitUtil.waitExecutionForGivenTime(1);
		int a = YearsOnCaledars.size() - 1;
		System.out.println("Size of years element :" + a);
		util.waitUtil.waitExecutionForGivenTime(1);
		for (int j = 0; j <= YearsOnCaledars.size() - 1; j++) {
			String year = YearsOnCaledars.get(j).getText();
			util.waitUtil.waitExecutionForGivenTime(1);
			int YearOnCalendar = Integer.parseInt(year);
			util.waitUtil.waitExecutionForGivenTime(1);
			if ((YearOnCalendar >= previousYears) || (YearOnCalendar <= nextYears)) {
				if ((YearOnCalendar % 4 != 0)) {
					YearsOnCaledars.get(j).click();
					util.waitUtil.waitExecutionForGivenTime(1);
					FebMonth.click();
					util.waitUtil.waitExecutionForGivenTime(1);
					try {
						String xpath = "//*[contains(@aria-label,'February 29, " + YearOnCalendar + "')]";
						assertFalse(driver.findElement(By.xpath(xpath)).isDisplayed());
					} catch (Exception e) {
						e.printStackTrace();
					}
					writeResponse("28 Days are in February Month, Its a Non Leaf Year :" + YearOnCalendar);
					// System.out.println("Its a Non Leaf Year :" + YearOnCalendar);
					CalnedatMonthYear_2.click();
					util.waitUtil.waitExecutionForGivenTime(1);
					String path1 = "//a//div//*[contains(text(),'" + YearOnCalendar + "')]";
					WebElement year_ele1 = driver.findElement(By.xpath(path1));
					year_ele1.click();
					util.waitUtil.waitExecutionForGivenTime(1);
				}
			}
		}
	}

	@FindBy(xpath = "//div[contains(@class,'card box-shadow-0 m-0')]")
	WebElement clickoncalendarbody;

	public void clickoncalendarbody() {
		clickoncalendarbody.click();
	}

	public void WebElementDisappears(String string, int index) {
		WebElement ele = null;
		String xpath = "(//*[contains(text(),'" + string + "')])[" + index + "]";
		try {
			ele = driver.findElement(By.xpath(xpath));
			assertFalse("Element is Visible", ele.isDisplayed());
		} catch (Exception e) {
			TestBase.writeResponse("WebElement Disappears from UI");
		}
	}

	public void TimeZoneBoxAppears(String string) {
		String xpath = "(//*[contains(text(),'" + string + "')]/../..//nz-select)";
		WebElement ele = driver.findElement(By.xpath(xpath));
		assertTrue("WebElement is Not Visible", ele.isDisplayed());
		TestBase.writeResponse("Time Zone of Calendar appears");
	}

	public void enterTextByLabelTextareaByIndexInOldFormCalendar(String Label, int index, String textToEnter) {
		WebElement ele = driver
				.findElement(By.xpath("(//*[contains(text(),'" + Label + "')])[" + index + "]/../../..//textarea"));
		util.actionutil.moveToElement(ele);
		ele.click();
		ele.sendKeys(textToEnter);
	}

	public void todaysdate() {
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		String strDate = formatter.format(date);
		System.out.println(strDate);
		System.out.println("Todays date :" + strDate);
		String xpath = "//*[contains(text(),'" + strDate + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		assertTrue("Toadys date not visible in database", ele.isDisplayed());
		TestBase.writeResponse("Todays date is visible in Database");

	}

	@FindBy(xpath = "//li[contains(@class,'ant-select-dropdown-menu-item ng-star-inserted')]")
	List<WebElement> dayhourOptions;
	@FindBy(xpath = "//*[contains(text(),'Start day hour')]/..//*[@data-icon='close-circle']")
	WebElement closecircle;

	public void StartDayHourVerification(String string) {
		int a = 0;
		int elesize = dayhourOptions.size() - 1;
		int arr[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24 };

		for (int j = a; j <= elesize; j++) {
			if (a > 0) {
				int b = a - 1;
				String xpath = "(//*[contains(text(),'" + string + "')])/..//div[contains(text(),'" + b + "')]";
				WebElement ele = driver.findElement(By.xpath(xpath));
				util.actionutil.moveToElement(ele);
				closecircle.click();
				String xpath2 = "(//*[contains(text(),'Start day hour')])/..//div[contains(text(),'Select Time')]";
				WebElement ele2 = driver.findElement(By.xpath(xpath2));
				ele2.click();
				util.waitUtil.waitExecutionForGivenTime(1);
			}
			for (int i = a; i <= arr.length - 1;) {
				String text = dayhourOptions.get(i).getText();
				int Hour = Integer.parseInt(text);
				dayhourOptions.get(i).click();
				util.waitUtil.waitExecutionForGivenTime(1);
				if (arr[i] == Hour) {
					if (Hour == 0 || Hour == 24) {
						try {
							String xpath = "(//tr//th[1][@title='12:00 AM'])[2]";
							WebElement starthouronCalendar = driver.findElement(By.xpath(xpath));
							assertTrue(starthouronCalendar.isDisplayed());
							TestBase.writeResponse("Element is Visible : 12:00 AM");
							System.out.println("Element is Visible : 12:00 AM");
						} catch (Exception e) {
							String xpath = "(//tr//th[1][@title='12:00 PM'])[2]";
							WebElement starthouronCalendar = driver.findElement(By.xpath(xpath));
							assertTrue(starthouronCalendar.isDisplayed());
							TestBase.writeResponse("Element is Visible : 12:00 PM");
							System.out.println("Element is Visible : 12:00 PM");
						}
					} else if (Hour < 12) {
						String xpath = "(//tr//th[1][@title='" + Hour + ":00 AM'])[2]";
						WebElement starthouronCalendar = driver.findElement(By.xpath(xpath));
						assertTrue(starthouronCalendar.isDisplayed());
						TestBase.writeResponse("Element is Visible :" + Hour + ":00 AM");
						System.out.println("Element is Visible :" + Hour + ":00 AM");
					} else {
						if (Hour > 12) {
							int hourformat = Hour - 12;
							String xpath = "(//tr//th[1][@title='" + hourformat + ":00 PM'])[2]";
							WebElement starthouronCalendar = driver.findElement(By.xpath(xpath));
							assertTrue(starthouronCalendar.isDisplayed());
							TestBase.writeResponse("Element is Visible :" + hourformat + ":00 PM");
							System.out.println("Element is Visible :" + hourformat + ":00 PM");
						} else {
							String xpath = "(//tr//th[1][@title='" + Hour + ":00 PM'])[2]";
							WebElement starthouronCalendar = driver.findElement(By.xpath(xpath));
							assertTrue(starthouronCalendar.isDisplayed());
							TestBase.writeResponse("Element is Visible :" + Hour + ":00 PM");
							System.out.println("Element is Visible :" + Hour + ":00 PM");
						}
					}
				}
				break;
			}
			++a;
		}
	}

	// TIMELINE WIDGET

	public void TimelineWidgetDropdownOptionVerification(String string, String string2, String string3, String string4,
			String string5, int index) {
		String[] array = { string, string2, string3, string4, string5 };
		for (String str : array) {
			String xpath = "(//*[contains(text(),'" + str + "')])[" + index + "]";
			WebElement option = driver.findElement(By.xpath(xpath));
			assertTrue("Element is not displayed", option.isDisplayed());
			writeResponse("Datebases Column are in Dropdown :" + str);
		}

	}

	public void readingdatafromTimelineTestingDatabase(String string, String string1) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		String[] splitText1 = string1.split("=");
		String locator1 = splitText1[0];
		String locatorText1 = splitText1[1];
		if (locator.equals("VT") && locator1.equals("VT")) {
			String xpath = "(//*[(text()='" + locatorText1 + "')])//preceding::div[contains(text(),'" + locatorText
					+ "')]";
			WebElement ele = driver.findElement(By.xpath(xpath));
			testbase.javascriptexecutorClick(ele);

		}
	}

	@FindBy(xpath = "(//*[contains(text(),'Dashboard')])[1]/..")
	WebElement dashboard;

	public void dashboardfromsidebar() {
		util.actionutil.moveToElement(dashboard);
		util.waitUtil.waitExecutionForGivenTime(1);
		dashboard.click();
	}

	// Pivot Grid

	@FindBy(xpath = "//input[@name='title']")
	WebElement EnterDatabasename;

	public void EnterDatabasename(String name) {
		util.actionutil.moveToElement(EnterDatabasename);
		EnterDatabasename.clear();
		EnterDatabasename.sendKeys(name);
	}

	@FindBy(xpath = "//textarea[@id='description']")
	WebElement description;

	public void enterDescripton(String Description) {
		description.sendKeys(Description);
	}

	@FindBy(xpath = "//*[contains(text(),'Next')]/..")
	WebElement nextButton;

	public void ClickonNextButton() {
		util.actionutil.moveToElement(nextButton);
		nextButton.click();
	}

	public void databaseavatarcolor(String index) {
		String xpath = "(//*[@class='p-1 ml-4 mb-1 ant-row'])//div[" + index + "]//button";
		WebElement avatarcolor = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(avatarcolor);
		avatarcolor.click();
	}

	public void databaseAvator(String index) {
		String xpath = "(//*[@class='p-1 ml-4 ant-row'])//div[" + index + "]//button";
		WebElement DatabaseAvator = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(DatabaseAvator);
		DatabaseAvator.click();
	}

	public void databaseTypePublic_Private(String str) {
		String xpath = "//*[@class='ant-card-body']//*[@nztitle='" + str + "']/../..";
		WebElement databaseType = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(databaseType);
		databaseType.click();
	}

//	(//*[@type='button'])[2]/..
	public void clickOnElementByTypeIndex(String type, int index) {
		WebElement ele = driver.findElement(By.xpath("(//*[@type='" + type + "'])[" + index + "]"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

//	(//*[@class='btn btn-secondary btn-raised mb-0 mat-ripple'])[1]
	public void clickOnElementByClassIndex(String Class, int index) {
		WebElement ele = driver.findElement(By.xpath("(//*[@class='" + Class + "'])[" + index + "]"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

//	public void enterPlaceHolderByIndex(String string,int index,String value) {
//        String xpath = "(//*[@placeholder='"+string+"'])["+index+"]";
//        WebElement ele = driver.findElement(By.xpath(xpath));
//        util.actionutil.moveToElement(ele);
//        ele.clear();
//        ele.sendKeys(value);
//    }

	public void enterValueByTypeByIndex(String string, int index, String value) {
		String xpath = "(//*[@type='" + string + "'])[" + index + "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(value);
	}

	public void enterValueByClassByIndex(String string, int index, String value) {
		String xpath = "(//*[@class='" + string + "'])[" + index + "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(value);
	}

//	(//*[contains(text(),'dc')])[2]/../..//input
	public void enterValueByLabelByIndex(String string, int index, String value) {
		String xpath = "(//*[contains(text(),'" + string + "')])[" + index + "]/../..//input";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
		ele.clear();
		ele.sendKeys(value);
	}

	public void enterValueByLabelByIndexEnter(String string, int index, String value) {
		String xpath = "(//*[contains(text(),'" + string + "')])[" + index + "]/../..//input";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
		ele.clear();
		ele.sendKeys(value);
		util.waitUtil.waitExecutionForGivenTime(1);
		ele.sendKeys(Keys.ENTER);
	}

//	public void enterValueByLabelByTextareaByIndex (String string,int index , String value) {
//		String xpath = "(//*[contains(text(),'"+string+"')])["+index+"]/../../..//textarea";
//		WebElement ele = driver.findElement(By.xpath(xpath));
//		util.actionutil.moveToElement(ele);
////		ele.click();
//		ele.clear();
//		ele.sendKeys(value);
//	}
//>>>>>>> rohit
	@FindBy(xpath = "(//*[@nztype='down'])/../..")
	WebElement reviewdetailsdownArrow;

	public void clickonArrow() {
		util.actionutil.moveToElement(reviewdetailsdownArrow);
		reviewdetailsdownArrow.click();
	}

	public void formTypeOld_New(String str) {
		String xpath = "(//*[contains(text(),'" + str + "')])/..//span[1]//input";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	@FindBy(xpath = "(//*[contains(text(),'Create')])[2]/..")
	WebElement createButton;

	public void clickonCreatButton() {
		util.actionutil.moveToElement(createButton);
		testbase.javascriptexecutorClick(createButton);
		// createButton.click();
	}

	@FindBy(xpath = "(//*[contains(text(),'Title')])[7]/..//input")
	WebElement dashboardTitle;

	public void dashboardTitle() {
		name = "Pivot Grid-" + getDbname();
		dashboardTitle.clear();
		dashboardTitle.sendKeys(name);
	}

	public void dashboardTitle(String string) {
		String xpath = "(//*[contains(text(),'Title')])/..//input";
		WebElement title = driver.findElement(By.xpath(xpath));
		NewDashboardTitle = string + "-" + getDashBoardName();
		title.clear();
		title.sendKeys(NewDashboardTitle);
	}

	public void clickonNewDashboard() {
		TestBase.writeResponse("Dashboard Name :" + dashboardname);
		String xpath = "(//*[contains(text(),'" + dashboardname + "')])";
		WebElement dashboardname = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(dashboardname);
		util.waitUtil.waitExecutionForGivenTime(1);
		dashboardname.click();
	}

	public void clickOnDropdownInDataPoints(String string) {
		String xpath = "//div[@role='option']//*[text()='Pie Chart New Master']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "(//*[@class='ant-tabs-tab-next ant-tabs-tab-arrow-show'])//*[@data-icon='right']")
	WebElement rightClickOnDashboard;
	@FindBy(xpath = "(//*[@class='ant-tabs-tab-next ant-tabs-tab-arrow-show ant-tabs-tab-btn-disabled'])//*[@data-icon='right']")
	WebElement disabledRightClickOnDashboard;

	public void copyOfDashboard(String string) throws InterruptedException {
		rightClickOnDashboard.click();

		try {
			while (rightClickOnDashboard.isDisplayed()) {
				rightClickOnDashboard.click();
				try {
					String xpath = "(//*[contains(text(),'" + NewDashboardTitle + " " + string + "')])";
					WebElement ele = driver.findElement(By.xpath(xpath));
					util.waitUtil.WaitForElementToBePresentUpdate(ele, 5);
					if (ele.isDisplayed()) {
						assertTrue("Dashboard Copy is not Working", ele.isDisplayed());
						TestBase.writeResponse("Dashboard Copied Successfully : " + NewDashboardTitle);
						break;
					}

				} catch (Exception e) {

				}
			}
		} catch (Exception e) {
			assertTrue("Not at the End of DashBoard", disabledRightClickOnDashboard.isDisplayed());
			TestBase.writeResponse("Reached at the End of the dashboard");
		}

	}

	public void clickonPivotGridDashboard() {
		String xpath = "(//*[contains(text(),'" + name + "')])";
		WebElement dashboardname = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(dashboardname);
		util.waitUtil.waitExecutionForGivenTime(1);
		dashboardname.click();
	}

	public void selectMappingDataForField(String string) {
		String xpath = "//li[contains(text(),'" + string + "')]";
		WebElement mapData = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(mapData);
		mapData.click();
	}

	@FindBy(xpath = "//tr[@class='dx-bottom-row']//tr//*[@class='dx-last-cell']")
	List<WebElement> namesize;

	public void verificationOfNameColumnData(int size, String str) {
		util.waitUtil.waitExecutionForGivenTime(1);
		int nameSize = namesize.size();
		System.out.println(nameSize);
		assertEquals(size, nameSize);
		String xpath = "//tr[@class='dx-bottom-row']//*[(text()='" + str + "')]";
		WebElement Name = driver.findElement(By.xpath(xpath));
		assertTrue(Name.isDisplayed());
		TestBase.writeResponse(str + "  Is displayed");
	}

	@FindBy(xpath = "(//thead//*[contains(@style,'border-bottom-width:0px')])//span")
	List<WebElement> SubjectSize;

	public void verificationOfSubjectsColumnData(int size, String str) {
		util.waitUtil.waitExecutionForGivenTime(1);
		int SubjectsSIZE = SubjectSize.size();
		assertEquals(size, SubjectsSIZE);
		String xpath = "(//thead//*[contains(text(),'" + str + "')])";
		WebElement Subject = driver.findElement(By.xpath(xpath));
		assertTrue(Subject.isDisplayed());
		TestBase.writeResponse(str + " Is Displayed");
	}

	public void FilterverificationTextIsExactlyNAME(int size, String string) {
		int nameSize = namesize.size();
		TestBase.writeResponse("Expected Size : " + size);
		TestBase.writeResponse("Actual Size : " + nameSize);
		assertEquals(size, nameSize);
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			String xpath = "(//*[contains(text(),'" + locatorText + "')])";
			WebElement Subject = driver.findElement(By.xpath(xpath));
			assertTrue(Subject.isDisplayed());
			TestBase.writeResponse(locatorText + " Is Displayed");
		}
	}

	public void FilterverificationTextNotInNAME(int size, String string, String string2) {
		int nameSize = namesize.size();
		TestBase.writeResponse("Expected Size : " + size);
		TestBase.writeResponse("Actual Size : " + nameSize);
		assertEquals(size, nameSize);
		String[] name = { string, string2 };
		for (String HiddenName : name) {
			String[] splitText = HiddenName.split("=");
			String locator = splitText[0];
			String locatorText = splitText[1];
			if (locator.equals("VT")) {
				String xpath = "(//*[contains(text(),'" + locatorText + "')])";
				WebElement Subject = driver.findElement(By.xpath(xpath));
				assertTrue(Subject.isDisplayed());
				TestBase.writeResponse(locatorText + " Is Displayed");
			}
		}
	}

	@FindBy(xpath = "(//*[contains(@class,'dx-virtual-content')])[3]/..//table//tr//span")
	List<WebElement> marks;

	public void FilterVerificationLessThanMarks(int number) {
		if (marks.isEmpty()) {
			TestBase.writeResponse("'Less Than' Form filter not works");
		}
		for (WebElement Mark : marks) {
			String string1 = " ";
			System.out.println("string1 lenght is :" + string1.length());
			String string = Mark.getText();
			System.out.println("Get TExt :" + string + "Length of the String :" + string.length());
			if (!(string1.length() == string.length())) {
				float MARK = Float.parseFloat(string);
				if (MARK < number) {
					TestBase.writeResponse("Expected mark is less than:" + number);
					TestBase.writeResponse("'Less Than' Form filter works");
				} else {
					TestBase.writeResponse("Actual mark :" + MARK);
					TestBase.writeResponse("'Less Than' Form filter not works");
				}
			}
		}
	}
	// Doughtnut Chart

	public void MouseHoverActionOfPivot(String string, String string1) {
		String xpath = "(//*[contains(text(),'" + string1 + "')]/..//*[contains(text(),'" + string + "')])/..";
		WebElement addButton = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(addButton);
	}

	public void clickonMouseHoverText(String string) {
		String xpath = "//ul//li//a[contains(text(),'" + string + "')]/..";
		WebElement text = driver.findElement(By.xpath(xpath));
		text.click();
	}

	public void doubleClickOnSummersizeByPivot(String string, String string2) {
		String xpath = "(//*[contains(text(),'" + string + "')])/../..//*[contains(text(),'" + string2 + "')]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		util.actionutil.doubleClick(element);
	}

	public void SummarizeBypivotNameChange(String string2, String string3, int index) {
		String xpath = "(//*[contains(text(),'" + string3 + "')]/../..//input)[" + index + "]";
		WebElement element = driver.findElement(By.xpath(xpath));
		element.clear();
		element.sendKeys(string2);
	}

	@FindBy(xpath = "//*[@stroke-linejoin='round']")
	List<WebElement> division;

	@FindBy(xpath = "//*[@class='dxl-marker']")
	List<WebElement> NameLabel;

	public void chartdivision(int div) {
		int divisionsize = division.size();
		assertEquals("Chart not visible on UI/division mis-matched", div, divisionsize);
		TestBase.writeResponse("Number of chart division Matched and are equal to : " + divisionsize);
		int namelabelsize = NameLabel.size();
		// try {
		// assertEquals("Name label division not Matched", div, namelabelsize);
		// TestBase.writeResponse("Number of Name Label Matched and are equal to :" +
		// namelabelsize);
		// } catch (Exception e) {
		// TestBase.writeResponse("Number of Name Label Matched and are equal to :" +
		// namelabelsize);
		// }
	}

	@FindBy(xpath = "//*[@text-anchor='start']")
	List<WebElement> NameLabelText;

	public void NameLabelVerification3Label(String string, String string2, String string3) {
		int a = 0;
		String[] nameinput = { string, string2, string3 };
		for (WebElement element : NameLabelText) {
			String LabelText = element.getText();
			// System.out.println("LabelText :" + LabelText);
			for (int i = a; i <= nameinput.length - 1;) {
				String name = nameinput[i];
				// System.out.println("name :" + name);
				assertTrue("Name input and Name Label not Matched", name.equalsIgnoreCase(LabelText));
				TestBase.writeResponse(
						"Name with Pivot Count and Name Label with count from UI matches same is :" + LabelText);
				a = ++i;
				break;
			}
		}
	}

	public void NameLabelVerification4Label(String string, String string2, String string3, String string4) {
		int a = 0;
		String[] nameinput = { string, string2, string3, string4 };
		for (WebElement element : NameLabelText) {
			String LabelText = element.getText();
			// System.out.println("LabelText :" + LabelText);
			for (int i = a; i <= nameinput.length - 1;) {
				String name = nameinput[i];
				// System.out.println("name :" + name);
				assertTrue("Name input and Name Label not Matched", name.equalsIgnoreCase(LabelText));
				TestBase.writeResponse(
						"Name with Pivot Count and Name Label with count from UI matches same is :" + LabelText);
				a = ++i;
				break;
			}
		}
	}

	public void NameLabelVerification6Label(String string, String string2, String string3, String string4,
			String string5, String string6) {
		int a = 0;
		String[] nameinput = { string, string2, string3, string4, string5, string6 };
		for (WebElement element : NameLabelText) {
			String LabelText = element.getText();
			System.out.println("LabelText :" + LabelText);
			for (int i = a; i <= nameinput.length - 1;) {
				String name = nameinput[i];
				System.out.println("name :" + name);
				assertTrue("Name input and Name Label not Matched", name.equalsIgnoreCase(LabelText));
				TestBase.writeResponse(
						"Name with Pivot Count and Name Label with count from UI matches same is :" + LabelText);
				a = ++i;
				break;
			}
		}
	}

	@FindBy(xpath = "//*[@class='dx-checkbox-icon']/..")
	List<WebElement> doughnutDBcheckbox;
	@FindBy(xpath = "(//*[@nztype='delete'])/..")
	WebElement DeleteButtonIcon;
	@FindBy(xpath = "//*[contains(text(),'Are you sure you want to delete selected rows?')]/../..//*[contains(text(),'Delete')]/..")
	WebElement DeleteButton;
	@FindBy(xpath = "//*[contains(text(),'Submissions are deleted successfully')]")
	WebElement DeleteMessage;

	public void DeletenewEntryFromNewForm(int number) {
		int FormSubmissionCheckboxSize = doughnutDBcheckbox.size();
		int NumberofCheckboxRemains = FormSubmissionCheckboxSize - number;
		util.waitUtil.waitExecutionForGivenTime(1);
		for (int i = doughnutDBcheckbox.size() - 1; i >= 0 - 1; i--) {
			if (NumberofCheckboxRemains <= i) {
				doughnutDBcheckbox.get(i).click();
				DeleteButtonIcon.click();
				DeleteButton.click();
				util.waitUtil.waitExecutionForGivenTime(1);
				assertTrue(DeleteMessage.isDisplayed());
				util.waitUtil.waitExecutionForGivenTime(1);
				TestBase.writeResponse("New Name Entry Deleted");
				util.waitUtil.waitExecutionForGivenTime(2);
			} else {
				break;
			}
		}
	}

	@FindBy(xpath = "(//*[contains(@class,'dxc-markers')])[1]//*")
	WebElement DoughtnutChartDivision;
	@FindBy(xpath = "(//*[contains(@text-anchor,'middle')]//*[contains(@tspan,'')])[2]")
	List<WebElement> tooltiptextele;

	public void TooltipMouseHoverVerification(String tooltiptext) {
		try {
			util.actionutil.moveToElement(DoughtnutChartDivision);
			for (WebElement ele : tooltiptextele) {
				String text = ele.getText();
				System.out.println("Hatching attribute :" + text);
			}
			util.waitUtil.waitExecutionForGivenTime(1);
			String xpath = "(//*[contains(@filter,'url')])//..//*[contains(text(),'" + tooltiptext + "')]";
			WebElement tooltipText = driver.findElement(By.xpath(xpath));
			assertTrue(tooltipText.isDisplayed());
			TestBase.writeResponse("Tooltip text is visible :" + tooltipText.getText());
		} catch (Exception e) {
		}
	}

	public void filterclick(String string) {
		String xpath = "(//label[contains(text(),'" + string + "')])/..//input";
		WebElement filterClick = driver.findElement(By.xpath(xpath));
		filterClick.click();
	}

	public void NameLabelVerification2LabelFilter(String string, String string2) {
		int a = 0;
		String[] nameinput = { string, string2 };
		for (WebElement element : NameLabelText) {
			String LabelText = element.getText();
			// System.out.println("LabelText :" + LabelText);
			for (int i = a; i <= nameinput.length - 1;) {
				String name = nameinput[i];
				// System.out.println("name :" + name);
				assertTrue("Name input and Name Label not Matched after filter", name.equalsIgnoreCase(LabelText));
				TestBase.writeResponse("Name input and Name Label matches after Filter same is  :" + LabelText);
				a = ++i;
				break;
			}
		}
	}

	public void selectingOptionFromFilter(String string) {
		String xpath = "(//span[contains(text(),'" + string + "')])";
		WebElement dropdownOption = driver.findElement(By.xpath(xpath));
		dropdownOption.click();
	}

	public void drilldownMouseHoverText(String dataIcon, String label) {
		String xpath = "(//*[contains(text(),'" + label + "')])//*[@data-icon='" + dataIcon + "']";
		WebElement selectdashboardMouseHover = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(selectdashboardMouseHover);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void doughtnutdivisionclickAndVerification(String color, String string) {
		String xpathColor = "(//*[contains(@class,'dxc-markers')])[1]//*[@fill='" + color + "']";
		WebElement ColorDivision = driver.findElement(By.xpath(xpathColor));
		ColorDivision.click();
		util.waitUtil.waitExecutionForGivenTime(2);
		String xpath = "(//*[contains(text(),'" + string + "')])";
		WebElement dashboardVerification = driver.findElement(By.xpath(xpath));
		assertTrue(dashboardVerification.isDisplayed());
		TestBase.writeResponse("User navigate to another dashboard : " + dashboardVerification.getText());
		util.waitUtil.waitExecutionForGivenTime(2);
		driver.navigate().back();
		driver.navigate().back();
		util.waitUtil.waitExecutionForGivenTime(2);
		TestBase.writeResponse("User Navigate to main Dashboard");
	}

	public void PieChartdivisionclickAndVerification(String color, String string) {
		String xpathColor = "(//*[contains(@class,'dxc-markers')])[1]//*[@fill='" + color + "']";
		WebElement ColorDivision = driver.findElement(By.xpath(xpathColor));
		ColorDivision.click();
		util.waitUtil.waitExecutionForGivenTime(2);
		String xpath = "(//*[contains(text(),'" + string + "')])";
		WebElement dashboardVerification = driver.findElement(By.xpath(xpath));
		assertTrue(dashboardVerification.isDisplayed());
		TestBase.writeResponse("User navigate to another dashboard : " + dashboardVerification.getText());
		util.waitUtil.waitExecutionForGivenTime(2);
		driver.navigate().back();
		util.waitUtil.waitExecutionForGivenTime(2);
		TestBase.writeResponse("User Navigate to main Dashboard");
	}

	public void DrilldownremovedVerification(String color) {
		String xpathColor = "(//*[contains(@class,'dxc-markers')])[1]//*[@fill='" + color + "']";
		WebElement ColorDivision = driver.findElement(By.xpath(xpathColor));
		ColorDivision.click();
	}

	public void LebelsOfdoughtnutCharts(String legend, String color, int number) {
		String xpath = "(//*[@class='dxc-labels']//*[@fill='" + color + "'])//following-sibling::*";
		List<WebElement> legendxpath = driver.findElements(By.xpath(xpath));
		assertEquals("Expected Lebel number and Actual Lebel Number not Matched", number, legendxpath.size());
		for (WebElement ele : legendxpath) {
			util.waitUtil.waitExecutionForGivenTime(1);
			assertEquals("Expected and Actual Lebel Matched", legend, ele.getText());
			TestBase.writeResponse("Expected Lebel and Actual Lebel Matched and same is :" + ele.getText());
		}
	}

	public void LebelsOfPieCharts(String legend, String color, int number) {
		int a = 0;
		String[] split = legend.split(" ");
		String xpath = "(//*[@class='dxc-labels']//*[@fill='" + color + "'])//following-sibling::*";
		List<WebElement> legendxpath = driver.findElements(By.xpath(xpath));
		assertEquals("Expected Lebel number and Actual Lebel Number not Matched", number, legendxpath.size());
		for (WebElement ele : legendxpath) {
			for (int i = a; i <= split.length - 1;) {
				util.waitUtil.waitExecutionForGivenTime(1);
				assertEquals("Expected and Actual Lebel Matched", split[i], ele.getText());
				TestBase.writeResponse("Expected Lebel and Actual Lebel Matched and same is :" + ele.getText());
				++a;
				break;
			}
		}
	}

	public void clickonPivotSummerizeByInput(int index) {
		String xpath = "(//*[contains(@class,'ant-input ng-untouched ng-pristine ng-valid ng-star-inserted')])[" + index
				+ "]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		util.actionutil.doubleClick(ele);
	}

	public void deleteconfiguration(String string, String icon, int index) {
		String xpath = "(//*[contains(text(),'" + string + "')]/..//*[@data-icon='" + icon + "'])[" + index + "]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void sendKeysforPivotfilterValue(String string, String string2) {
		String xpath = "//*[contains(@placeholder,'" + string + "')]//*//input";
		WebElement valueInput = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(valueInput);
		valueInput.clear();
		util.waitUtil.waitExecutionForGivenTime(1);
		valueInput.sendKeys(string2, Keys.ENTER);

	}

	public void verificationOfDataWithDatabase(String string, String string2) {
		String xpath = "((//*[@aria-label='Data grid'])//following-sibling::div//table//tbody//td//div[contains(text(),'"
				+ string + "')])/../../..//*/../../../../..//*[(text()='" + string2 + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		assertTrue("WebElement is not Displayed", ele.isDisplayed());
		TestBase.writeResponse("Submission data is in form :" + string2);
	}

//Pie chart
	public void clickOnOptionsInConfiguration(String string) throws InterruptedException {
		String xpath = "//div[contains(text(),'" + string + "')]/..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 5);
		ele.click();
	}

	public void clickonAdvanceFilter(String string) throws InterruptedException {
		String xpath = "//*[@class='ant-btn-group']//*[contains(text(),'" + string + "')]/..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 10);
		util.actionutil.moveToElement(ele);
		javascriptexecutorClick(ele);
		// ele.click();
	}

//KPI

	public void KPIchartVisibleText(String string, String string2) {
		String xpath = "//*[contains(text(),'" + string + "')]/../..//*[contains(text(),'" + string2 + "')]";
		WebElement KPIText = driver.findElement(By.xpath(xpath));
		assertTrue("KPI Text is Not visible or Missmatched", KPIText.isDisplayed());
		TestBase.writeResponse("KPI Text Is Visible :" + string + " " + string2);
	}

//Zapp Permission

	public void ZappName(String placeHolder, String textToEnter) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(@placeholder,'" + placeHolder + "')]"));
		util.actionutil.moveToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter);
	}

	public void ZappEditPermissionClick(String string) throws InterruptedException {
		String xpath = "(//*[contains(text(),'" + string + "')])/..//input";
		WebElement editPermission = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(editPermission, 10);
		editPermission.click();
	}

	public void enterZappPermissionUser(String string, String textEnter) throws InterruptedException {
		String xpath = "(//*[contains(text(),'" + string + "')])/..//input";
		WebElement User = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(User, 10);
		User.sendKeys(textEnter);
	}

	public void ZappVisibleInList(String string) throws InterruptedException {
		String ZappName = string + dbname;
		String xpath = "(//*[contains(text(),'" + ZappName + "')])";
		WebElement Zapp = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(Zapp, 10);
		util.actionutil.moveToElement(Zapp);
		assertTrue("Zapp not Visible ", Zapp.isDisplayed());
		TestBase.writeResponse("Zapp is visible in List :" + ZappName);
	}

	public void ZappNOTVisibleInList(String string) {
		String ZappName = string + dbname;
		String xpath = "(//*[contains(text(),'" + ZappName + "')])";
		try {
			WebElement Zapp = driver.findElement(By.xpath(xpath));
			util.waitUtil.WaitForElementToBePresentUpdate(Zapp, 10);
			util.actionutil.moveToElement(Zapp);
			assertFalse("Zapp is Visible ", Zapp.isDisplayed());
			TestBase.writeResponse("Zapp is visible in List");
		} catch (Exception e) {
			TestBase.writeResponse("Zapp not visible in List :" + ZappName);
		}
	}

	public void ClickOnExpandButtonOfZapp(String string) throws InterruptedException {
		String xpath = "//*[contains(text(),'" + dbname + "')]/../..//*[contains(text(),'" + string + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 10);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickonNewZapp() throws InterruptedException {
		String xpath = "//*[contains(text(),'" + dbname + "')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 10);
		util.waitUtil.waitForElementClickable(ele, 5);
		// util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickonDataTableFilterBYID(String string) throws InterruptedException {
		String xpath = "//*[@id='dx-col-1']//span[2]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(ele, 2);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].scrollIntoView();", ele);
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnSlotandVerifiesTheDateTimeMonthView(int number) throws InterruptedException {
		String xpath = "(//div//table//tbody//tr//td)[" + randomMonthClick() + "]";
		WebElement Monthslot = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(Monthslot, 2);
		util.actionutil.moveToElement(Monthslot);
		Monthslot.click();
	}

	public void clickOnSlotOfDayViewOfCalendar(int index) throws InterruptedException {
	
		String xpath = "((//div[contains(@class,'dx-scrollable-container')])[3]//table//tr//td)[" + randomDayClick()
				+ "]";
		util.waitUtil.waitExecutionForGivenTime(5);
		WebElement Dayslot = driver.findElement(By.xpath(xpath));
	//	util.waitUtil.waitForIgnoreStaleElement(Dayslot, 5);
		util.waitUtil.WaitForElementToBePresentUpdate(Dayslot, 1);
		util.actionutil.moveToElement(Dayslot);
		util.waitUtil.waitExecutionForGivenTime(2);
	//	Dayslot.click();
	//	util.actionutil.javascriptexecutorClick(Dayslot);
		util.waitUtil.jsClickForIgnoredStaleElement(Dayslot, 5);
	//	Dayslot.click();
	}

	public void clickOnSlotOfWeekViewOfCalendar(int index) throws InterruptedException {
		String xpath = "((//div[contains(@class,'dx-scrollable-container')])[3]//table//tr//td)[" + randomWeekClick()
				+ "]";
		util.waitUtil.waitExecutionForGivenTime(5);
		WebElement Weekslot = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(Weekslot, 1);
		util.waitUtil.waitForElementClickable(Weekslot);
	//	util.actionutil.moveToElement(Weekslot);
		Weekslot.click();
	}
	
	public void clickOnSlotOfTimelineViewOfCalendar(int index) throws InterruptedException {
		String xpath = "((//div[contains(@class,'dx-scrollable-container')])[3]//table//tr//td)[" + randomTimelineClick()
				+ "]";
		util.waitUtil.waitExecutionForGivenTime(5);
		WebElement timelineslot = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(timelineslot, 5);
		util.actionutil.moveToElement(timelineslot);
		util.waitUtil.waitExecutionForGivenTime(2);
		testbase.javascriptexecutorClick(timelineslot);
//		timelineslot.click();
	}
	
	// DIPAK
	public void clickOnthreeDotByuserindexandClass(String string, int number) throws InterruptedException {
		String xpath = "(//*[contains(text(),'User" + number + "')]/../../..//*[@class='" + string + "'])";
		WebElement userthreedot = driver.findElement(By.xpath(xpath));
		util.waitUtil.WaitForElementToBePresentUpdate(userthreedot, 2);
		try {
			userthreedot.click();
		} catch (Exception e) {
			Thread.sleep(2000);
			userthreedot.click();
		}
	}

}
