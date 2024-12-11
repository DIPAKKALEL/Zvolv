package pageObjects;

import static org.junit.Assert.assertEquals;

import java.awt.AWTException;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.Point;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.sikuli.script.FindFailed;
import org.sikuli.script.Pattern;
import org.sikuli.script.Screen;

import junit.framework.Test;
import testbase.TestBase;
import utilities.Utilities;

public class EnterDataPointsofDatabasesPageObjects extends TestBase {

	private WebDriver driver;
	Utilities util = new Utilities(driver);
	public Point p;
	public String loggedinUser;

	public EnterDataPointsofDatabasesPageObjects(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	@FindBy(xpath = "//i[@class='ft-rotate-cw']")
	WebElement ReloadProjects;

	public void clickOnReloadProjects() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(ReloadProjects, 10);
		util.actionutil.moveToElement(ReloadProjects);
		ReloadProjects.click();
		// util.waitUtil.waitExecutionForGivenTime(5);
	}

	@FindBy(xpath = "//input[contains(@class,'ant-input-flat ant-input ng')]")
	WebElement searchbar;

	public void ClickOnSearchbar() {
		util.actionutil.moveToElement(searchbar);
		util.actionutil.click(searchbar);
	}

	@FindBy(xpath = "//*[@id='dropdownBasic3']/nz-avatar")
	WebElement userAvatar;

	public void clickOnAvatar() {
		userAvatar.click();

	}

	@FindBy(xpath = "//input[contains(@class,'ant-input-flat ant-input ng')]")
	WebElement enterDatabaseName;

	public void enterDatabaseName(String database) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(enterDatabaseName, 10);
		enterDatabaseName.sendKeys(TestBase.dbname);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//input[contains(@class,'ant-input-flat ant-input ng')]")
	WebElement enterDatabaseName2;

