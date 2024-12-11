package pageObjects;

import static org.junit.Assert.assertTrue;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

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
import testbase.TestBase;
import utilities.Utilities;

public class DashboardPage {

	private WebDriver driver;
	public String dbname;
	Utilities util = new Utilities(driver);
	TestBase testbase = new TestBase();

	public DashboardPage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	@FindBy(xpath = "//span[text()='Dashboard']/parent::a")
	WebElement dashboardInSidebar;

	public void clickOnDashboardInSidebar() {
		dashboardInSidebar.click();
	}

	@FindBy(xpath = "//i[@type='plus']/parent::button")
	WebElement plusButtonInDashboard;

	public void clickOnPlusButtonInDashboard() {
		plusButtonInDashboard.click();
	}

	@FindBy(xpath = "//span[text()='Rearrange']/parent::button")
	WebElement rearrangeButtonInDashboard;

	public void clickOnRearrangeButtonInDashboard() {
		rearrangeButtonInDashboard.click();
	}

	@FindBy(xpath = "//span[text()='Edit']/parent::button")
	WebElement editButtonInDashboard;

	public void clickOnEditButtonInDashboard() {
		editButtonInDashboard.click();
	}

	@FindBy(xpath = "//span[text()='Dashboard Rearrange ']/parent::button")
	WebElement dashboardRearrangeDropdown;

	public void clickOnDashboardRearrangeDropdown() {
		dashboardRearrangeDropdown.click();
	}

	// span[text()='Save']/parent::button
	@FindBy(xpath = "//input[@placeholder='Title']")
	WebElement titleTextBoxInAddDashboardForm;

	public void enterInTitleTextBoxInAddDashboardForm(String title) {
		titleTextBoxInAddDashboardForm.sendKeys(title);
	}