	public void enterDatabaseName2(String string) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(enterDatabaseName2, 10);
		enterDatabaseName2.sendKeys(string);
		util.waitUtil.waitExecutionForGivenTime(3);
	}

	@FindBy(xpath = "//h4[@class='card-title']")
	WebElement gotodatabase;

	public void goToDatabase() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(gotodatabase, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		gotodatabase.click();
	}

	@FindBy(xpath = "//*[@data-icon='edit']")
	WebElement editLogo;

	public void clickOnEditLogo1() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(editLogo, 10);
		util.actionutil.moveToElement(editLogo);
		editLogo.click();
	}

	@FindBy(xpath = "//*[@data-icon='edit']")
	WebElement editLogo2;

	public void clickOnEditLogo2() throws Exception {
		driver.navigate().refresh();
		util.waitUtil.WaitForElementToBePresentUpdate(editLogo2, 10);
		util.actionutil.moveToElement(editLogo2);
		editLogo2.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Edit Columns']")
	WebElement editcolumns;

	public void clickOnEditColumns() {
		util.actionutil.moveToElement(editcolumns);
		editcolumns.click();
	}

	@FindBy(xpath = "//i[@nztype='cloud-upload']/..")
	WebElement Import;

	public void clickOnImport() {
		Import.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//i[@nztype='download']/..")
	WebElement Download;

	public void clickOnDownload() {
		Download.click();
	}

	@FindBy(xpath = "//input[@type='file']")
	WebElement File;

	public void ImportFile() {
		File.sendKeys(System.getProperty("user.dir") + "/Samples/Employee Table.xlsx");
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//input[@type='file']")
	WebElement FILE;

	public void ImportFILE(String string) {
		File.sendKeys(System.getProperty("user.dir") + "/Samples/" + string + "");
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "(//input[@type='file'])[2]")
	WebElement OldFormFile;

	public void ImportFILEoldForm(String string) {
		OldFormFile.sendKeys(System.getProperty("user.dir") + "/Samples/" + string + ".xlsx");
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//i[@class='ft-settings font-small-2']")
	WebElement settings;

	public void clickonSettingsIcon() {
		settings.click();
	}

	@FindBy(xpath = "//*[text()=' Delete ']")
	WebElement delete;

	public void clickOnDelete() {
		delete.click();
	}

	@FindBy(xpath = "//h5[text()='Data Points']")
	WebElement datapointsform;

	public void dataPointsForm() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(datapointsform, 10);
		String actualform5name = datapointsform.getText();
		String expectedform5name = "Data Points";
		TestBase.writeResponse("expected database form name is == " + expectedform5name);
		TestBase.writeResponse("actual database form name is == " + actualform5name);
		Assert.assertEquals(expectedform5name, actualform5name);
	}

	@FindBy(xpath = "//label[text()='Name']")
	WebElement nametextbox;

	public void clickOnNameTextBox() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(nametextbox, 10);
		nametextbox.click();
	}

	@FindBy(xpath = "//*[@placeholder='Field label']")
	public WebElement Fieldlabelclick;

	public void clickOnFieldLabel() {
		Fieldlabelclick.click();
	}

	@FindBy(xpath = "//*[@placeholder='Field label']")
	WebElement Clearfieldlable;

	public void clearFieldlabel() {
		util.actionutil.moveToElement(Clearfieldlable);
		Clearfieldlable.clear();
	}

//	@FindBy(xpath="//*[@placeholder='Field label']")
//	WebElement Enterfieldlabel1;
//	public void enterFieldlabel(String Datapoint1){
//		Enterfieldlabel1.sendKeys(Datapoint1);
//	}

	@FindBy(xpath = "//*[@placeholder='Field label']")
	WebElement Fieldlabel;

	public void enterFieldLabel(String Datapoint1) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(Fieldlabel, 10);
		// util.actionutil.moveToElement(Fieldlabel);
		// Fieldlabel.click();
		Fieldlabel.clear();
		Fieldlabel.sendKeys(Datapoint1);
	}

	@FindBy(xpath = "(//button[@type='button'])[4]")
	WebElement Donebutton;

	public void clickOnDoneButton() {
		util.actionutil.moveToElement(Donebutton);
		util.actionutil.click(Donebutton);
		// util.waitUtil.WaitForElementToBePresentUpdate(fieldbutton, 3);
	}

	@FindBy(xpath = "//*[contains(text(),'Field')]")
	WebElement fieldbutton;

	public void clickOnFieldButton() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(fieldbutton, 10);
		util.actionutil.moveToElement(fieldbutton);
		fieldbutton.click();
	}

	@FindBy(xpath = "//*[contains(text(),'Text Edit')]")
	WebElement textedit;

	public void clickOnTexteditDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(textedit, 5);
		util.actionutil.moveToElement(textedit);
		javascriptexecutorClick(textedit);
		// textedit.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[1]")
	WebElement checkbox;

	public void clickOnCheckbox() {
		checkbox.click();
	}

	@FindBy(xpath = "(//button[@type='button'])[4]")
	WebElement Donebutton2;

	public void clickOnDoneButton2() {
		Donebutton.click();
		// util.waitUtil.WaitForElementToBePresentUpdate(fieldbutton2, 3);
	}

	@FindBy(xpath = "(//button[@class='btn btn-outline-primary pull-right'])[1]") // sharath
	WebElement fieldbutton2;

	public void clickOnFieldButton2() {
		fieldbutton2.click();
	}

	@FindBy(xpath = "//*[@placeholder='Field label']")
	WebElement Fieldlabelclick3;

	public void clickOnFieldLabel3() {
		Fieldlabelclick3.click();
	}

	@FindBy(xpath = "//*[@placeholder='Field label']")
	WebElement Clearfieldlable3;

	public void clearingFieldlabel3() {
		Clearfieldlable3.clear();
	}

	@FindBy(xpath = "//*[@placeholder='Field label']")
	WebElement Enterfieldlabel3;

	public void enterThirdFieldLabel3(String Datapoint3) {
		Enterfieldlabel3.sendKeys(Datapoint3);
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[2]")
	WebElement dropdownlist;

	public void clickOnDropdownList() {
		dropdownlist.click();
	}

	@FindBy(xpath = "//input[@placeholder='Add option']")
	WebElement addoption;

	public void enterDropdownOptions(String option) {
		addoption.sendKeys(option, Keys.ENTER);
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[3]")
	WebElement radiogroup;

	public void clickOnRadioGroup() {
		radiogroup.click();
	}

	@FindBy(xpath = "//input[@placeholder='Add option']")
	WebElement addoptionradiogroup;

	public void addOptionRadioGroup(String option) {
		addoptionradiogroup.sendKeys(option, Keys.ENTER);
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[4]")
	WebElement datepicker;

	public void clickOnDatePicker() {
		datepicker.click();
	}

	@FindBy(xpath = "//button[text()='Save']")
	WebElement Savebutton;

	public void clickOnSaveButton() {
		Savebutton.click();
	}

	@FindBy(xpath = "//div[@id='swal2-content']")
	WebElement updatepopup;

	public void updatePopup() {
		updatepopup.getText();
		TestBase.writeResponse("popup is showing as == " + updatepopup.getText());
	}

	@FindBy(xpath = "//input[@id='deploy-retrofit-mf']")
	WebElement retrofitcheckbox;

	public void clickOnRetrofitCheckbox() {
		retrofitcheckbox.click();
		util.waitUtil.waitExecutionForGivenTime(2);
		// util.screenshotutil.ScreenshotOfFullPage();
	}

	@FindBy(xpath = "//button[text()='OK']")
	WebElement Okbutton;

	public void clickOnOkButton() {
		Okbutton.click();
	}

	@FindBy(id = "toast-container")
	public WebElement updatemsg;

	public void formUpdtaedSuccessfully() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(updatemsg, 10);
		String expectedmsg = "Form updated successfully";
		String Actualmsg = updatemsg.getText();
		TestBase.writeResponse("Actual displayed message is == " + Actualmsg);
		TestBase.writeResponse("Expected displayed message is == " + expectedmsg);
		Assert.assertEquals(expectedmsg, Actualmsg);
	}

	public void SubmissionUpdtaedSuccessfully() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(updatemsg, 10);
		String expectedmsg = "Submission updated successfully";
		String Actualmsg = updatemsg.getText();
		TestBase.writeResponse("Actual displayed message is == " + Actualmsg);
		TestBase.writeResponse("Expected displayed message is == " + expectedmsg);
		Assert.assertEquals(expectedmsg, Actualmsg);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	public void getDataSyncMsg() {
		String expectedmsg = "Data sync request accepted";
		String Actualmsg = updatemsg.getText();
		TestBase.writeResponse("Actual displayed message is == " + Actualmsg);
		TestBase.writeResponse("Expected displayed message is == " + expectedmsg);
		Assert.assertEquals(expectedmsg, Actualmsg);
		driver.navigate().refresh();
		util.waitUtil.waitExecutionForGivenTime(5);
	}

	@FindBy(xpath = "//button[@class='mr-2 ant-btn ant-btn-primary ant-btn-sm ng-star-inserted']")
	WebElement addbutton;

	public void clickOnAddButton() {
		driver.navigate().refresh();
		// util.waitUtil.WaitForElementToBePresentUpdate(,10);();
		util.waitUtil.waitExecutionForGivenTime(1);
		util.actionutil.moveToElement(addbutton);
		addbutton.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//button[@class='ant-drawer-close ng-star-inserted']")
	WebElement closeicon;

	public void clickOnCloseIcon() {
		closeicon.click();
	}

	@FindBy(xpath = "//textarea[contains(@class,'z-text-input-disabled ant-inp')]")
	WebElement texteditvalue;

	public void entertexteditvalue(String textvalue) {
		texteditvalue.sendKeys(textvalue);
	}

	@FindBy(xpath = "//input[@class='ant-checkbox-input ng-untouched ng-pristine ng-valid']")
	WebElement checkboxinvalues;

	public void checkOnChcekbox() {
		checkboxinvalues.click();
	}

	@FindBy(xpath = "//div[@class='ant-select-selection__rendered']")
	WebElement dropdownvalue;

	public void clickOnDropDownvalue() {
		dropdownvalue.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[2]")
	WebElement choosedropdownvalue;

	public void chooseDropdownValue() {
		choosedropdownvalue.click();
	}

	@FindBy(xpath = "//input[@type='radio']")
	WebElement radioboxcheck;

	public void chooseradiobox() {
		radioboxcheck.click();
	}

	@FindBy(xpath = "//input[@class='ant-calendar-picker-input ant-input ng-star-inserted']")
	WebElement selectdate;

	public void clickOnSelectDate() {
		selectdate.click();
	}

	@FindBy(xpath = "(//div[@class='ant-calendar-date ng-star-inserted'])[24]")
	WebElement date;

	public void selectDate() {
		date.click();
	}

	@FindBy(xpath = "//span[text()=' Submit']/..")
	WebElement submitbutton;

	public void clickOnSubmitButton() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(submitbutton, 10);
		util.actionutil.moveToElement(submitbutton);
		submitbutton.click();

	}

	@FindBy(id = "toast-container")
	WebElement submitmsg;

	public void formSubmittedSuccessfully() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(submitmsg, 10);
		String expectedmsg = "Submission created successfully";
		String Actualmsg = submitmsg.getText();
		TestBase.writeResponse("Actual displayed message is == " + Actualmsg);
		TestBase.writeResponse("Expected displayed message is == " + expectedmsg);
		Assert.assertEquals(expectedmsg, Actualmsg);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(id = "toast-container")
	WebElement submitmsgForAutomationTriggger;

	public void formSubmittedSuccessfullyForAutomationTriggger() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(submitmsgForAutomationTriggger,10);
		util.waitUtil.waitExecutionForGivenTime(3);
		String expectedmsg = "Submission created successfully";
		String Actualmsg = submitmsgForAutomationTriggger.getText();
		TestBase.writeResponse("Actual displayed message is == " + Actualmsg);
		TestBase.writeResponse("Expected displayed message is == " + expectedmsg);
		Assert.assertEquals(expectedmsg, Actualmsg);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(id = "toast-container")
	WebElement InvalidMsg;

	public void formSubmittedSuccessfullyForInvalid() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(InvalidMsg, 10);
		String expectedmsg = "";
		String Actualmsg = InvalidMsg.getText();
		TestBase.writeResponse("Actual displayed message is == " + Actualmsg);
		TestBase.writeResponse("Expected displayed message is == " + expectedmsg);
		Assert.assertEquals(expectedmsg, Actualmsg);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	// --------User Search and Form Search dropdown Fields---------//

	@FindBy(xpath = "//li[text()=' Edit ']")
	WebElement Edit;

	public void clickOnEdit() {
		Edit.click();
	}

	@FindBy(xpath = "//*[contains(text(),'User Search')]")
	WebElement UserSearch;

	public void clickOnUserSearch() {
		util.actionutil.moveToElement(UserSearch);
		UserSearch.click();
	}

	@FindBy(xpath = "(//input[contains(@class,'mat-input-element')])[2]")
	WebElement SelectDataSource;

	public void enterDataSouce(String DataSource) {
		SelectDataSource.click();
		SelectDataSource.clear();
		SelectDataSource.sendKeys(DataSource);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//span[@class='mat-option-text']")
	WebElement DataSource;

	public void clickOnDataSource() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(DataSource, 10);
		DataSource.click();
	}

	@FindBy(xpath = "//input[@placeholder='Max results']")
	WebElement MaxResult;

	public void giveMaxResult(String Maxresult) {
		MaxResult.clear();
		MaxResult.sendKeys(Maxresult);
	}

	@FindBy(xpath = "(//div[@class='mat-checkbox-inner-container'])[1]")
	WebElement SetLoogedinUserasDefaultCheckBox;

	public void clickOnSetLoogedinUserasDefaultCheckBox() {
		SetLoogedinUserasDefaultCheckBox.click();
	}

	@FindBy(xpath = "//*[contains(text(),'Form/Database Search')]")
	WebElement FormSearch;

	public void ClickOnFormSearch() {
		util.actionutil.moveToElement(FormSearch);
		FormSearch.click();
	}

	@FindBy(xpath = "//div[text()='Choose Form']")
	WebElement chooseForm;

	public void clickOnChooseForm() {
		chooseForm.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Employee Master']")
	WebElement EmployeeMaster;

	public void clickOnEmployeeMaster() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(EmployeeMaster, 10);
		EmployeeMaster.click();
	}

	@FindBy(xpath = "(//div[contains(@class,'ant-select-selection__placeholder')])[3]")
	WebElement SearchField;

	public void clickOnSearchField() {
		SearchField.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Employee Name']")
	WebElement Value1;

	public void clickOnValue1() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(Value1, 10);
		Value1.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "(//div[contains(@class,'ant-select-selection__placeholder')])[4]")
	WebElement SelectFiled;

	public void clickOnSelectField() {
		SelectFiled.click();
	}

	@FindBy(xpath = "(//div[contains(@class,'ant-select-selection__placeholder')])[5]")
	WebElement DisplayField;

	public void clickOnDisplayField() {
		DisplayField.click();
	}

	@FindBy(xpath = "//*[contains(text(),'Dependencies')]")
	WebElement Dependencies;

	public void clickOnDependencies() {
		util.actionutil.moveToElement(Dependencies);
		Dependencies.click();
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//*[contains(text(),'Add dependency logic')]/../../..//button")
	WebElement addButtonOnDependencies;

	public void clickOnaddButtonOnDependencies() {
		addButtonOnDependencies.click();
	}

	@FindBy(xpath = "//*[contains(text(),'Master Form Field')]")
	WebElement MasterFormField;

	public void clickOnMasterFormField() {
		MasterFormField.click();
	}

	@FindBy(xpath = "(//*[contains(text(),'Master Form Field')])[2]")
	WebElement MasterFormField2;

	public void clickOnMasterFormField2() {
		MasterFormField2.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Employee Name']")
	WebElement EmployeeName1;

	public void clickOnEmployeeName1() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(EmployeeName1, 10);
		EmployeeName1.click();
	}

	@FindBy(xpath = "//*[text()='Form Field']")
	WebElement FormField;

	public void clickOnFormField() {
		FormField.click();
	}

	@FindBy(xpath = "(//*[text()='Form Field'])[2]")
	WebElement FormField2;

	public void clickOnFormField2() {
		FormField2.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Employee ID']")
	WebElement EmployeeID;

	public void clickOnEmployeeID() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(EmployeeID, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		EmployeeID.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Department']")
	WebElement Department;

	public void clickOnDepartment() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(Department, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		Department.click();
	}

	@FindBy(xpath = "(//div[@class='ant-select-selection__rendered'])[1]")
	WebElement assignee;

	public void clickOnAssignee() {
		assignee.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[1]")
	WebElement assigneeValue;

	public void giveAssigneeValue() {
		assigneeValue.click();
		util.actionutil.TAB();
		// assigneeValue.sendKeys(Keys.TAB);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "(//div[@class='ant-select-selection__rendered'])[1]")
	WebElement Employeename;

	public void clickOnemployeenameValue() {
		Employeename.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[1]")
	WebElement employeeValue;

	public void giveEmployeeValue() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(employeeValue, 10);
		employeeValue.click();
	}

	@FindBy(xpath = "(//button[text()='Add'])[3]")
	WebElement addButtonOnFormSearch;

	public void clickOnAddButtonOnFormSearch() {
		addButtonOnFormSearch.click();
	}

	@FindBy(xpath = "//*[@class='ant-spin-container ng-star-inserted']")
	WebElement User;

	public void getUser() {
		String text = User.getText();
		TestBase.writeResponse("Displayed LoggedInUser : " + text);
		TestBase.writeResponse("Actual LoggedInUser : " + loggedinUser);
	}

	public void getLoggedInUser() {
		WebElement ele = driver.findElement(By.xpath("//*[@class='font-small-3']"));
		util.actionutil.moveToElement(ele);
		loggedinUser = ele.getText();
		TestBase.writeResponse("LoggedInUser : " + loggedinUser);
	}

	// **********************************************File Upload(Depricated) and
	// File Upload*********************************************//
	@FindBy(xpath = "//*[contains(text(),'File Upload(deprecated)')]")
	WebElement FileUploadDepricated;

	public void clickOnFileUploadDepricated() {
		util.actionutil.moveToElement(FileUploadDepricated);
		FileUploadDepricated.click();
	}

	@FindBy(xpath = "(//*[contains(text(),'File Upload')])[2]")
	WebElement FileUpload;

	public void clickOnFileUpload() {
		util.actionutil.moveToElement(FileUpload);
		FileUpload.click();
	}

	@FindBy(xpath = "//mat-label[text()='Allowed File Types']")
	WebElement AllowedFileTypes;

	public void clickOnAllowedFileTypes() {
		// util.waitUtil.WaitForElementToBePresentUpdate(,10);();
		AllowedFileTypes.click();
	}

	@FindBy(xpath = "(//span[@class='mat-option-text'])[4]")
	WebElement Audio;

	public void clickOnAudio() {
		Audio.click();
	}

	@FindBy(xpath = "(//span[@class='mat-option-text'])[5]")
	WebElement Video;

	public void clickOnVideo() {
		Video.click();
	}

	@FindBy(xpath = "(//span[@class='mat-option-text'])[1]")
	WebElement Document;

	public void clickOnDocument() {
		Document.click();
	}

	@FindBy(xpath = "(//span[@class='mat-option-text'])[2]")
	WebElement image;

	public void clickOnimage() {
		image.click();
	}

	@FindBy(xpath = "(//span[@class='mat-option-text'])[3]")
	WebElement Text;

	public void clickOnText() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(Text, 10);
		Text.click();
	}

	@FindBy(xpath = "//span[text()=' Any (*) ']")
	WebElement any;

	public void clickOnAny() {
		any.click();
	}

	@FindBy(xpath = "//input[@placeholder='Maximum Number of Files']")
	WebElement MaxNumOfFiles;

	public void enterMaxNumOfFiles(String string) {
		MaxNumOfFiles.sendKeys(string);
	}

	@FindBy(xpath = "//input[@placeholder='Maximum File Size (in KB)']")
	WebElement MaxFileSize;

	public void enterMaxFileSize(String string) {
		MaxFileSize.sendKeys(string);
	}

	@FindBy(xpath = "//div[@class='mat-checkbox-inner-container']")
	WebElement ShowAsProfileImagePicker;

	public void clickOnShowAsProfileImagePicker() {
		ShowAsProfileImagePicker.click();
	}

	@FindBy(xpath = "//mat-panel-title[text()=' Filters ']")
	WebElement Filters;

	public void clickOnFilters() {
		util.actionutil.scrollToElement(Filters);
		Filters.click();
	}

	@FindBy(xpath = "//div[contains(@class,'cdk-overlay-backdrop')]")
	WebElement Body;

	public void clickOnBody2() {
		util.waitUtil.waitExecutionForGivenTime(2);
		// util.actionutil.moveToElement(element);
		Body.click();

	}

	@FindBy(xpath = "//i[@class='ft-plus']")
	WebElement PlusIconOnFilters;

	public void clickOnPlusIconOnFilters() {
		util.actionutil.moveToElement(PlusIconOnFilters);
		PlusIconOnFilters.click();
	}

	@FindBy(xpath = "//div[text()='Field']")
	WebElement FieldOnFilters;

	public void clickOnFieldOnFilters() {
		util.actionutil.moveToElement(FieldOnFilters);
		FieldOnFilters.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[1]")
	WebElement Option1OnFieldOfFilters;

	public void clickOnOption1() {
		Option1OnFieldOfFilters.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[2]")
	WebElement Option2OnFieldOfFilters;

	public void clickOnOption2() {
		Option2OnFieldOfFilters.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[3]")
	WebElement Option3OnFieldOfFilters;

	public void clickOnOption3() {
		Option3OnFieldOfFilters.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[4]")
	WebElement Option4OnFieldOfFilters;

	public void clickOnOption4() {
		Option4OnFieldOfFilters.click();
	}

	@FindBy(xpath = "//*[contains(text(),'Filters')]/../../..//input")
	WebElement ValueOnFilters;

	public void enterValueOnFilters(String string) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(ValueOnFilters, 10);
		util.actionutil.moveToElement(ValueOnFilters);
		ValueOnFilters.click();
		ValueOnFilters.sendKeys(string, Keys.ENTER);
	}

	@FindBy(xpath = "//*[@placeholder='Value']")
	WebElement ValueOnFilters2;

	public void enterValueOnFilters2(String string) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(ValueOnFilters2, 10);
		util.actionutil.moveToElement(ValueOnFilters2);
		// ValueOnFilters2.click();
		ValueOnFilters2.sendKeys(string, Keys.ENTER);
	}

	@FindBy(xpath = "//i[@class='ft-x font-small-3']")
	WebElement CrossIconOnFilters;

	public void clickOnCrossIconOnFilters() {
		CrossIconOnFilters.click();
	}

	@FindBy(xpath = "//mat-panel-title[text()=' Helpers ']")
	public WebElement helpers;

	public void clickOnHelpers() {
		util.actionutil.moveToElement(helpers);
		helpers.click();
	}

	@FindBy(xpath = "//input[@placeholder='Info text']")
	WebElement InfoText;

	public void enterInfoText(String string) {
		InfoText.sendKeys(string);
	}

	@FindBy(xpath = "//input[@placeholder='Help text']")
	WebElement HelpText;

	public void enterHelpText(String string) {
		HelpText.sendKeys(string);
		// util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//mat-panel-title[text()=' Data Validation ']")
	WebElement DataValidation;

	public void clickOnDataValidation() {
		/*
		 * Robot r = new Robot(); r.keyPress(KeyEvent.VK_PAGE_DOWN);
		 * r.keyRelease(KeyEvent.VK_PAGE_DOWN);
		 */
		DataValidation.click();
	}

	@FindBy(xpath = "//*[contains(text(),'Data Validation')]/../../..//*[contains(text(),'Add')]")
	WebElement addButtonOnDataValidation;

	public void clickOnaddButtonOnDataValidation() {
		addButtonOnDataValidation.click();
	}

	@FindBy(xpath = "//input[@placeholder='Expression']")
	WebElement Expression;

	public void enterExpression(String string) {
		Expression.sendKeys(string);
	}

	@FindBy(xpath = "//input[@placeholder='Error message']")
	WebElement Errormsg;

	public void enterErrormsg(String string) {
		Errormsg.sendKeys(string);
	}

	@FindBy(xpath = "//mat-panel-title[text()=' Advanced ']")
	WebElement Advanced;

	public void clickOnAdvanced() {
		util.actionutil.moveToElement(Advanced);
		Advanced.click();
	}

	@FindBy(xpath = "//span[text()='Required']")
	WebElement Required;

	public void clickOnRequired() {
		util.actionutil.moveToElement(Required);
		Required.click();
	}

	@FindBy(xpath = "//span[text()='Editable']")
	WebElement Editable;

	public void clickOnEditable() {
		Editable.click();
	}

	@FindBy(xpath = "//span[text()='Admin only']")
	WebElement AdminOnly;

	public void clickOnAdminOnly() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(AdminOnly, 10);
		util.actionutil.moveToElement(AdminOnly);
		AdminOnly.click();
	}

	@FindBy(xpath = "//span[text()='Show label']")
	WebElement Showlabel;

	public void clickOnShowlabel() {
		Showlabel.click();
	}

	@FindBy(xpath = "//span[text()='Unique']")
	WebElement Unique;

	public void clickOnUnique() {
		Unique.click();
	}

	@FindBy(xpath = "//span[text()='Edit if unique']")
	WebElement EditIfUnique;

	public void clickOnEditIfUnique() {
		EditIfUnique.click();
	}

	@FindBy(xpath = "//span[text()='Hidden']")
	WebElement Hidden;

	public void clickOnHidden() {
		Hidden.click();
	}

	@FindBy(xpath = "//span[text()='Lazy load']")
	WebElement Lazyload;

	public void clickOnLazyload() {
		Lazyload.click();
	}

	@FindBy(xpath = "//span[text()='Load widgets']")
	WebElement LoadWidgets;

	public void clickOnLoadWidgets() {
		LoadWidgets.click();
	}

	@FindBy(xpath = "//span[text()='Copy value from other field? ']")
	WebElement CopyValueFromOtherFields;

	public void clickOnCopyValueFromOtherFields() {
		CopyValueFromOtherFields.click();
	}

	@FindBy(xpath = "(//div[@class='ant-select-selection__rendered'])[3]")
	WebElement copyValueFromField;

	public void entercopyValueFromField(String string) {
		copyValueFromField.sendKeys(string);
	}

	@FindBy(xpath = "(//input[@placeholder='User Attribute'])[1]")
	WebElement ViewSubmission;

	public void enterViewSubmission(String string) {
		ViewSubmission.sendKeys(string);
	}

	@FindBy(xpath = "(//input[@placeholder='User Attribute'])[2]")
	WebElement EditSubmission;

	public void enterEditSubmission(String string) {
		EditSubmission.sendKeys(string);
	}

	@FindBy(xpath = "//input[@type='file']")
	public WebElement CameraIcon;

	public void Uploadimagejpg() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SampleJpeg.jpg";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void Uploadimagepng() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SamplePng.png";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void UploadPdf() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SamplePdf.pdf";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void UploadExcel() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SampleExcel.xlsx";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void Uploadppt() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SamplePPT.pptx";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void UploadDoc() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SampleDoc.doc";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void UploadText() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SampleTxt.txt";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void UploadAny() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SampleMP3 (2).mp3";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void UploadAudio() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SampleMP3 (2).mp3";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	public void UploadVideo() throws Exception {
		// util.waitUtil.WaitForElementToBePresentUpdate(CameraIcon,10);
		util.waitUtil.waitExecutionForGivenTime(1);
		// CameraIcon.click();
		String File = "/Samples/SampleMP4.mp4";
		CameraIcon.sendKeys(System.getProperty("user.dir") + File);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	public void clickOnImageFile() {
		String xpath = "//*[contains(@class,'mr-1 ant-avatar ant-avatar-square ant-avatar-image')]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	public void clickOnfile() {
		String xpath = "//*[@data-icon='file']";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	// ******************************************Rating
	// bar***********************************************//
	@FindBy(xpath = "//*[contains(text(),'Rating Bar')]")
	WebElement Ratingbar;

	public void clickOnRatingbar() {
		util.actionutil.moveToElement(Ratingbar);
		Ratingbar.click();
	}

	@FindBy(xpath = "(//div[@class='br-unit ng-star-inserted'])[1]")
	WebElement Stars;

	public void clickOnStars() {
		Stars.click();
	}

	@FindBy(xpath = "(//i[@type='star'])[10]")
	WebElement FiveStar;

	public void clickOnFiveStar() {
		// util.waitUtil.WaitForElementToBePresentUpdate(,10);();
		util.actionutil.moveToElement(FiveStar);
		FiveStar.click();
	}

	// *******************************************Progress
	// bar**********************************************//
	@FindBy(xpath = "//*[contains(text(),'Progress Bar')]")
	WebElement Progressbar;

	public void clickOnProgressbar() {
		util.actionutil.moveToElement(Progressbar);
		Progressbar.click();
	}

	@FindBy(xpath = "//input[@placeholder='Value']")
	WebElement valueOnProgressBar;

	public void enterValueOnProgressBar(String string) {
		valueOnProgressBar.sendKeys(string);
	}

	@FindBy(xpath = "//input[@placeholder='Min']")
	WebElement MinOnProgressBar;

	public void enterMinOnProgressBar(String string) {
		MinOnProgressBar.sendKeys(string);
	}

	@FindBy(xpath = "//input[@placeholder='Max']")
	WebElement MaxOnProgressBar;

	public void enterMaxOnProgressBar(String string) {
		MaxOnProgressBar.sendKeys(string);
	}

	@FindBy(xpath = "//input[@placeholder='Step size']")
	WebElement StepSizeOnProgressBar;

	public void enterStepSizeOnProgressBar(String string) {
		StepSizeOnProgressBar.sendKeys(string);
	}

	@FindBy(xpath = "//div[@class='mat-slider-thumb']")
	WebElement sliderOnProgressBar;

	public void dragsliderOnProgressBar() {
		util.actionutil.dragandDrop(sliderOnProgressBar, -20, 0);
	}

	@FindBy(xpath = "(//div[@class='mat-checkbox-inner-container'])[1]")
	WebElement pythonMandatoryCheckbox;

	public void clickOnpythonMandatoryCheckbox() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(pythonMandatoryCheckbox, 10);
		pythonMandatoryCheckbox.click();
	}

	@FindBy(xpath = "//div[@class='ant-slider-handle']")
	WebElement ProgressBarValue;

	public void enterProgressBarValue() {
		util.actionutil.dragandDrop(ProgressBarValue, 40, 0);
	}

	// ******************************************Static
	// Text******************************************//
	@FindBy(xpath = "//*[contains(text(),'Static Text')]")
	WebElement StaticText;

	public void clickOnStaticText() {
		util.actionutil.moveToElement(StaticText);
		StaticText.click();
	}

	@FindBy(xpath = "//p[@class='mb-1 text-bold-400 ng-star-inserted']")
	WebElement StaticText2;

	public void getStaticText() {
		String Statictext = StaticText2.getText();
		TestBase.writeResponse("Displayed Static Text is : " + Statictext);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	// *******************************************Rich Text
	// Editor***********************************//
	@FindBy(xpath = "//*[contains(text(),'Rich Text Editor')]")
	WebElement RichTextEditor;

	public void clickOnRichTextEditor() {
		util.actionutil.moveToElement(RichTextEditor);
		RichTextEditor.click();
	}

	@FindBy(xpath = "//input[@placeholder='Hint']")
	WebElement HintorPlaceHolder;

	public void enterHintorPlaceHolder(String string) {
		HintorPlaceHolder.sendKeys(string);
	}

	@FindBy(xpath = "//*[@data-placeholder='Default value']")
	WebElement DefaultValue;

	public void enterDefaultValue(String string) {
		DefaultValue.sendKeys(string);
	}

	@FindBy(xpath = "(//div[@class='mat-checkbox-inner-container'])[1]")
	WebElement ShowAsPlainText;

	public void clickOnShowAsPlainText() {
		ShowAsPlainText.click();
	}

	@FindBy(xpath = "//div[@class='dx-dropdowneditor-icon']")
	public WebElement NormalTextDropDown;

	public void clickOnNormalTextDropDown() {
		NormalTextDropDown.click();
	}

	@FindBy(xpath = "(//div[@class='dx-item-content dx-list-item-content'])[2]")
	WebElement Heading1;

	public void clickOnHeading1() {
		Heading1.click();
		// util.waitUtil.WaitForElementToBePresentUpdate(,10);();
		NormalTextDropDown.click();
	}

	@FindBy(xpath = "(//div[@class='dx-item-content dx-list-item-content'])[3]")
	WebElement Heading2;

	public void clickOnHeading2() {
		Heading2.click();
		// util.waitUtil.WaitForElementToBePresentUpdate(,10);();
		NormalTextDropDown.click();
	}

	@FindBy(xpath = "(//div[@class='dx-item-content dx-list-item-content'])[4]")
	WebElement Heading3;

	public void clickOnHeading3() {
		Heading3.click();
		// util.waitUtil.WaitForElementToBePresentUpdate(,10);();
		NormalTextDropDown.click();
	}

	@FindBy(xpath = "(//div[@class='dx-item-content dx-list-item-content'])[5]")
	WebElement Heading4;

	public void clickOnHeading4() {
		Heading4.click();
		// util.waitUtil.WaitForElementToBePresentUpdate(,10);();
		NormalTextDropDown.click();
	}

	@FindBy(xpath = "(//div[@class='dx-item-content dx-list-item-content'])[6]")
	WebElement Heading5;

	public void clickOnHeading5() {
		Heading5.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "(//div[@class='dx-button-content'])[2]")
	WebElement bold;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[3]")
	WebElement italic;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[4]")
	WebElement StrikeThrough;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[5]")
	WebElement Underline;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[6]")
	WebElement AlignLeft;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[7]")
	WebElement AlignCentre;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[8]")
	WebElement AlignRight;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[9]")
	WebElement AlignJustify;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[10]")
	WebElement OrderedList;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[11]")
	WebElement BulletList;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[12]")
	WebElement FontColour;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[13]")
	WebElement BackGroundColour;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[14]")
	WebElement AddLink;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[15]")
	WebElement CodeBlock;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[16]")
	WebElement BlockQuote;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[17]")
	WebElement InsertTable;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[18]")
	WebElement DeleteTable;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[19]")
	WebElement InsertRowAbove;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[20]")
	WebElement InsertRowBelow;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[21]")
	WebElement DeleteRow;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[22]")
	WebElement InsertColumnLeft;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[23]")
	WebElement InsertColumnRight;
	@FindBy(xpath = "(//div[@class='dx-button-content'])[24]")
	WebElement DeleteColumn;
	@FindBy(xpath = "//div[@role='textbox']")
	WebElement richTextContainer;
	@FindBy(xpath = "//div[@class='dx-colorview-palette-handle dx-draggable']")
	WebElement giveFontColour;
	@FindBy(xpath = "//div[@aria-label='OK']")
	WebElement OkButtonOnRichText;
	@FindBy(xpath = "(//input[@inputmode='decimal'])[1]")
	WebElement rowsInRichText;
	@FindBy(xpath = "(//input[@inputmode='decimal'])[2]")
	WebElement ColumnsInRichText;
	@FindBy(xpath = "//div[@class='ql-editor dx-htmleditor-content']/h5")
	WebElement text;

	public void chooseStylesOnRichText() throws Exception {
		// util.robotclassutil.selectAll();
		util.actionutil.SelectAll();
		bold.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		italic.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		StrikeThrough.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		Underline.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		AlignLeft.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		AlignCentre.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		AlignRight.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		AlignJustify.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		OrderedList.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		BulletList.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		FontColour.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		util.actionutil.dragandDrop(giveFontColour, -194, -194);
		OkButtonOnRichText.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		richTextContainer.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		util.actionutil.SelectAll();
		// util.waitUtil.waitExecutionForGivenTime(2);
		BackGroundColour.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		util.actionutil.dragandDrop(giveFontColour, -194, -194);
		// util.waitUtil.waitExecutionForGivenTime(2);
		OkButtonOnRichText.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		CodeBlock.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		BlockQuote.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		InsertTable.click();
		util.waitUtil.WaitForElementToBePresentUpdate(rowsInRichText, 10);
		rowsInRichText.clear();
		rowsInRichText.sendKeys("3");
		ColumnsInRichText.clear();
		ColumnsInRichText.sendKeys("3");
		// util.waitUtil.waitExecutionForGivenTime(2);
		OkButtonOnRichText.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		InsertRowAbove.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		InsertRowBelow.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		DeleteRow.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		InsertColumnLeft.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		InsertColumnRight.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		DeleteColumn.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
		DeleteTable.click();
		// util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//*[text()='Preview']/..")
	WebElement Preview;

	public void clickOnPreview() {
		Preview.click();
	}

	@FindBy(xpath = "//*[text()='Rich Text']")
	WebElement RichTextFromDb;

	public void getRichTextFromDb() {
		String text = RichTextFromDb.getText();
		TestBase.writeResponse("Displayed Rich Text : " + text);
	}

	// *********************************************Table*********************************************************//
	public void enterTextUsingPlaceHolder(String string, String value, int index) {
		String xpath = "(//*[contains(text(),'" + string + "')]/../../../input)[" + index + "]";
		WebElement element = driver.findElement(By.xpath(xpath));
		element.clear();
		element.sendKeys(value);
	}

	@FindBy(xpath = "//*[contains(text(),'Table')]")
	WebElement Table;

	public void clickOnTable() {
		util.actionutil.moveToElement(Table);
		Table.click();
	}

	public void clickOnButtonUsingIndex(String string, int index) {
		String xpath = "(//*[contains(text(),'" + string + "')])[" + index + "]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void clickOnButtonUsingIndex2(String string, int index) {
		String xpath = "(//*[contains(text(),'" + string + "')])[" + index + "]/..";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	public void entertextUsingIndex(String string, int index, String value) {
		String xpath = "(//*[@placeholder='" + string + "'])[" + index + "]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.clear();
		element.sendKeys(value);
	}

	public void enterTextUsingLabel(String string, int index, String value) {
		String xpath = "(//*[contains(text(),'" + string + "')])[" + index + "]/../../..//textarea";
		WebElement element = driver.findElement(By.xpath(xpath));
		element.clear();
		element.sendKeys(value);
	}

	public void clickOnDataIconUsingIndex(String string, int index) {
		String xpath = "(//*[contains(@data-icon,'" + string + "')])[" + index + "]";
		WebElement element = driver.findElement(By.xpath(xpath));
		element.click();
	}

	public void clickOnEditButton() {
		String xpath = "//*[@nztype='edit']/../..//button";
		WebElement element = driver.findElement(By.xpath(xpath));
		element.click();
	}

	// ***************************************Section*****************************************************//
	@FindBy(xpath = "//*[contains(text(),'Section')]")
	WebElement Section;

	public void clickOnSection() {
		util.actionutil.moveToElement(Section);
		Section.click();
	}

	@FindBy(xpath = "//mat-label[text()='Select Fields']")
	WebElement SelectFields;

	public void clickOnSelectFields() {
		SelectFields.click();
	}

	@FindBy(xpath = "//span[normalize-space()='Employee Name']")
	WebElement firstField;

	public void selectfirstField() {
		// util.waitUtil.waitExecutionForGivenTime(2);
		util.actionutil.moveToElement(firstField);
		firstField.click();
	}

	@FindBy(xpath = "//span[normalize-space()='Employee Id']")
	WebElement secondField;

	public void selectsecondField() {
		// util.waitUtil.waitExecutionForGivenTime(2);
		util.actionutil.moveToElement(secondField);
		secondField.click();
	}

	@FindBy(xpath = "//div[contains(@class,'cdk-overlay-backdrop cdk-overlay-')]")
	WebElement clicking;

	public void clickingOp() {
		clicking.click();
	}

	@FindBy(xpath = "//span[normalize-space()='Department']")
	WebElement thirdField;

	public void selectthirdField() {
		// util.waitUtil.waitExecutionForGivenTime(2);
		util.actionutil.moveToElement(thirdField);
		thirdField.click();
	}

	@FindBy(xpath = "//span[normalize-space()='Salary']")
	WebElement fourthField;

	public void selectfourthField() {
		// util.waitUtil.waitExecutionForGivenTime(2);
		util.actionutil.moveToElement(fourthField);
		fourthField.click();
	}

	@FindBy(xpath = "(//div[@class='ant-collapse-header'])[1]")
	WebElement Section1Bar;

	public void clickOnSection1Bar() {
		Section1Bar.click();
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "(//div[@class='ant-collapse-header'])[2]")
	WebElement Section2Bar;

	public void clickOnSection2Bar() {
		Section2Bar.click();
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[1]")
	WebElement FirstValueOnSection;

	public void enterFirstValueOnSection(String string) {
		FirstValueOnSection.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[2]")
	WebElement SecondValueOnSection;

	public void enterSecondValueOnSection(String string) {
		SecondValueOnSection.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[3]")
	WebElement ThirdValueOnSection;

	public void enterThirdValueOnSection(String string) {
		ThirdValueOnSection.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[4]")
	WebElement FourthValueOnSection;

	public void enterFourthValueOnSection(String string) {
		FourthValueOnSection.sendKeys(string);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[1]")
	WebElement value1Section;

	public void getvalue1Section() {
		String text = value1Section.getText();
		TestBase.writeResponse("Section1 value : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[2]")
	WebElement value2Section;

	public void getvalue2Section() {
		String text = value2Section.getText();
		TestBase.writeResponse("Section1 value : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[3]")
	WebElement value3Section;

	public void getvalue3Section() {
		String text = value3Section.getText();
		TestBase.writeResponse("Section2 value : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[4]")
	WebElement value4Section;

	public void getvalue4Section() {
		String text = value4Section.getText();
		TestBase.writeResponse("Section2 value : " + text);
	}

	// ********************************************Stepper**********************************//

	@FindBy(xpath = "//*[contains(text(),'Stepper')]")
	WebElement Stepper;

	public void clickOnStepper() {
		util.actionutil.moveToElement(Stepper);
		Stepper.click();
	}

	@FindBy(xpath = "//i[@class='anticon anticon-plus ng-star-inserted']")
	WebElement AddStepInStepper;

	public void clickOnAddStepOnStepper() {
		AddStepInStepper.click();
	}

	@FindBy(xpath = "//input[@placeholder='Step title']")
	WebElement StepTitleOnStepper;

	public void enterStepTitleOnStepper(String string) {
		StepTitleOnStepper.clear();
		StepTitleOnStepper.sendKeys(string);
	}

	@FindBy(xpath = "(//div[@class='mat-form-field-infix'])[3]")
	WebElement SelectInnerFields;

	public void clickOnSelectInnerFields() {
		SelectInnerFields.click();
	}

	@FindBy(xpath = "//nz-avatar[@class='ant-avatar ant-avatar-circle']")
	WebElement avatarCircleOnStepper;

	public void clickOnavatarCircleOnStepper() {
		avatarCircleOnStepper.click();
	}

	@FindBy(xpath = "(//button[@nzshape='circle'])[10]")
	WebElement ChooseIcon;

	public void selectIcon() {
		ChooseIcon.click();
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[1]")
	WebElement FirstValueOnStepper;

	public void enterFirstValueOnStepper(String string) {
		FirstValueOnStepper.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[2]")
	WebElement SecondValueOnStepper;

	public void enterSecondValueOnStepper(String string) {
		SecondValueOnStepper.sendKeys(string);
	}

	@FindBy(xpath = "//button[@class='ant-btn ant-btn-primary ng-star-inserted']")
	WebElement nextButtonOnStepper;

	public void enternextButtonOnStepper() {
		nextButtonOnStepper.click();
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[3]")
	WebElement ThirdValueOnStepper;

	public void enterThirdValueOnStepper(String string) {
		ThirdValueOnStepper.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[4]")
	WebElement FourthValueOnStepper;

	public void enterFourthValueOnStepper(String string) {
		FourthValueOnStepper.sendKeys(string);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[1]")
	WebElement value1Stepper;

	public void getvalue1Stepper() {
		String text = value1Stepper.getText();
		TestBase.writeResponse("Stepper1 value : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[2]")
	WebElement value2Stepper;

	public void getvalue2Stepper() {
		String text = value2Stepper.getText();
		TestBase.writeResponse("Stepper1 value : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[3]")
	WebElement value3Stepper;

	public void getvalue3Stepper() {
		String text = value3Stepper.getText();
		TestBase.writeResponse("Stepper2 value : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[4]")
	WebElement value4Stepper;

	public void getvalue4Stepper() {
		String text = value4Stepper.getText();
		TestBase.writeResponse("Stepper2 value : " + text);
	}

	// ***************************tab******************************//
	@FindBy(xpath = "//*[contains(text(),'Tab')]")
	WebElement Tab;

	public void clickOnTab() {
		util.actionutil.moveToElement(Tab);
		Tab.click();
	}

	@FindBy(xpath = "//i[@class='anticon anticon-plus ng-star-inserted']")
	WebElement AddTabInTab;

	public void clickOnAddTab() {
		AddTabInTab.click();
	}

	@FindBy(xpath = "//input[@placeholder='Tab Title']")
	WebElement TabTitle;

	public void enterTabTitle(String string) {
		TabTitle.clear();
		TabTitle.sendKeys(string);
	}

	@FindBy(xpath = "//div[@class='ant-tabs-tab ng-star-inserted']")
	WebElement NextTab;

	public void clickOnNextTab() {
		// util.waitUtil.waitExecutionForGivenTime(2);
		NextTab.click();
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[1]")
	WebElement FirstValueOnTab;

	public void enterFirstValueOnTab(String string) {
		FirstValueOnTab.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[2]")
	WebElement SecondValueOnTab;

	public void enterSecondValueOnTab(String string) {
		SecondValueOnTab.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[3]")
	WebElement ThirdValueOnTab;

	public void enterThirdValueOnTab(String string) {
		ThirdValueOnStepper.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant')])[4]")
	WebElement FourthValueOnTab;

	public void enterFourthValueOnTab(String string) {
		FourthValueOnStepper.sendKeys(string);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[1]")
	WebElement value1;

	public void getvalue1() {
		String text = value1.getText();
		TestBase.writeResponse("Tab1 value : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[2]")
	WebElement value2;

	public void getvalue2() {
		String text = value2.getText();
		TestBase.writeResponse("Tab1 value : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[3]")
	WebElement value3;

	public void getvalue3() {
		String text = value3.getText();
		TestBase.writeResponse("Tab2 value : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[4]")
	WebElement value4;

	public void getvalue4() {
		String text = value4.getText();
		TestBase.writeResponse("Tab2 value : " + text);
	}

	// ************************email**********************//
	@FindBy(xpath = "//*[contains(text(),'Email')]")
	WebElement email;

	public void clickOnEmail() {
		util.actionutil.moveToElement(email);
		email.click();
	}

	@FindBy(xpath = "//input[@placeholder='Value']")
	WebElement EmailDefaultValue;

	public void enterEmailDefaultValue(String string) {
		EmailDefaultValue.sendKeys(string);
	}

	// **************************Currency***********************//
	@FindBy(xpath = "//*[contains(text(),'Currency')]")
	WebElement Currency;

	public void clickOnCurrency() {
		util.actionutil.moveToElement(Currency);
		Currency.click();
	}

	@FindBy(xpath = "(//i[contains(@class,'anticon ant-select-arrow')])[2]")
	WebElement CurrencyTypeDropDown;

	public void clickOnCurrencyTypeDropDown() {
		CurrencyTypeDropDown.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//li[contains(@class,'ant-select-dropdown')][1]")
	WebElement INR;

	public void chooseIndianRupee() throws Exception {
		CurrencyTypeDropDown.click();
		util.waitUtil.WaitForElementToBePresentUpdate(INR, 10);
		INR.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//li[contains(@class,'ant-select-dropdown')][2]")
	WebElement USD;

	public void chooseUSD() throws Exception {
		CurrencyTypeDropDown.click();
		util.waitUtil.WaitForElementToBePresentUpdate(USD, 10);
		USD.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//li[contains(@class,'ant-select-dropdown')][3]")
	WebElement EUR;

	public void chooseEUR() {
		EUR.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//li[contains(@class,'ant-select-dropdown')][4]")
	WebElement CHF;

	public void chooseCHF() throws Exception {
		CurrencyTypeDropDown.click();
		util.waitUtil.WaitForElementToBePresentUpdate(CHF, 10);
		CHF.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//li[contains(@class,'ant-select-dropdown')][5]")
	WebElement AUD;

	public void chooseAUD() throws Exception {
		CurrencyTypeDropDown.click();
		util.waitUtil.WaitForElementToBePresentUpdate(AUD, 10);
		AUD.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//li[contains(@class,'ant-select-dropdown')][6]")
	WebElement AED;

	public void chooseAED() throws Exception {
		CurrencyTypeDropDown.click();
		util.waitUtil.WaitForElementToBePresentUpdate(AED, 10);
		AED.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//input[@placeholder='Precision']")
	WebElement precesion;

	public void enterPrecesion(String string) {
		precesion.sendKeys(string);
	}

	@FindBy(xpath = "//input[@step='1']")
	WebElement CurrencyValue;

	public void enterCurrencyValue(String string) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(CurrencyValue, 10);
		CurrencyValue.sendKeys(string);
	}

	@FindBy(xpath = "//span[@class='ng-star-inserted dx-template-wrapper']")
	WebElement CurrencyValueFromdb;

	public void getCurrencyValueFromdb() {
		String value = CurrencyValueFromdb.getText();
		TestBase.writeResponse("Displayed Currency value: " + value);
	}

	// ******************************Percentage****************************************//
	@FindBy(xpath = "//*[contains(text(),'Percent')]")
	WebElement Percent;

	public void clickOnPercent() {
		util.actionutil.moveToElement(Percent);
		Percent.click();
	}

	@FindBy(xpath = "//input[@placeholder='Value']")
	WebElement ValueOnPercent;

	public void enterValueOfPercent(String string) {
		ValueOnPercent.sendKeys(string);
	}

	@FindBy(xpath = "//input[@step='1']")
	WebElement Percentage;

	public void enterPercentageValue(String string) {
		Percentage.click();
		// util.waitUtil.WaitForElementToBePresentUpdate(,10);(Percentage);
		Percentage.clear();
		// util.waitUtil.WaitForElementToBePresentUpdate(,10);(Percentage);
		Percentage.sendKeys(string);
	}

	@FindBy(xpath = "//span[@class='ng-star-inserted dx-template-wrapper']")
	WebElement PercentValue;

	public void getPercentValue() {
		String value = PercentValue.getText();
		TestBase.writeResponse("Displayed Percent value: " + value);
	}
	// **************************Formula****************************//

	@FindBy(xpath = "//*[contains(text(),'Formula')]")
	WebElement Formula;

	public void clickOnFormula() {
		util.actionutil.moveToElement(Formula);
		Formula.click();
	}

	@FindBy(xpath = "//textarea[@type='text']")
	WebElement FormulaValue;

	public void enterFormula(String string) {
		FormulaValue.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled')])[1]")
	WebElement FormulaValues1;

	public void enterFormulaValues1(String string) {
		FormulaValues1.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled')])[2]")
	WebElement FormulaValues2;

	public void enterFormulaValues2(String string) {
		FormulaValues2.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled')])[3]")
	WebElement FormulaValues3;

	public void enterFormulaValues3(String string) {
		FormulaValues3.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled')])[4]")
	WebElement FormulaValues4;

	public void enterFormulaValues4(String string) {
		FormulaValues4.sendKeys(string);
	}

	@FindBy(xpath = "//*[@nzplacement='topCenter']")
	WebElement ResultField;

	public void clickOnResultField() {
		ResultField.click();
	}

	@FindBy(xpath = "(//span[@class='ant-form-item-children'])[3]")
	WebElement Result;

	public void clickOnResult() {
		Result.click();
	}

	// *************location**************//
	@FindBy(xpath = "//*[contains(text(),'')]")
	WebElement Location;

	public void clickOnLocation() {
		util.actionutil.moveToElement(Location);
		Location.click();
	}

	// **********************Created
	// At*********************************************//
	@FindBy(xpath = "(//*[@class='ant-select-dropdown-menu-item ng-star-inserted'])[45]")
	WebElement CreatedAt;

	public void clickOnCreatedAt() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(CreatedAt, 10);
		util.actionutil.moveToElement(CreatedAt);
		CreatedAt.click();
	}

	@FindBy(xpath = "//div[text()='Choose Date Format']")
	WebElement ChooseDeafaultFormat;

	public void clickOnDefaultFormat() {
		ChooseDeafaultFormat.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[5]")
	WebElement DateFormat;

	public void selectDateFormat() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(DateFormat, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		DateFormat.click();
	}

	@FindBy(xpath = "//span[@class='ng-star-inserted dx-template-wrapper']")
	WebElement CreatedTime;

	public void getCreatedTime() {
		String text = CreatedTime.getText();
		TestBase.writeResponse("Displayed Created Time : " + text);
	}
	// ******************************Modified
	// at****************************************//

	@FindBy(xpath = "(//*[@class='ant-select-dropdown-menu-item ng-star-inserted'])[46]")
	WebElement ModifiedAt;

	public void clickOnModfiedAt() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(ModifiedAt, 10);
		util.actionutil.moveToElement(ModifiedAt);
		ModifiedAt.click();
	}

	@FindBy(xpath = "//span[@class='ng-star-inserted dx-template-wrapper']")
	WebElement ModifiedTime;

	public void getModifiedTime() {
		String text = ModifiedTime.getText();
		TestBase.writeResponse("Displayed Modified Time : " + text);
	}

	// ***********************************CreatedBy***********************************//

	@FindBy(xpath = "(//*[@class='ant-select-dropdown-menu-item ng-star-inserted'])[47]")
	WebElement CreatedBy;

	public void clickOnCreatedBy() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(CreatedBy, 10);
		util.actionutil.moveToElement(CreatedBy);
		CreatedBy.click();
	}

	@FindBy(xpath = "//span[@class='pl-1 ng-star-inserted']")
	WebElement CreatedByFromDatabase;

	public void getCreatedByFromDatabase() {
		String Actual = CreatedByFromDatabase.getText();
		String Expected = "admin";
		TestBase.writeResponse("Expected Created By to Display : " + Expected);
		TestBase.writeResponse("Actual Created By to Display : " + Actual);
		assertEquals(Expected, Actual);
	}
	// *****************************ModifiedBy***************************//

	@FindBy(xpath = "(//*[@class='ant-select-dropdown-menu-item ng-star-inserted'])[48]")
	WebElement ModifiedBy;

	public void clickOnModfiedBy() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(ModifiedBy, 10);
		util.actionutil.moveToElement(ModifiedBy);
		ModifiedBy.click();
	}

	@FindBy(xpath = "//span[@class='pl-1 ng-star-inserted']")
	WebElement ModifiedByFromDatabase;

	public void getModifiedByFromDatabase() {
		String Actual = ModifiedByFromDatabase.getText();
		String Expected = "admin";
		TestBase.writeResponse("Expected Modified By to Display : " + Expected);
		TestBase.writeResponse("Actual Modified By to Display : " + Actual);
		assertEquals(Expected, Actual);
	}

	@FindBy(xpath = "//input[@placeholder='Value']")
	WebElement ModfiedByValue;

	public void ModfiedByValue(String string) {
		ModfiedByValue.sendKeys(string);
	}

	// *********************************Comments****************************************//
	@FindBy(xpath = "//*[contains(text(),'Comments')]")
	WebElement Comments;

	public void clickOnComments() {
		util.actionutil.moveToElement(Comments);
		Comments.click();
	}

	@FindBy(xpath = "//i[text()='Add Column']")
	WebElement addColumn;

	public void addColumnOnComments() {
		addColumn.click();
	}

	@FindBy(xpath = "(//input[@placeholder='Field label'])[1]")
	WebElement fieldlabel;

	public void enterFieldLableOnComments(String string) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(fieldlabel, 10);
		fieldlabel.click();
		fieldlabel.clear();
		fieldlabel.sendKeys(string);
	}

	@FindBy(xpath = "//input[@placeholder='Max rows']")
	WebElement MaxRows;

	public void enterMaxRowsOnComments(String string) {
		MaxRows.sendKeys(string);
	}

	@FindBy(xpath = "//textarea[@placeholder='Please enter comment']")
	WebElement enterComment;

	public void enterComments(String string) {
		enterComment.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabl')])[2]")
	WebElement Review;

	public void enterReview(String string) {
		Review.sendKeys(string);
	}

	@FindBy(xpath = "//span[text()='View']/..")
	WebElement ViewButton;

	public void clickOnViewButton() {
		ViewButton.click();
	}

	@FindBy(xpath = "//span[text()=' admin']")
	WebElement Commentor;

	public void getCommentor() {
		String text = Commentor.getText();
		TestBase.writeResponse("Expected Commentor : " + "admin");
		TestBase.writeResponse("Actual Commentor : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[1]")
	WebElement CommentedDate;

	public void getCommentedDate() {
		String text = CommentedDate.getText();
		TestBase.writeResponse("Expected Comented Date : " + text);
		TestBase.writeResponse("Actual Commented  Date : " + text);
	}

	@FindBy(xpath = "(//span[@class='ng-star-inserted dx-template-wrapper'])[2]")
	WebElement CommentedComment;

	public void getCommentedComment() {
		String text = CommentedComment.getText();
		TestBase.writeResponse("Expected Comments : " + "Approved");
		TestBase.writeResponse("Actual Comments : " + text);
	}

	// **********************************Tag*************************************//
	@FindBy(xpath = "//*[contains(text(),'Tag')]")
	WebElement Tag;

	public void clickOnTag() {
		util.actionutil.moveToElement(Tag);
		Tag.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Tag Master']")
	WebElement TagMaster;

	public void chooseTagMaster() {
		util.actionutil.moveToElement(TagMaster);
		TagMaster.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Label']")
	WebElement label;

	public void chooseLabel() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(label, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		label.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Icon']")
	WebElement icon;

	public void chooseIcon() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(icon, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		icon.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Color']")
	WebElement color;

	public void chooseColor() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(color, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		color.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Reason for leave']")
	WebElement Reasonforleave;

	public void clickOnReasonforleave() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(Reasonforleave, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		Reasonforleave.click();
	}

	@FindBy(xpath = "(//div[contains(@class,'ant-select-selection__placeholder')])[7]")
	WebElement searchIconField;

	public void clickOnsearchIconField() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(searchIconField, 10);
		searchIconField.click();
	}

	@FindBy(xpath = "(//div[contains(@class,'ant-select-selection__placeholder')])[8]")
	WebElement selectColorField;

	public void clickOnselectColorField() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(selectColorField, 10);
		selectColorField.click();
	}

	@FindBy(xpath = "(//button[text()='Add'])[2]")
	WebElement addButtonOnTag;

	public void clickOnaddButtonOnTag() {
		addButtonOnTag.click();
	}

	@FindBy(xpath = "//textarea[contains(@class,'z-text-input-disabled ant-inpu')]")
	WebElement TagValue;

	public void enterTagValue(String string) {
		TagValue.clear();
		TagValue.sendKeys(string);
	}

	@FindBy(xpath = "//div[@class='ant-select-search__field__wrap']")
	WebElement ChooseTag;

	public void clickOnChooseTag() {
		ChooseTag.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[1]")
	WebElement ChooseTagValue;

	public void clickOnChooseTagValue() {
		ChooseTagValue.click();
	}

	// ************************************Search********************************//
	@FindBy(xpath = "(//*[contains(text(),'Search')])[3]")
	WebElement Search;

	public void clickOnSearch() {
		util.actionutil.moveToElement(Search);
		Search.click();
	}

	@FindBy(xpath = "//div[text()='Choose fields to search']")
	WebElement chooseFieldsToSearch;

	public void clickOnchooseFieldsToSearch() {
		chooseFieldsToSearch.click();
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[1]")
	WebElement EmployeeNameOnSearch;

	public void chooseEmployeeNameOnSearch() {
		EmployeeNameOnSearch.click();
	}

	@FindBy(xpath = "//span[text()='Show Icon']")
	WebElement showIcon;

	public void clickOnShowIcon() {
		util.actionutil.moveToElement(showIcon);
		showIcon.click();
	}

	@FindBy(xpath = "//i[@class='anticon anticon-info-circle ng-star-inserted']")
	WebElement iconOnSearch;

	public void clickOnIcon() {
		iconOnSearch.click();
	}

	@FindBy(xpath = "(//button[@class='ant-btn ant-btn-default ant-btn-circle ant-btn-icon-only'])[10]")
	WebElement chooseIcon;

	public void chooseIconOnSearch() {
		chooseIcon.click();
	}

	@FindBy(xpath = "//div[contains(@style,'height: 2em; width: 2em; border-')]")
	WebElement colorOnSearch;

	public void clickOnColor() {
		util.actionutil.moveToElement(colorOnSearch);
		colorOnSearch.click();
	}

	@FindBy(xpath = "(//div[@class='swatch'])[3]")
	WebElement chooseColorOnSearch;

	public void chooseColorOnSearch() {
		chooseColorOnSearch.click();
	}

	@FindBy(xpath = "//mat-panel-title[text()=' Mapping ']")
	WebElement Mapping;

	public void clickOnMapping() {
		util.actionutil.moveToElement(Mapping);
		Mapping.click();
	}

	@FindBy(xpath = "(//button[text()='Add'])[2]")
	WebElement addButtonOnSearch;

	public void clickOnaddButtonOnSearch() {
		addButtonOnSearch.click();
	}

	@FindBy(xpath = "(//div[text()='Master Form Field'])[1]")
	WebElement MasterFormFieldOnSearch;

	public void clickOnMasterFormFieldOnSearch() {
		MasterFormFieldOnSearch.click();
	}

	@FindBy(xpath = "(//div[text()='Master Form Field'])[2]")
	WebElement MasterFormFieldOnSearch2;

	public void clickOnMasterFormFieldOnSearch2() {
		MasterFormFieldOnSearch2.click();
	}

	@FindBy(xpath = "(//div[text()='Master Form Field'])[3]")
	WebElement MasterFormFieldOnSearch3;

	public void clickOnMasterFormFieldOnSearch3() {
		util.actionutil.moveToElement(MasterFormFieldOnSearch3);
		MasterFormFieldOnSearch3.click();
	}

	@FindBy(xpath = "(//div[text()='Master Form Field'])[2]")
	WebElement MasterFormFieldOnSearchWithDependencies1;

	public void clickOnMasterFormFieldOnSearchWithDependencies1() {
		util.actionutil.moveToElement(MasterFormFieldOnSearchWithDependencies1);
		MasterFormFieldOnSearchWithDependencies1.click();
	}

	@FindBy(xpath = "(//div[text()='Master Form Field'])[3]")
	WebElement MasterFormFieldOnSearchWithDependencies2;

	public void clickOnMasterFormFieldOnSearchWithDependencies2() {
		util.actionutil.moveToElement(MasterFormFieldOnSearchWithDependencies2);
		MasterFormFieldOnSearchWithDependencies2.click();
	}

	@FindBy(xpath = "(//div[text()='Master Form Field'])[4]")
	WebElement MasterFormFieldOnSearchWithDependencies3;

	public void clickOnMasterFormFieldOnSearchWithDependencies3() {
		util.actionutil.moveToElement(MasterFormFieldOnSearchWithDependencies3);
		MasterFormFieldOnSearchWithDependencies3.click();
	}

	@FindBy(xpath = "(//div[text()='Form Field'])[1]")
	WebElement FormFieldOnSearch;

	public void clickOnFormFieldOnSearch() {
		FormFieldOnSearch.click();
	}

	@FindBy(xpath = "(//div[text()='Form Field'])[2]")
	WebElement FormFieldOnSearch2;

	public void clickOnFormFieldOnSearch2() {
		FormFieldOnSearch2.click();
	}

	@FindBy(xpath = "(//div[text()='Form Field'])[3]")
	WebElement FormFieldOnSearch3;

	public void clickOnFormFieldOnSearch3() {
		FormFieldOnSearch3.click();
	}

	@FindBy(xpath = "(//div[text()='Form Field'])[4]")
	WebElement FormFieldOnSearchWithDependencies3;

	public void clickOnFormFieldOnSearchWithDependencies3() {
		FormFieldOnSearchWithDependencies3.click();
	}

	@FindBy(xpath = "(//div[text()='Form Field'])[3]")
	WebElement FormFieldOnSearchWithDependencies2;

	public void clickOnFormFieldOnSearchWithDependencies2() {
		FormFieldOnSearchWithDependencies2.click();
	}

	@FindBy(xpath = "(//div[text()='Form Field'])[2]")
	WebElement FormFieldOnSearchWithDependencies1;

	public void clickOnFormFieldOnSearchWithDependencies1() {
		FormFieldOnSearchWithDependencies1.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Employee Name']")
	WebElement FormFieldOption1;

	public void chooseFormFieldOption1() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(FormFieldOption1, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		FormFieldOption1.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Employee Id']")
	WebElement FormFieldOption2;

	public void chooseFormFieldOption2() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(FormFieldOption2, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		FormFieldOption2.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Department']")
	WebElement FormFieldOption3;

	public void chooseFormFieldOption3() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(FormFieldOption3, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		FormFieldOption3.click();
	}

	@FindBy(xpath = "//*[contains(text(),'Data Validation')]/../../..//*[contains(text(),'Add')]")
	WebElement addButtonOnSearch2;

	public void clickOnaddButtonOnSearch2() {
		addButtonOnSearch2.click();
	}

	@FindBy(xpath = "(//button[@class='ant-btn ng-star-inserted ant-btn-primary'])[1]")
	WebElement SearchButon;

	public void clickOnSearchButon() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(SearchButon, 10);
		SearchButon.click();
	}

	@FindBy(xpath = "//input[@placeholder='Search']")
	WebElement Searchbar;

	public void clickOnSearchbarOnSearch() {
		Searchbar.sendKeys("Saikumar");
	}

	@FindBy(xpath = "(//input[@type='checkbox'])[2]")
	WebElement checkboxOnSearch;

	public void clickOncheckboxOnSearch() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(checkboxOnSearch, 10);
		// util.waitUtil.waitExecutionForGivenTime(2);
		checkboxOnSearch.click();
	}

	@FindBy(xpath = "//button[@class='ant-btn ant-btn-primary ant-btn-square ant-btn-sm']")
	WebElement DoneButtonOnSearch;

	public void clickOnDoneButtonOnSearch() {
		DoneButtonOnSearch.click();
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "(//button[@class='ant-btn ng-star-inserted ant-btn-primary'])[2]")
	WebElement SubmitButtonOnSearch;

	public void clickOnSubmitButtonOnSearch() {
		SubmitButtonOnSearch.click();
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled ant-inpu')])[1]")
	WebElement SearchValue;

	public void enterSearchValue(String string) {
		SearchValue.clear();
		SearchValue.sendKeys(string);
	}

	// ************************Automation Trigger***********************//
	@FindBy(xpath = "//*[contains(text(),'Automation Trigger')]")
	WebElement AutomationTrigger;

	public void clickOnAutomationTrigger() {
		util.actionutil.moveToElement(AutomationTrigger);
		AutomationTrigger.click();
	}

	@FindBy(xpath = "//div[text()='Choose Automation']")
	WebElement ChooseAutomation;

	public void clickOnChooseAutomation() {
		ChooseAutomation.click();
	}

	@FindBy(xpath = "//input[@id='SuccessMessage']")
	WebElement EnterSuccessMessage;

	public void EnterSuccessMessageOnAutomationTrigger(String string) {
		EnterSuccessMessage.sendKeys(string);
	}

	@FindBy(xpath = "//input[@id='LoadingMessage']")
	WebElement EnterLoadingMessage;

	public void EnterLoadingMessageOnAutomationTrigger(String string) {
		EnterLoadingMessage.sendKeys(string);
	}

	@FindBy(xpath = "//input[@id='ErrorMessage']")
	WebElement EnterErrorMsg;

	public void EnterErrorMsgOnAutomationTrigger(String string) {
		EnterErrorMsg.sendKeys(string);
	}

	@FindBy(xpath = "(//button[@class='ant-btn ng-star-inserted ant-btn-primary'])[1]")
	WebElement AutomationTriggerButton;

	public void clickOnAutomationTriggerButton() {
		AutomationTriggerButton.click();
	}

	@FindBy(xpath = "(//button[@class='ant-btn ng-star-inserted ant-btn-primary'])[2]")
	WebElement SubmitButtonOnAutomationTrigger;

	public void clickOnSubmitButtonOnAutomationTrigger() {
		SubmitButtonOnAutomationTrigger.click();
	}

	@FindBy(xpath = "//*[contains(text(),'No Data')]")
	WebElement NoData;

	public void getNoData() {
		String Actual = NoData.getText();
		String Expected = "No Data";
		TestBase.writeResponse("Expected displayed text :" + Expected);
		TestBase.writeResponse("Actual displayed text : " + Actual);
		assertEquals(Expected, Actual);
	}

	public void clickOnBody() {
		String xpath = "//div[contains(@class,'cdk-overlay-backdrop')]";
		WebElement element = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(element);
		element.click();
	}

	// *******************************AutomationTrigger(Depricated)***************************//
	@FindBy(xpath = "//*[contains(text(),'Automation Trigger(deprecated)')]")
	WebElement AutomationTriggerDepricated;

	public void clickOnAutomationTriggerDepricated() {
		util.actionutil.moveToElement(AutomationTriggerDepricated);
		AutomationTriggerDepricated.click();
	}

	@FindBy(xpath = "(//i[@type='down'])[2]/*")
	WebElement ActionTypeDropdown;

	public void clickOnActionTypeDropdown() {
		ActionTypeDropdown.click();
	}

	@FindBy(xpath = "//ul[@role='menu']/li[1]")
	WebElement Trigger;

	public void clickOnTrigger() {
		Trigger.click();
	}

	@FindBy(xpath = "//ul[@role='menu']/li[2]")
	WebElement GenerateAndPrint;

	public void clickOnGenerateAndPrint() {
		GenerateAndPrint.click();
	}

	@FindBy(xpath = "//ul[@role='menu']/li[3]")
	WebElement CascadedAction;

	public void clickOnCascadedAction() {
		CascadedAction.click();
	}

	@FindBy(xpath = "//ul[@role='menu']/li[4]")
	WebElement OpenForm;

	public void clickOnOpenForm() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(OpenForm, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		OpenForm.click();
	}

	@FindBy(xpath = "//ul[@role='menu']/li[5]")
	WebElement OpenSubmission;

	public void clickOnOpenSubmission() {
		OpenSubmission.click();
	}

	@FindBy(xpath = "//ul[@role='menu']/li[6]")
	WebElement OpenTask;

	public void clickOnOpenTask() {
		OpenTask.click();
	}

	@FindBy(xpath = "(//i[@type='down'])[3]/*")
	WebElement choosingFormOrField;

	public void clickOnchoosingFormOrField() {
		choosingFormOrField.click();
	}

	@FindBy(xpath = "(//div[@class='ng-select-container']//span)[1]")
	WebElement selectAutomationTrgiggers;

	public void clickOnselectAutomationTrgiggers() {
		selectAutomationTrgiggers.click();
	}

	@FindBy(xpath = "//ul[@role='menu']/li[1]")
	WebElement SubmissionID;

	public void clickOnSubmissionID() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(SubmissionID, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		SubmissionID.click();
	}

	@FindBy(xpath = "//i[@class='anticon anticon-info-circle ng-star-inserted']")
	WebElement IconOnAutomationTriggerDep;

	public void clickOnIconOnAutomationTriggerDep() {
		IconOnAutomationTriggerDep.click();
	}

	@FindBy(xpath = "(//button[@class='ant-btn ant-btn-default ant-btn-circle ant-btn-icon-only'])[3]")
	WebElement ChooseIconOnAutomationTriggerDep;

	public void ChooseIconOnAutomationTriggerDep() {
		ChooseIconOnAutomationTriggerDep.click();
	}

	@FindBy(xpath = "(//button[@class='ant-btn ng-star-inserted ant-btn-primary'])[1]")
	WebElement AutomationTrigDepValue;

	public void clickOnAutomationTrigDepValue() {
		AutomationTrigDepValue.click();
	}

	@FindBy(xpath = "(//i[@nztype='close'])[2]/*/*")
	WebElement CloseIcon;

	public void clickOnCloseIconOnAutomationTrigDep() throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(CloseIcon, 10);
		CloseIcon.click();
	}

	@FindBy(xpath = "(//button[@class='ant-btn ng-star-inserted ant-btn-primary'])[2]")
	WebElement SubmitButtonOnAutoTrigDep;

	public void clickOnSubmitButtonOnAutoTrigDep() {
		SubmitButtonOnAutoTrigDep.click();
	}

	@FindBy(xpath = "//span[text()=' Trigger ']/..")
	WebElement TriggerButtonOnAdd;

	public void clickOnTriggerButtonOnAdd() {
		TriggerButtonOnAdd.click();
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled')])[2]")
	public WebElement AutomationTriggerDepricatedOpenFormField1;

	public void enterAutomationTriggerDepricatedOpenFormField1(String string) {
		AutomationTriggerDepricatedOpenFormField1.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled')])[3]")
	public WebElement AutomationTriggerDepricatedOpenFormField2;

	public void enterAutomationTriggerDepricatedOpenFormField2(String string) {
		AutomationTriggerDepricatedOpenFormField2.sendKeys(string);
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled')])[4]")
	public WebElement AutomationTriggerDepricatedOpenFormField3;

	public void enterAutomationTriggerDepricatedOpenFormField3(String string) {
		AutomationTriggerDepricatedOpenFormField3.sendKeys(string);
	}

	public void editAutomationTriggerDepricatedOpenFormField1(String string) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(AutomationTriggerDepricatedOpenFormField1, 10);
		AutomationTriggerDepricatedOpenFormField1.clear();
		AutomationTriggerDepricatedOpenFormField1.sendKeys(string);
	}

	public void editAutomationTriggerDepricatedOpenFormField2(String string) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(AutomationTriggerDepricatedOpenFormField2, 10);
		AutomationTriggerDepricatedOpenFormField2.clear();
		AutomationTriggerDepricatedOpenFormField2.sendKeys(string);
	}

	public void editAutomationTriggerDepricatedOpenFormField3(String string) throws Exception {
		util.waitUtil.WaitForElementToBePresentUpdate(AutomationTriggerDepricatedOpenFormField3, 10);
		AutomationTriggerDepricatedOpenFormField3.clear();
		AutomationTriggerDepricatedOpenFormField3.sendKeys(string);
	}

	@FindBy(xpath = "(//span[text()=' Submit']/..)[2]")
	WebElement SubmitButtonOnOpenForm;

	public void clickOnSubmitButtonOnOpenForm() throws Exception {
		SubmitButtonOnOpenForm.click();
		util.waitUtil.WaitForElementToBePresentUpdate(SubmitButtonOnOpenForm, 10);
	}

	@FindBy(xpath = "//button[text()='Trigger']")
	WebElement TriggerOnDataPointsForm;

	public void clickOnTriggerOnDataPointsForm() {
		TriggerOnDataPointsForm.click();
	}

	@FindBy(xpath = "(//textarea[contains(@class,'z-text-input-disabled')])[1]")
	WebElement SubmissionId;

	public void enterSubmissionID(String string) {
		SubmissionId.sendKeys(string);
	}

	@FindBy(xpath = "(//*[@class='ng-value-container'])[2]")
	WebElement ClearSubmission;

	public void ClearSubmission() {
		ClearSubmission.clear();
	}
	public void importUserByExcelTempleteLocalMachine(int number) throws FindFailed {
//		Screen sc = new Screen();
//		Pattern pattern = new Pattern(System.getProperty("user.dir") + "/Samples/UserUpload/Import_Bulk_Members_Template-"+number+".XLSX");
//		sc.type(pattern,"D:\\ZvolvWorkSpace\\ZautomationTesting1\\Samples\\UserUpload\\Import_Bulk_Members_Template-"+number+".XLSX");
//		sc.click(pattern);
//		
		File.sendKeys(System.getProperty("user.dir") + "/Samples/UserUpload/Import_Bulk_Members_Template-"+number+".xlsx");
		util.waitUtil.waitExecutionForGivenTime(2);
	}
}