	public WebElement dropdownInAddDashboardForm(String dropdownName) {
		String xpathExpression = "//app-dashboards-add/div/div//div/label[text()='" + dropdownName + "']/..//nz-select";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement dashboardName(String dashboardName) {
		String xpathExpression = "//a[normalize-space()='" + dashboardName + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//span[text()='Add widget']/parent::button")
	WebElement addWidgetButtonInDashboard;

	public void clickOnAddWidgetButtonInDashboard() {
		addWidgetButtonInDashboard.click();
	}

	public WebElement widgetBasedOnDescription(String description) {
		String xpathExpression = "//div[@class='ant-card-meta-description ng-star-inserted' and text()='" + description
				+ "']/ancestor::nz-card";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement widgetBasedOnTitle(String title) {
		String xpathExpression = "//div[@class='ant-card-meta-title ng-star-inserted' and text()='" + title
				+ "']/ancestor::nz-card";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement accordionInWidgetsBasedOnVisibleText(String title) {
		String xpathExpression = "//div[normalize-space()='" + title + "'][@class='ant-collapse-header']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//input[@placeholder='Title']")
	public WebElement titleInDetailsOfWidget;

	public void enterInTitleOfWidget(String title) {
		titleInDetailsOfWidget.sendKeys(title);
	}

	@FindBy(xpath = "//span[normalize-space()='Add']/parent::button[@class='ant-btn ant-btn-default ant-btn-sm']")
	WebElement addButtonInWidget;

	public void clickOnAddButtonInWidget() {
		addButtonInWidget.click();
	}

	public WebElement dropdownBasedOnPlaceholderInDataPointsInWidget(String placeholder) {
		String xpathExpression = "//div[@class='ng-select-container']/parent::ng-select[@placeholder='" + placeholder
				+ "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement optionInChooseFormDropdownInDataPointsInWidgetBasedOnVisibleText(String option) {
		String xpathExpression = "//span[normalize-space()='" + option
				+ "']/parent::div[@class='ng-option ng-star-inserted']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement optionInChooseFieldDropdownInDataPointsInWidgetBasedOnVisibleText(String option) {
		String xpathExpression = "//span[normalize-space()='" + option
				+ "']/parent::div[contains(@class,'ng-option ng-option-child') and contains(@class,'ng-star-inserted')]";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement checkboxInDataPointsInWidgetBasedOnVisibleText(String text) {
		String xpathExpression = "//span[normalize-space()='" + text + "']/preceding-sibling::span/input";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//span[text()='Configure']/parent::button")
	WebElement configureButtonInPivot;

	public void clickOnConfigureButtonInPivot() {
		configureButtonInPivot.click();
	}

	public WebElement dropdownInDataManipulationInWidgetBasedOnTitle(String title) {
		String xpathExpression = "//label[normalize-space()='" + title + "']/following-sibling::nz-select";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement buttonInDataManipulationByVisibleText(String title) {
		String xpathExpression = "//button[normalize-space()='" + title + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//label[normalize-space()='Label']/following-sibling::input")
	WebElement labelTextboxInWidgets;

	public void enterInLabelTextboxInWidgets(String label) {
		labelTextboxInWidgets.sendKeys(label);
	}

	public WebElement inputFieldByLabel(String label) {
		String xpathExpression = "//label[normalize-space()='" + label + "']/following-sibling::input";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement dropdownInTooltipInWidgetBasedOnTitle(String title) {
		String xpathExpression = "//label[normalize-space()='" + title + "']/following-sibling::nz-select";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement optionIndropdownInTooltipInWidgetBasedOnText(String title, int... index) {
		String xpathExpression;
		if (index.length > 0) {
			xpathExpression = "(//li[normalize-space()='" + title + "'])['" + index[0] + "']";
		} else {
			xpathExpression = "//li[normalize-space()='" + title + "']";
		}
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement dropdownInFilterInWidgetBasedOnText(String title) {
		String xpathExpression = "//label[normalize-space()='" + title + "']/following-sibling::ng-select";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement dropdownInLegendsInWidgetBasedOnText(String text) {
		String xpathExpression = "//div[contains(@class,'ant-select-selection__placeholder')][normalize-space()='"
				+ text + "']/../..";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//label[normalize-space()='Value']/ancestor::div[@class='row']/following-sibling::div/div/input")
	WebElement valueTextboxInConditionalFormattingInSeries;

	public void enterInValueTextboxInConditionalFormattingInSeries(String value) {
		valueTextboxInConditionalFormattingInSeries.sendKeys(value);
	}

	public void clickOnValueTextboxInConditionalFormattingInSeries() {
		valueTextboxInConditionalFormattingInSeries.click();
	}

	public WebElement valueTextboxInConditionalFormattingInSeriesByIndex(int... index) {
		String indexExpression = "";
		if (index.length > 0) {
			indexExpression = Arrays.toString(index).replace("[", "").replace("]", "");
		}
		// String xpathExpression = "(//nz-select[@nzplaceholder='" + text + "']/div)["
		// + indexExpression + "]";

		String xpathExpression = "(//label[normalize-space()='Value']/ancestor::div[@class='row']/following-sibling::div/div/input)["
				+ indexExpression + "]";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//label[normalize-space()='Color']/ancestor::div[@class='row']//app-z-color-picker/div/div")
	WebElement colorPickerInConditionalFormattingInSeriesesAccordion;

	public void clickOnColorPickerInConditionalFormattingInSeriesAccordion() {
		colorPickerInConditionalFormattingInSeriesesAccordion.click();
	}

	public void clickOnColorPickerInConditionalFormattingInSeriesAccordionByIndex(int... index) {
		String indexExpression = "";
		if (index.length > 0) {
			indexExpression = Arrays.toString(index).replace("[", "").replace("]", "");
		}
		String xpathExpression = "(//label[normalize-space()='Color']/ancestor::div[@class='row']//app-z-color-picker/div/div)["
				+ indexExpression + "]";
		driver.findElement(By.xpath(xpathExpression)).click();
	}

	public WebElement colorPickerBasedOnVisibleTextInDetailsAccordion(String title) {
		String xpathExpression = "//label[normalize-space()='" + title
				+ "']/ancestor::div[@class='mb-2']//app-z-color-picker/div/div";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement textFieldBasedOnVisibleTextInDatapointsAccordion(String title) {
		String xpathExpression = "//label[normalize-space()='" + title + "']/..//input[@type='text']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement buttonInFooterInDatapointsFormByVisibleText(String title) {
		String xpathExpression = "(//div[contains(@class,'modal-footer')]//button[normalize-space()='" + title
				+ "'])[last()]";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//div[normalize-space()='Serieses'][@class='ant-collapse-header']/following::button[normalize-space()='Add']")
	public WebElement addButtonInSeriesesAccordion;

	public WebElement addButtonBasedOnAccordionName(String title) {
		String xpathExpression = "//div[normalize-space()='" + title
				+ "'][@class='ant-collapse-header']/following::button[normalize-space()='Add']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement dropdownInSeriesBasedOnPlaceholder(String text) {
		String xpathExpression = "//nz-select[@nzplaceholder='" + text + "']/div";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement dropdownInSeriesBasedOnPlaceholder(String text, int... index) {
		String indexExpression = "";
		if (index.length > 0) {
			indexExpression = Arrays.toString(index).replace("[", "").replace("]", "");
		}
		String xpathExpression = "(//nz-select[@nzplaceholder='" + text + "']/div)[" + indexExpression + "]";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//label[normalize-space()='Description']/following-sibling::textarea")
	public WebElement descriptionTextboxInDetailsAccordion;

	public void enterInDescriptionTextboxInDetailsAccordion(String description) {
		descriptionTextboxInDetailsAccordion.sendKeys(description);
	}

	public WebElement colorBasedOnColorCode(String colorCode) {
		String xpathExpression = "//div[@class='swatch'][@title='" + colorCode + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//label[normalize-space()='Limit data rows']/following-sibling::nz-input-number//input")
	public WebElement limitDataRowsNumberBoxInDatapointsAccordion;

	public void enterInlimitDataRowsNumberBoxInDatapointsAccordion(String number) {
		limitDataRowsNumberBoxInDatapointsAccordion.sendKeys(number);
	}

	public WebElement numberBoxInAccordion(String label) {
		String xpathExpression = "//label[normalize-space()='" + label + "']/following-sibling::nz-input-number//input";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement addButtonInPivotBasedOnColumnHeading(String heading) {
		String xpathExpression = "//h6[normalize-space()='" + heading
				+ "']/following-sibling::nz-dropdown//button[normalize-space()='ADD']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//h6[normalize-space()='Post Operations']/following-sibling::button[normalize-space()='ADD']")
	public WebElement addButtonInPivotInPostOperationsColumn;

	public void clickOnAddButtonInPivotInPostOperationsColumn() {
		addButtonInPivotInPostOperationsColumn.click();
	}

	public WebElement closeButtonBasedOnAcoordionName(String name) {// For Data Points, it is Data point. For Serieses,
																	// it is Series. For Filters, Filter.
		String xpathExpression = "//div[normalize-space()='" + name
				+ "']/../../preceding-sibling::button[@aria-label='Close']";// For Tooltip Config, it is Tooltip.
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//a[@class='danger']")
	public WebElement smallCloseButton;

	public void clickOnSmallCloseButton() {
		smallCloseButton.click();
	}

	@FindBy(xpath = "//*[name()='svg'][@data-icon='delete']/..")
	public WebElement deleteIcon;

	public void clickOnDeleteIcon() {
		deleteIcon.click();
	}

	public WebElement tabNameInAccordion(String tabName) {
		String xpathExpression = "//a[@role='tab'][normalize-space()='" + tabName + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement radioNameBasedOnVisibleText(String radioName) {
		String xpathExpression = "//input[@type='radio']/parent::label[normalize-space()='" + radioName + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement optionInDropdownInFormulaTabBasedOnVisibleText(String option) {
		String xpathExpression = "//span[normalize-space()='" + option + "']/parent::div[@role='option']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement optionAfterClickingOnADDButtonInPivotBasedOnVisibleText(String option) {
		String xpathExpression = "//li[normalize-space()='" + option + "']";// li[normalize-space()='"+option+"']/../..
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement dropdownInPivotBasedOnFieldName(String fieldName) {
		String xpathExpression = "//span[normalize-space()='" + fieldName
				+ "']/../following-sibling::div/nz-select/div";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//div[normalize-space()='Value']/following-sibling::div/input")
	public WebElement valueTextBoxInDropdownInDatapointsAccordion;

	public void enterInValueTextBoxInDropdownInDatapointsAccordion(String number) {
		valueTextBoxInDropdownInDatapointsAccordion.sendKeys(number);
	}

	public WebElement textboxInDropdownBasedOnPlaceholder(String placeholder) {
		String xpathExpression = "//div[normalize-space()='" + placeholder + "']/following-sibling::div/input";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//nz-select[@nzplaceholder='Select summary type']/div")
	public WebElement dropdownInPivotInSummarizeby;

	public void clickOnDropdownInPivotInSummarizeby() {
		dropdownInPivotInSummarizeby.click();
	}

	public WebElement optionInDropdownInAdvancedTabInFilterAccordion(String option) {
		String xpathExpression = "//span[normalize-space()='" + option + "']/..";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//label[normalize-space()='Title']/../../following-sibling::div//input")
	public WebElement titleTextBoxInCustomizeAxisAccordion;

	public void enterIntitleTextBoxInCustomizeAxisAccordion(String title) {
		titleTextBoxInCustomizeAxisAccordion.sendKeys(title);
	}

	@FindBy(xpath = "//div[@class='ant-popover-inner-content']//span[normalize-space()='Delete']/..")
	public WebElement deleteButtonInPopup;

	public void clickOnDeleteButtonInPopup() {
		deleteButtonInPopup.click();
	}

	public WebElement buttonByType(String type) {// setting,copy,delete,reload,down
		String xpathExpression = "//i[@nztype='" + type + "']/parent::button";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement buttonByTypeAndWidgetName(String type, String widgetName) {
		String xpathExpression = "//h4[normalize-space()='" + widgetName + "']/../following-sibling::div//i[@nztype='"
				+ type + "']/parent::button";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement optionInChooseColumnTypeDropdownInAdvancedTabInDataPointsAccordion(String option) {
		String xpathExpression = "//*[contains(text(),'" + option + "')]/parent::div[@role='option']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement optionInDropdownInCopyWidgetByVisibleText(String text) {
		String xpathExpression = "//li[normalize-space()='" + text + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//h6[text()='Summarize by']/../following-sibling::div//div[@class='ant-card-head-title ng-star-inserted']//span")
	public WebElement fieldAfterClickingADDButtoninSummarizeByInPivot;

	public void doubleClickOnFieldAfterClickingADDButtoninSummarizeByInPivot() {
		util.actionutil.doubleClick(fieldAfterClickingADDButtoninSummarizeByInPivot);
	}

	@FindBy(xpath = "//h6[text()='Summarize by']/../following-sibling::div//div[@class='ant-card-head-title ng-star-inserted']/input")
	public WebElement inputFieldAfterClickingADDButtoninSummarizeByInPivot;

	public void enterInInputFieldAfterClickingADDButtoninSummarizeByInPivot(String name) {
		inputFieldAfterClickingADDButtoninSummarizeByInPivot.sendKeys(name, Keys.ENTER);
	}

	public WebElement messageAtTopRightCorner(String message) {
		String xpathExpression = "//div[@id='toast-container' and @class='toast-top-right toast-container'][normalize-space()='"
				+ message + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}// Widget edited successfully,Widget deleted successfully,

	public WebElement doughnutWidgetReflectionByTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title + "']/ancestor::app-dashboard-widget-doughnut";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public String getDoughnutWidgetTitleLatestInReflection() {
		String xpathExpression = "(//app-dashboard-widget-doughnut//h4[@class='card-title cursor-pointer mb-0'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public WebElement dropdownAtTopRightInDoughnutWidgetReflectionByWidgetTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title
				+ "']/ancestor::app-dashboard-widget-doughnut//nz-dropdown/button[@nzsize='small']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public boolean isDataPreviewTableDisplayed() {
		return driver.findElement(By.xpath("//div[@class='card-body pt-0 pb-0']")).isDisplayed();
	}

	public boolean isDataLoadingErrorMessageDisplayed() {
		return driver.findElement(By.xpath("//div[@class='dx-error-message'][text()='Data Loading Error']"))
				.isDisplayed();
	}

	public String getDoughnutWidgetDescriptionLatestInReflectionByTitle(String title) {
		String xpathExpression = "(//app-dashboard-widget-doughnut//h4[normalize-space()='" + title
				+ "']//following-sibling::p[@class='text-muted mb-1'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public void enterInInputFieldInSelctRolesDropdown(String role) {
		String xpathExpression = "//li/input";
		driver.findElement(By.xpath(xpathExpression)).sendKeys(role);
	}

	public WebElement buttonByInnerTextInHTMLStaticWidget(String innerText) {
		String xpathExpression = "//app-dashboard-widget-static-html//div[@class='dx-button-content'][normalize-space()='"
				+ innerText + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}// Header,Insert Table,Bold,Italic,Strikethrough,
		// add-widget-data-manipulation-modal//button/span[text()='Add']

	@FindBy(xpath = "//add-widget-data-manipulation-modal//button")
	public WebElement addButtonInDataManipulation;

	public void clickOnAddButtonInDataManipulation() {
		addButtonInDataManipulation.click();
	}

	public WebElement elementByTitleInDataSourceInConfigure(String title) {
		String xpathExpression = "//span[text()='" + title + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "(//input[@type='text'])[last()]")
	public WebElement inputTextboxInConfigureInDataSource;

	public void enterInInputTextboxInConfigureInDataSource(String text) {
		inputTextboxInConfigureInDataSource.sendKeys(text, Keys.ENTER);
	}

	@FindBy(xpath = "(//nz-input-number//input[contains(@class,'ant-input-number-input')])[2]")
	public WebElement inputNumberboxInConfigureInDataSource;

	public void enterInInputNumberboxInConfigureInDataSource(String number, int... index) {
		String indexExpression = "";
		if (index.length > 0) {
			indexExpression = Arrays.toString(index).replace("[", "").replace("]", "");
		}
		String xpathExpression = "(//nz-input-number//input[contains(@class,'ant-input-number-input')])['"
				+ indexExpression + "']";
		driver.findElement(By.xpath(xpathExpression)).clear();
		driver.findElement(By.xpath(xpathExpression)).sendKeys(String.valueOf(number), Keys.ENTER);
	}

	@FindBy(xpath = "(//*[name()='svg'][@data-icon='filter'])[2]")
	public WebElement filterIconInConfigureInDatasource;

	public void clickOnFilterIconInConfigureInDatasource() {
		// filterIconInConfigureInDatasource.click();
		util.actionutil.click(filterIconInConfigureInDatasource);
		// JavascriptExecutor jse=(JavascriptExecutor) driver;
	}

	@FindBy(xpath = "(//i[@nztype='eye'])[1]")
	public WebElement hideIconInConfigureInDatasource;

	public void clickOnHideIconInConfigureInDatasource() {
		hideIconInConfigureInDatasource.click();
	}

	public void clickOndownarrowByVisibleTextByIndex(String visibleText, int... index) {
		String indexExpression = "";
		if (index.length > 0) {
			indexExpression = Arrays.toString(index).replace("[", "").replace("]", "");
		}
		driver.findElement(
				By.xpath("(//*[contains(text(),'" + visibleText + "')]/../../span)['" + indexExpression + "']"))
				.click();
	}

	public WebElement optionInViewPermissionDropdownByVisibleText(String title) {
		String xpathExpression = "//span[text()='" + title + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//*[@class='card-body pt-0 h-100']")
	WebElement element;

	public void TakeScreenShot(Scenario scenario) {
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

	public String getKpiWidgetTitleLatestInReflection() {
		String xpathExpression = "(//app-dashboard-widget-new-kpi//h4[@class='card-title cursor-pointer mb-0'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public String getKpiWidgetDescriptionLatestInReflectionByTitle(String title) {
		String xpathExpression = "(//app-dashboard-widget-new-kpi//h4[normalize-space()='" + title
				+ "']//following-sibling::p[@class='text-muted mb-1'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public WebElement kpiWidgetReflectionByTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title + "']/ancestor::app-dashboard-widget-new-kpi";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement dropdownAtTopRightInKpiWidgetReflectionByWidgetTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title
				+ "']/ancestor::app-dashboard-widget-new-kpi//nz-dropdown/button[@nzsize='small']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public String getTasktrackertableWidgetTitleLatestInReflection() {
		String xpathExpression = "(//app-dashboard-widget-task-tracker-table//h4[@class='card-title cursor-pointer mb-0'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public String getTasktrackertableWidgetDescriptionLatestInReflectionByTitle(String title) {
		String xpathExpression = "(//app-dashboard-widget-task-tracker-table//h4[normalize-space()='" + title
				+ "']//following-sibling::p[@class='text-muted mb-1'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public WebElement dropdownAtTopRightInTasktrackertableWidgetReflectionByWidgetTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title
				+ "']/ancestor::app-dashboard-widget-task-tracker-table//nz-dropdown/button[@nzsize='small']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement taskTrackerTableWidgetReflectionByTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title
				+ "']/ancestor::app-dashboard-widget-task-tracker-table";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement inputByIndexInFilterInDatasource(int... index) {
		String xpathExpression;
		String indexExpression = "";
		if (index.length > 0) {
			indexExpression = Arrays.toString(index).replace("[", "").replace("]", "");
			xpathExpression = "//input[contains(@placeholder,'Value')]['" + indexExpression + "']";
		} else {
			xpathExpression = "//input[contains(@placeholder,'Value')]";
		}
		return driver.findElement(By.xpath(xpathExpression));
	}

	public String getLinechartWidgetTitleLatestInReflection() {
		String xpathExpression = "(//app-dashboard-widget-line-chart//h4[@class='card-title cursor-pointer mb-0'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public String getLinechartWidgetDescriptionLatestInReflectionByTitle(String title) {
		String xpathExpression = "(//app-dashboard-widget-line-chart//h4[normalize-space()='" + title
				+ "']//following-sibling::p[@class='text-muted mb-1'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public WebElement dropdownAtTopRightInLinechartWidgetReflectionByWidgetTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title
				+ "']/ancestor::app-dashboard-widget-line-chart//nz-dropdown/button[@nzsize='small']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement lineChartWidgetReflectionByTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title + "']/ancestor::app-dashboard-widget-line-chart";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public String getGanttWidgetTitleLatestInReflection() {
		String xpathExpression = "(//app-dashboard-widget-gantt-chart//h4[@class='card-title cursor-pointer mb-0'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public String getGanttWidgetDescriptionLatestInReflectionByTitle(String title) {
		String xpathExpression = "(//app-dashboard-widget-gantt-chart//h4[normalize-space()='" + title
				+ "']//following-sibling::p[@class='text-muted mb-1'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public WebElement dropdownAtTopRightInGanttWidgetReflectionByWidgetTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title
				+ "']/ancestor::app-dashboard-widget-gantt-chart//nz-dropdown/button[@nzsize='small']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement ganttWidgetReflectionByTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title + "']/ancestor::app-dashboard-widget-gantt-chart";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "(//span[text()='Configure']//preceding-sibling::i[@type='setting']/parent::button[@nzsize='small'])[last()]")
	public WebElement configureButtonInGanttConfig;

	public void clickOnConfigureButtonInGanttConfig() {
		configureButtonInGanttConfig.click();
	}

	public WebElement dropdownInGanttByLabel(String label) {
		String xpathExpression = "//label[text()='" + label + "']//following-sibling::nz-select";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public String getPiechartWidgetTitleLatestInReflection() {
		String xpathExpression = "(//app-dashboard-widget-pie-chart//h4[@class='card-title cursor-pointer mb-0'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public String getPiechartWidgetDescriptionLatestInReflectionByTitle(String title) {
		String xpathExpression = "(//app-dashboard-widget-pie-chart//h4[normalize-space()='" + title
				+ "']//following-sibling::p[@class='text-muted mb-1'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public WebElement dropdownAtTopRightInPiechartWidgetReflectionByWidgetTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title
				+ "']/ancestor::app-dashboard-widget-pie-chart//nz-dropdown/button[@nzsize='small']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement piechartWidgetReflectionByTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title + "']/ancestor::app-dashboard-widget-pie-chart";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public String getIframeWidgetTitleLatestInReflection() {
		String xpathExpression = "(//app-dashboard-widget-iframe//h4[@class='card-title cursor-pointer mb-0'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public String getIframeWidgetDescriptionLatestInReflectionByTitle(String title) {
		String xpathExpression = "(//app-dashboard-widget-iframe//h4[normalize-space()='" + title
				+ "']//following-sibling::p[@class='text-muted mb-1'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public WebElement dropdownAtTopRightInIframeWidgetReflectionByWidgetTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title
				+ "']/ancestor::app-dashboard-widget-iframe//nz-dropdown/button";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement iframeWidgetReflectionByTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title + "']/ancestor::app-dashboard-widget-iframe";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public String getBarchartWidgetTitleLatestInReflection() {
		String xpathExpression = "(//app-dashboard-widget-new-bar-chart//h4[@class='card-title cursor-pointer mb-0'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public String getBarchartWidgetDescriptionLatestInReflectionByTitle(String title) {
		String xpathExpression = "(//app-dashboard-widget-new-bar-chart//h4[normalize-space()='" + title
				+ "']//following-sibling::p[@class='text-muted mb-1'])[last()]";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	public WebElement dropdownAtTopRightInBarchartWidgetReflectionByWidgetTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title
				+ "']/ancestor::app-dashboard-widget-new-bar-chart//nz-dropdown/button";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement barchartWidgetReflectionByTitle(String title) {
		String xpathExpression = "//h4[normalize-space()='" + title + "']/ancestor::app-dashboard-widget-new-bar-chart";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "(//span[text()='Configure'])[last()]")
	WebElement configButttonInGanttConfig;

	public WebElement clickOnConfigButttonInGanttConfigByVisibleText(String text) {
		return driver.findElement(By.xpath("(//span[text()='" + text + "'])[last()]"));
	}

	public WebElement checkboxByVisibleText(String label) {
		return driver
				.findElement(By.xpath("//span[text()='" + label + "']//preceding-sibling::*//input[@type='checkbox']"));
	}

	public WebElement dropdownDownArrowByLabel(String label) {
		return driver.findElement(By.xpath("//*[contains(text(),'" + label + "')]/..//*[@data-icon='down']"));
	}

	@FindBy(xpath = "(//button[normalize-space()='Save'])[last()]")
	public WebElement saveButtoninDashboard;

	@FindBy(xpath = "(//div/span[text()='Generic'])[last()]")
	public WebElement genericOptionInDropdown;

	@FindBy(xpath = "(//div[normalize-space()='Filters'][@class='ant-collapse-header']/following::button[normalize-space()='Add'])[1]")
	public WebElement addButtonInFiltersAccordion;

	@FindBy(xpath = "//span[text()='Transpose']//preceding-sibling::span/input")
	public WebElement transposeCheckbox;

	@FindBy(xpath = "//div[normalize-space()='Tooltip Config'][@class='ant-collapse-header']/following-sibling::div/div/div/button/span[text()='Add']/..")
	public WebElement addButtonInTooltipConfig;

	public WebElement dropdownInCalendarByLabel(String label) {
		return driver.findElement(By.xpath("//label[normalize-space()='" + label + "']/following-sibling::nz-select"));
	}

	@FindBy(xpath = "(//button[normalize-space()='Data Preview'])[last()]")
	public WebElement dataPeviewButtonInDatapointsInCalendar;

	public void clickOnDataPeviewButtonInDatapointsInCalendar() {
		dataPeviewButtonInDatapointsInCalendar.click();
	}

	@FindBy(xpath = "(//span[@class='dx-button-text'][text()='OK'])[2]/..")
	public WebElement okButtonInHtmlviewerStatic;

	public void clickOnOkButtonInHtmlviewerStatic() {
		// okButtonInHtmlviewerStatic.click();
		// util.actionutil.click(okButtonInHtmlviewerStatic);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click();", okButtonInHtmlviewerStatic);
	}

	@FindBy(xpath = "(//div[@class='ant-card-meta-title ng-star-inserted' and text()='HTML Viewer']/ancestor::nz-card)[2]")
	public WebElement htmlviewerRaw;

	public void clickOnHtmlviewerRaw() {
		htmlviewerRaw.click();
	}

	@FindBy(xpath = "//span[normalize-space()='Add Filter']/..")
	public WebElement addFilterInTasktrackerTable;

	public void clickOnAddFilterInTasktrackerTable() {
		// addFilterInTasktrackerTable.click();
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click();", addFilterInTasktrackerTable);

	}

	// DIPAK

	public void externalLinkWebelement(String str) {
		String xpath = "(//*[contains(text(),'" + str + "')])[2]";
		driver.findElement(By.xpath(xpath));
	}

	@FindBy(xpath = "(//*[contains(text(),'Background Color')]/..//div)[2]")
	WebElement BackgroundColorChanger;
	@FindBy(xpath = "(//*[contains(text(),'Color 1')]/..//div)[2]")
	WebElement BackgroungColor_1;
	@FindBy(xpath = "(//*[contains(@class,'swatch')])[21]")
	WebElement BackgroungColorSelect;

	public void backgroundColorSelction() {
		BackgroundColorChanger.click();
		testbase.setImplecitWait();
		BackgroungColor_1.click();
		util.actionutil.doubleClick(BackgroungColorSelect);
		// BackgroungColor_1.click();
		// BackgroundColorChanger.click();
	}

	@FindBy(xpath = "//*[contains(text(),'Icon Color')]/..//div//div")
	WebElement IconColor;
	@FindBy(xpath = "//*[@title='#F78DA7']")
	WebElement IconColorSelect;

	public void iconcolorSelection() {
		IconColor.click();
		testbase.setImplecitWait();
		IconColorSelect.click();
	}

	@FindBy(xpath = "(//*[contains(text(),'Text Color')])/..//div[1]//div")
	WebElement TextColor;
	@FindBy(xpath = "//*[@title='#9900EF']")
	WebElement TextColorSelect;

	public void textcolorSelection() {
		TextColor.click();
		testbase.setImplecitWait();
		TextColorSelect.click();
	}

	@FindBy(xpath = "(//*[contains(text(),'Demo')])/..//li[2]")
	WebElement CrossZappDatasource;

	public void crosszappdatasource() {
		CrossZappDatasource.click();
	}

	public void DateFilterVerificationToday(String string) {
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		String strDate = formatter.format(date);
		try {
			String xpath = "//*[contains(text(),'" + string
					+ "')]/../../../../../..//following-sibling::div//div//span[contains(text(),'" + strDate + "')]";
			List<WebElement> ele = driver.findElements(By.xpath(xpath));
			for (WebElement filterDate : ele) {
				assertTrue("Date filter of todays option is not working", filterDate.isDisplayed());
				TestBase.writeResponse("Todays date is visible after date filter :" + strDate);
			}
		} catch (Exception e) {
			String xpath = "//*[contains(text(),'" + string
					+ "')]/../../../../../..//following-sibling::div//div//span[contains(text(),'" + strDate + "')]";
			WebElement ele = driver.findElement(By.xpath(xpath));
			assertTrue("Date filter of todays option is not working", ele.isDisplayed());
			TestBase.writeResponse("Todays date is visible after date filter :" + strDate);
		}
	}

	public void DateFilterVerificationLast7Days(String string, int int1) {
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		String strDate = formatter.format(date);
		System.out.println("Todays date is  :" + strDate);
		String[] dateSplit = strDate.split("-");
		String day = dateSplit[0];
		String CurrentMonth = dateSplit[1];
		// System.out.println("Todays(string) day of date is :" + day);
		int TodayDay = Integer.parseInt(day);
		int CURRENTmonth = Integer.parseInt(CurrentMonth);
		// System.out.println("Todays integer day is :" + TodayDay);

		int lastday = TodayDay - int1;

		try {
			String xpath = "//*[contains(text(),'" + string
					+ "')]/../../../../../..//following-sibling::div//div//tr//td[@aria-describedby='dx-col-1']//div//span";
			List<WebElement> ele = driver.findElements(By.xpath(xpath));
			for (WebElement filterDate : ele) {
				String gettext = filterDate.getText();
				String[] split = gettext.split("-");
				String dateDay = split[0];
				String DateMonth = split[1];
				int DATEDAY = Integer.parseInt(dateDay);
				int DATEMonth = Integer.parseInt(DateMonth);
				if (CURRENTmonth == DATEMonth) {
					if (DATEDAY <= TodayDay && DATEDAY >= lastday) {
						TestBase.writeResponse("Date is smaller than Todays date :" + gettext);
					} else {
						TestBase.writeResponse("'Last 7 Days' Date filter not works ");
					}
//				} else if (DATEMonth > CURRENTmonth || DATEMonth < CURRENTmonth) {
//					}
				}
			}
		} catch (Exception e) {
			String xpath = "//*[contains(text(),'" + string
					+ "')]/../../../../../..//following-sibling::div//div//tr//td[@aria-describedby='dx-col-1']//div//span";
			WebElement ele = driver.findElement(By.xpath(xpath));
			String gettext = ele.getText();
			String[] split = gettext.split("-");
			String dateDay = split[0];
			int DATEDAY = Integer.parseInt(dateDay);
			if (DATEDAY < TodayDay && DATEDAY >= lastday) {
				TestBase.writeResponse("Date is smaller than Todays date :" + gettext);
			} else {
				TestBase.writeResponse("Last 7 Days Date filter not works : ");
			}
		}
	}

}
