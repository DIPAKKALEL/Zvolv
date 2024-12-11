
package pageObjects;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import io.cucumber.java.en.When;
import testbase.TestBase;
import utilities.Utilities;

public class DatabasesPageObjects { // sharath

	private WebDriver driver;
	Utilities util = new Utilities(driver);

	public DatabasesPageObjects(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted']")
	public List<WebElement> textEditDropdownOptions;

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[5]")
	public WebElement htmlText;

	public void clickOnHtmlText() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(htmlText, 10);
		htmlText.click();
	}

	@FindBy(xpath = "//textarea[@class='dx-texteditor-input']")
	public WebElement htmlTextBox;

	public void enterInHtmlTextBox(String htmltext) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(htmlTextBox, 10);
		htmlTextBox.clear();
		htmlTextBox.sendKeys(htmltext);
	}

	// ShortText
	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[26]")
	public WebElement shortText;

	public void clickOnShortText() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(shortText, 10);
		shortText.click();
	}

	@FindBy(xpath = "//input[@placeholder='Value']")
	public WebElement defaultValueTextBoxInShortText;

	public void enterInDefaultValueTextBoxInShortText(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(defaultValueTextBoxInShortText, 10);
		defaultValueTextBoxInShortText.sendKeys(text);
	}

	@FindBy(xpath = "//input[contains(@class,'ant-input ng')][@maxlength='256']")
	public WebElement shortTextInputFieldAfterClickingAddButton;

	public void clearShortTextInputFieldAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(shortTextInputFieldAfterClickingAddButton, 10);
		shortTextInputFieldAfterClickingAddButton.clear();
	}

	public void enterInshortTextInputFieldAfterClickingAddButton(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(shortTextInputFieldAfterClickingAddButton, 10);
		shortTextInputFieldAfterClickingAddButton.sendKeys(text);
	}

	// email
	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[27]")
	public WebElement email;

	public void clickOnEmail() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(email, 10);
		email.click();
	}

	@FindBy(xpath = "//span//input[contains(@class,'ant-input') and contains(@class,'ng-pristine') and contains(@class,'ng-valid')]")
	public WebElement emailInputAfterClickingOnAddButton;

	public void enterEmailInputAfterClickingOnAddButton(String email) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(emailInputAfterClickingOnAddButton, 10);
		emailInputAfterClickingOnAddButton.sendKeys(email);
	}

	@FindBy(xpath = "//input[@placeholder='Value']")
	public WebElement defaultValueTextBoxInEmail;

	public void enterInDefaultValueTextBoxInEmail(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(defaultValueTextBoxInEmail, 10);
		defaultValueTextBoxInEmail.sendKeys(text);
	}

	// timepicker
	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[6]")
	public WebElement timePicker;

	public void clickOnTimePicker() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(timePicker, 10);
		timePicker.click();
		util.waitUtil.waitExecutionForGivenTime(3);
	}

	@FindBy(xpath = "(//*[contains(text(),'Text Edit')])/../..")
	public WebElement textEditDropdown;

	public void clickOnTextEditDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(textEditDropdown, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		textEditDropdown.click();
	}

	@FindBy(xpath = "//*[@placeholder='Field label']")
	public WebElement fieldLabel;

	public void enterFieldName(String fieldName) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(fieldLabel, 10);
		fieldLabel.sendKeys(fieldName);
	}

	public void clearFieldLabel() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(fieldLabel, 10);
		fieldLabel.clear();
	}

	@FindBy(xpath = "//div[@class='col-6']//input[contains(@class,'form-control')]")
	public WebElement defaultValueTimePicker;

	public void enterInDefaultValueTimePicker(String value) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(defaultValueTimePicker, 10);
		defaultValueTimePicker.sendKeys(value);
	}

	public void clickOnDefaultValueTimePicker() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(defaultValueTimePicker, 10);
		defaultValueTimePicker.click();
	}

	@FindBy(xpath = "//div[contains(@class,'ant-select-selection ng-tns')]//div[@class='ant-select-selection__rendered']/div[text()='Choose Time Format']")
	public WebElement chooseTimeFormatDropdown;

	public void clickOnChooseTimeFormatDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(chooseTimeFormatDropdown, 10);
		chooseTimeFormatDropdown.click();
	}

	@FindBy(xpath = "//li[contains(@class,'ant-select-dropdown-menu-item')]")
	public List<WebElement> optionsInChooseTimeFormatDropdown;

	@FindBy(xpath = "(//li[contains(@class,'ant-select-dropdown-menu-item')])[4]")
	public WebElement HH_mmOptionInChooseTimeFormatDropdown;

	@FindBy(xpath = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[1]")
	public WebElement hrsInTimePicker;

	public WebElement hrs(String value) throws InterruptedException {
		String str = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[1]/ul/li[normalize-space()='"
				+ value + "']";
		WebElement element = driver.findElement(By.xpath(str));
		util.waitUtil.WaitForElementToBePresentUpdate(element, 10);
		return element;
	}

	@FindBy(xpath = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[1]/ul/li[text()='{{h}}']")
	public WebElement hrs;

	public void clickOnHrs(String h) throws InterruptedException {
		hrs(h).click();
	}

	@FindBy(xpath = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[2]")
	public WebElement minsInTimePicker;

	public WebElement mins(String value) throws InterruptedException {
		String str = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[2]/ul/li[normalize-space()='"
				+ value + "']";
		WebElement element = driver.findElement(By.xpath(str));
		util.waitUtil.WaitForElementToBePresentUpdate(element, 10);
		return element;
	}

	@FindBy(xpath = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[2]/ul/li")
	public List<WebElement> mins;

	public void clickOnMins(String mins) throws InterruptedException {
		mins(mins).click();
	}

	@FindBy(xpath = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[3]")
	public WebElement secsInTimePicker;

	public WebElement secs(String value) throws InterruptedException {
		String str = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[3]/ul/li[normalize-space()='"
				+ value + "']";
		WebElement element = driver.findElement(By.xpath(str));
		util.waitUtil.WaitForElementToBePresentUpdate(element, 10);
		return element;
	}

//	@FindBy(xpath = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[3]/ul/li[normalize-space()='{{sec}}']")
//	public List<WebElement> secs;

	public void clickOnSecs(String sec) throws InterruptedException {
		secs(sec).click();
	}

	@FindBy(xpath = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[4]")
	public WebElement amPmInTimePicker;

	@FindBy(xpath = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[4]/ul/li")
	public List<WebElement> amPm;

	public WebElement amPm(String value) throws InterruptedException {
		String str = "(//div[@class='ant-time-picker-panel-select ng-star-inserted'])[4]/ul/li[text()=' " + value
				+ " ']";
		WebElement element = driver.findElement(By.xpath(str));
		util.waitUtil.WaitForElementToBePresentUpdate(element, 10);
		return element;
	}

	public void clickOnAmPm(String ampm) throws InterruptedException {
		amPm(ampm).click();
	}

	@FindBy(xpath = "//input[@placeholder='Select time']")
	public WebElement selectTime;

	public void clickOnSelectTime() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectTime, 10);
		selectTime.click();
	}

	@FindBy(xpath = "//div[@class='col-md-12']//button[@class='btn btn-outline-primary pull-right']")
	public WebElement fieldButton;

	public void clickOnFieldButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(fieldButton, 10);
		fieldButton.click();
	}

	// TextEdit
	@FindBy(xpath = "//mat-label[text()='Hint / Placeholder']")
	public WebElement hintPlaceholder;

	public void clickOnHintPlaceholder() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(hintPlaceholder, 10);
		hintPlaceholder.click();
	}

	@FindBy(xpath = "//input[contains(@class,'mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored')][@placeholder='Hint']")
	public WebElement hint;

	public void enterInHint(String hintText) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(hint, 10);
		hint.sendKeys(hintText);
	}

	@FindBy(xpath = "//mat-label[text()='Default Value']")
	public WebElement defaultValuePlaceholder;

	public void clickOnDefaultValuePlaceholder() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(defaultValuePlaceholder, 10);
		defaultValuePlaceholder.click();
	}
//	public void enterInDefaultField(String text) {
//		defaultValue.sendKeys(text);
//	}

	@FindBy(xpath = "//textarea[contains(@class,'mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored')]")
	public WebElement defaultValueTextArea;

	public void enterInDefaultValueTextArea(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(defaultValueTextArea, 10);
		defaultValueTextArea.sendKeys(text);
	}

	@FindBy(xpath = "//div[text()='Choose Field Type']")
	public WebElement chooseFieldTypeDropdown;

	public void clickOnChooseFieldTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(chooseFieldTypeDropdown, 10);
		chooseFieldTypeDropdown.click();
	}

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted']")
	public List<WebElement> optionsInChooseFieldTypeDropdown;

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][contains(text(),'Text')]")
	public WebElement TextInChooseFieldTypeDropdown;

	public void clickOnTextInChooseFieldTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(TextInChooseFieldTypeDropdown, 10);
		TextInChooseFieldTypeDropdown.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//span[text()=' Show as Button ']")
	public WebElement showAsButtonCheckbox;

	public void clickOnShowAsButtonCheckbox() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(showAsButtonCheckbox, 10);
		showAsButtonCheckbox.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//mat-expansion-panel-header[contains(@id,'mat-expansion-panel-header')]/span/mat-panel-title[text()=' Helpers ']")
	public WebElement helpers;

	public void clickOnHelpers() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(helpers, 10);
		helpers.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//input[contains(@class,'mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored')][@placeholder='Info text']")
	public WebElement infoTextField;

	public void enterInInfoTextField(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(infoTextField, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		infoTextField.sendKeys(text);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//input[contains(@class,'mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored')][@placeholder='Help text']")
	public WebElement helpTextField;

	public void enterInHelpTextField(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(helpTextField, 10);
		helpTextField.sendKeys(text);
	}

	@FindBy(xpath = "//mat-expansion-panel-header[contains(@id,'mat-expansion-panel-header')]/span/mat-panel-title[text()=' Data Validation ']")
	public WebElement dataValidation;

	public void clickOnDataValidation() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dataValidation, 10);
		util.waitUtil.waitExecutionForGivenTime(2);
		dataValidation.click();
	}

	@FindBy(xpath = "//div[@class='ng-star-inserted']/button[text()='Add']")
	public WebElement addButtonInDataValidation;

	public void clickOnAddButtonInDataValidation() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(addButtonInDataValidation, 10);
		addButtonInDataValidation.click();
	}

	@FindBy(xpath = "//div[text()=' Expression ']")
	public WebElement expressionDropdownInDataValidation;

	public void clickOnExpressionDropdownInDataValidation() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(expressionDropdownInDataValidation, 10);
		expressionDropdownInDataValidation.click();
	}

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ant-select-dropdown-menu-item-selected ant-select-dropdown-menu-item-active ng-star-inserted']")
	public WebElement expressionInExpressionDropdownInDataValidation;

	public void clickOnExpressionInExpressionDropdownInDataValidation() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(expressionInExpressionDropdownInDataValidation, 10);
		expressionInExpressionDropdownInDataValidation.click();
	}

	@FindBy(xpath = "//input[@placeholder='Expression']")
	public WebElement expressionFieldInDataValidation;

	public void enterInExpressionFieldInDataValidation(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(expressionFieldInDataValidation, 10);
		expressionFieldInDataValidation.sendKeys(text);
	}

	@FindBy(xpath = "//input[@placeholder='Error message']")
	public WebElement errorMessageFieldInDataValidation;

	public void enterInErrorMessageFieldInDataValidation(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(errorMessageFieldInDataValidation, 10);
		errorMessageFieldInDataValidation.sendKeys(text);
	}

	@FindBy(xpath = "//mat-expansion-panel-header[contains(@id,'mat-expansion-panel-header')]/span/mat-panel-title[text()=' Advanced ']")
	public WebElement advanced;

	public void clickOnAdvanced() {
		util.waitUtil.waitExecutionForGivenTime(2);
		advanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Required']")
	public WebElement requiredCheckboxInAdvanced;

	public void clickOnRequiredCheckboxInAdvanced() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(requiredCheckboxInAdvanced, 10);
		requiredCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Editable']")
	public WebElement editableCheckboxInAdvanced;

	public void clickOnEditableCheckboxInAdvanced() {
		editableCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Admin only']")
	public WebElement adminOnlyCheckboxInAdvanced;

	public void clickOnAdminOnlyCheckboxInAdvanced() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(adminOnlyCheckboxInAdvanced, 10);
		adminOnlyCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Show label']")
	public WebElement showLabelCheckboxInAdvanced;

	public void clickOnShowLabelCheckboxInAdvanced() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(showLabelCheckboxInAdvanced, 10);
		showLabelCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Unique']")
	public WebElement uniqueCheckboxInAdvanced;

	public void clickOnUniqueCheckboxInAdvanced() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(uniqueCheckboxInAdvanced, 10);
		uniqueCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Edit if unique']")
	public WebElement editIfUniqueCheckboxInAdvanced;

	public void clickOnEditIfUniqueCheckboxInAdvanced() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(editIfUniqueCheckboxInAdvanced, 10);
		editIfUniqueCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Hidden']")
	public WebElement hiddenCheckboxInAdvanced;

	public void clickOnHiddenCheckboxInAdvanced() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(hiddenCheckboxInAdvanced, 10);
		hiddenCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Lazy load']")
	public WebElement lazyLoadCheckboxInAdvanced;

	public void clickOnLazyLoadCheckboxInAdvanced() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(lazyLoadCheckboxInAdvanced, 10);
		lazyLoadCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Load widgets']")
	public WebElement loadWidgetsCheckboxInAdvanced;

	public void clickOnLoadWidgetsCheckboxInAdvanced() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(loadWidgetsCheckboxInAdvanced, 10);
		loadWidgetsCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Copy value from other field? ']")
	public WebElement copyValueCheckboxInAdvanced;

	public void clickOnCopyValueCheckboxInAdvanced() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(copyValueCheckboxInAdvanced, 10);
		copyValueCheckboxInAdvanced.click();
	}

	@FindBy(xpath = "//label[text()='View Submission']/following-sibling::input[@placeholder='User Attribute']")
	public WebElement viewSubmissionFieldInAdvanced;

	public void enterInViewSubmissionFieldInAdvanced(String userAttribute) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(viewSubmissionFieldInAdvanced, 10);
		viewSubmissionFieldInAdvanced.sendKeys(userAttribute);
	}

	@FindBy(xpath = "//label[text()='Edit Submission']/following-sibling::input[@placeholder='User Attribute']")
	public WebElement editSubmissionFieldInAdvanced;

	public void enterInEditSubmissionFieldInAdvanced(String userAttribute) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(editSubmissionFieldInAdvanced, 10);
		editSubmissionFieldInAdvanced.sendKeys(userAttribute);
	}

	@FindBy(xpath = "//input[@placeholder='Element ID']")
	public WebElement elementIdFieldInAdvanced;

	@FindBy(xpath = "//button[@class='btn btn-danger btn-raised btn-sm mb-0']")
	public WebElement deleteButtonInConfigureForm;

	public void clickOndeleteButtonInConfigureForm() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(deleteButtonInConfigureForm, 10);
		deleteButtonInConfigureForm.click();
	}

	@FindBy(css = "button.btn.btn-primary.btn-raised.btn-sm.mb-0")
	public WebElement doneButtonInConfigureForm;

	public void clickOndoneButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(doneButtonInConfigureForm, 10);
		doneButtonInConfigureForm.click();
	}

	@FindBy(xpath = "//textarea[contains(@class,'z-text-input-disabled ant-input curved-input')]")
	public WebElement textEditInputBox;

	public void enterIntextEditInputBox(String input) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(textEditInputBox, 10);
		textEditInputBox.sendKeys(input);
	}

	@FindBy(xpath = "//*[contains(text(),'Submit')]/..")
	public WebElement submitButton;

	public void clickOnSubmitButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(submitButton, 10);
		util.waitUtil.waitForElementClickable(submitButton);
		submitButton.click();
		// util.waitUtil.waitExecutionForGivenTime(1);
	}

	// checkbox
	@FindBy(xpath = "(//li[contains(text(),'Check Box')])")
	public WebElement checkbox;

	public void clickOnCheckbox() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(checkbox, 10);
		util.waitUtil.waitForElementClickable(checkbox);
		checkbox.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Default value']")
	public WebElement defaultValuecheckbox;

	public void clickOnDefaultValuecheckbox() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(defaultValuecheckbox, 10);
		defaultValuecheckbox.click();
	}

	@FindBy(xpath = "//span[@class='mat-checkbox-label'][text()='Python Mandatory']")
	public WebElement pythonMandatorycheckbox;

	public void clickOnPythonMandatorycheckbox() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(pythonMandatorycheckbox, 10);
		pythonMandatorycheckbox.click();
	}

	@FindBy(xpath = "//mat-expansion-panel-header[contains(@id,'mat-expansion-panel-header')]/span/mat-panel-title[text()=' Dependencies ']")
	public WebElement dependencies;

	public void clickOnDependencies() {
		util.waitUtil.waitExecutionForGivenTime(1);
		dependencies.click();
	}

	@FindBy(xpath = "//div[@class='mat-expansion-panel-body']/button[text()='Add']")
	public WebElement addButtonInDependencies;

	public void clickOnAddButtonInDependencies() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(addButtonInDependencies, 10);
		addButtonInDependencies.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//span/input[@type='checkbox']")
	public WebElement checkBoxInputCheckbox;

	public void clickOncheckBoxInputCheckbox() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(checkBoxInputCheckbox, 10);
		checkBoxInputCheckbox.click();
	}

	// div[@class='ng-placeholder'][text()='Select value']
	@FindBy(xpath = "//ng-select[@placeholder='Select value']")
	public WebElement selectValueDropdownInDependencies;

	public void clickOnSelectValueDropdownInDependencies() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectValueDropdownInDependencies, 10);
		util.waitUtil.waitExecutionForGivenTime(2);
		selectValueDropdownInDependencies.click();
	}

	@FindBy(xpath = "//span[@class='ng-option-label ng-star-inserted'][text()='true']")
	public WebElement trueOptionInSelectValueDropdownInDependencies;

	public void clickOntrueOptionInSelectValueDropdownInDependencies() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(trueOptionInSelectValueDropdownInDependencies, 10);
		trueOptionInSelectValueDropdownInDependencies.click();
	}

	@FindBy(xpath = "//span[@class='ng-option-label ng-star-inserted'][text()='false']")
	public WebElement falseOptionInSelectValueDropdownInDependencies;

	public void clickOnfalseOptionInSelectValueDropdownInDependencies() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(falseOptionInSelectValueDropdownInDependencies, 10);
		falseOptionInSelectValueDropdownInDependencies.click();
	}

	// div[@class='ng-placeholder'][text()='Select type']
	@FindBy(xpath = "//ng-select[@placeholder='Select type']")
	public WebElement selectTypeDropdownInDependencies;

	public void clickOnSelectTypeDropdownInDependencies() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectTypeDropdownInDependencies, 10);
		selectTypeDropdownInDependencies.click();
	}

	@FindBy(xpath = "//span[@class='ng-option-label ng-star-inserted'][text()='Show']")
	public WebElement showOptionInSelectTypeDropdownInDependencies;

	public void clickOnshowOptionInSelectTypeDropdownInDependencies() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(showOptionInSelectTypeDropdownInDependencies, 10);
		showOptionInSelectTypeDropdownInDependencies.click();
	}

	@FindBy(xpath = "//span[text()='Hide']")
	public WebElement hideOptionInSelectTypeDropdownInDependencies;

	public void clickOnhideOptionInSelectTypeDropdownInDependencies() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(hideOptionInSelectTypeDropdownInDependencies, 10);
		hideOptionInSelectTypeDropdownInDependencies.click();
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	// div[@class='ng-placeholder'][text()='Select field']
	@FindBy(xpath = "//ng-select[@placeholder='Select field']")
	public WebElement selectFieldDropdownInDependencies;

	public void clickOnselectFieldDropdownInDependencies() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectFieldDropdownInDependencies, 10);
		// util.waitUtil.WaitAndClick(selectFieldDropdownInDependencies, 3);
		selectFieldDropdownInDependencies.click();
	}

	@FindBy(xpath = "//span[@class='ng-option-label ng-star-inserted'][text()='textEdit1']")
	public WebElement textEdit1InselectFieldDropdownInDependencies;

	public void clickOntextEdit1InselectFieldDropdownInDependencies() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(textEdit1InselectFieldDropdownInDependencies, 10);
		textEdit1InselectFieldDropdownInDependencies.click();
	}

	// dropdownList
	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[2]")
	public WebElement dropdownList;

	public void clickOnDropdownList() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dropdownList, 10);
		dropdownList.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//input[contains(@class,'mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored')][@placeholder='Add option']")
	public WebElement addOptionInConfigureForm;

	public void enterInAddOptionInConfigureForm(String option) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(addOptionInConfigureForm, 10);
		addOptionInConfigureForm.sendKeys(option);
		util.waitUtil.waitExecutionForGivenTime(2);
		addOptionInConfigureForm.sendKeys(Keys.ENTER);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//div[@class='ng-star-inserted']//mat-checkbox[contains(@class,'mt-1 mb-1 mat-checkbox ma')]")
	public WebElement allowAddOptionsCheckboxInDropdownList;

	public void clickOnallowAddOptionsCheckboxInDropdownList() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(allowAddOptionsCheckboxInDropdownList, 10);
		allowAddOptionsCheckboxInDropdownList.click();
	}

	@FindBy(xpath = "//nz-select[@nzplaceholder='Choose Default Value']")
	public WebElement chooseDefaultValueDropdownInCofigureForm;

	public void clickOnChooseDefaultValueDropdownInCofigureForm() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(chooseDefaultValueDropdownInCofigureForm, 10);
		util.waitUtil.waitExecutionForGivenTime(2);
		chooseDefaultValueDropdownInCofigureForm.click();
	}

	@FindBy(xpath = "//mat-panel-title[text()=' Triage ']")
	public WebElement triage;

	public void clickOnTriage() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(triage, 10);
		triage.click();
	}

	@FindBy(xpath = "//div[@class='mat-expansion-panel-body']/button[text()='Add']")
	public WebElement addButtonInTriage;

	public void clickOnAddButtonInTriage() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(addButtonInTriage, 10);
		addButtonInTriage.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	// ng-select[@placeholder='Select value']
	@FindBy(xpath = "//ng-select[@placeholder='Select value']//div//span[@class='ng-arrow-wrapper']")
	public WebElement selectValueDropdownInTriage;

	public void clickOnSelectValueDropdownInTriage() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectValueDropdownInTriage, 10);
		selectValueDropdownInTriage.click();
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	public void enterInSelectValueDropdownInTriage(String option) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectValueDropdownInTriage, 10);
		selectValueDropdownInTriage.click();
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	// div[@class='ng-input']/input[contains(@aria-owns,'a')]
	@FindBy(xpath = "//div[text()='Select value']/parent::div/div[2]/input")
	public WebElement selectValueTextboxInTriage;

	public void enterInSelectValueTextboxInTriage(String option) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectValueTextboxInTriage, 10);
		selectValueTextboxInTriage.sendKeys(option, Keys.ENTER);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//div[text()='Select type']/parent::div/div[2]/input")
	public WebElement selectTypeTextboxInTriage;

	public void enterInSelectTypeTextboxInTriage(String option) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectTypeTextboxInTriage, 10);
		selectTypeTextboxInTriage.sendKeys(option, Keys.ENTER);
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//div[text()='Select field']/parent::div/div[2]/input")
	public WebElement selectFieldTextboxInTriage;

	public void enterInSelectFieldTextboxInTriage(String option) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectFieldTextboxInTriage, 10);
		selectFieldTextboxInTriage.sendKeys(option, Keys.ENTER);
	}

	@FindBy(xpath = "//ng-select[@placeholder='Select type']")
	public WebElement selectTypeDropdownInTriage;

	public void clickOnSelectTypeDropdownInTriage() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectTypeDropdownInTriage, 10);
		selectTypeDropdownInTriage.click();
	}

	@FindBy(xpath = "//ng-select[@placeholder='Select field']")
	public WebElement selectFieldDropdownInTriage;

	public void clickOnSelectFieldDropdownInTriage() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectFieldDropdownInTriage, 10);
		selectFieldDropdownInTriage.click();
	}

	public WebElement optionBasedOnVisibleTextInSelectFieldDropdownInTriage(String text) {
		String xpathExpression = "//span[@class='ng-option-label ng-star-inserted'][text()='" + text + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "(//ul[@class='ant-select-dropdown-menu ant-select-dropdown-menu-root ant-select-dropdown-menu-vertical']/li)[1]")
	public WebElement option1InChooseDefaultValueDropdown;

	public void clickOnOption1InChooseDefaultValueDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(option1InChooseDefaultValueDropdown, 10);
		option1InChooseDefaultValueDropdown.click();
	}

	// div[contains(@class,'ant-select-selection ng-tns-c48') and contains(@class,
	// 'ant-select-selection--single')]
	// div[contains(@class,'ant-select-selection ng-tns-c48') and contains(@class,
	// 'ant-select-selection--single')]/div
	@FindBy(xpath = "//div[@class='ant-select-selection__rendered']")
	public WebElement dropdownListAfterClickingAddButton;

	public void clickOnDropdownListAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dropdownListAfterClickingAddButton, 10);
		dropdownListAfterClickingAddButton.click();
	}

	public void clearDropdownListAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dropdownListAfterClickingAddButton, 10);
		dropdownListAfterClickingAddButton.clear();
	}

	// (//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[2]
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted']")
	public WebElement option2InDropdownListAfterClickingAddButton;

	public void clickOnOption2InDropdownListAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(option2InDropdownListAfterClickingAddButton, 10);
		option2InDropdownListAfterClickingAddButton.click();
	}

	@FindBy(xpath = "//input[@placeholder='Enter value']")
	public WebElement enterValueBoxInDropdownListAfterClickingAddButton;

	public void enterInEnterValueBoxInDropdownListAfterClickingAddButton(String option) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(enterValueBoxInDropdownListAfterClickingAddButton, 10);
		enterValueBoxInDropdownListAfterClickingAddButton.sendKeys(option);
	}

	@FindBy(xpath = "//button[@class='ml-1 ant-btn ant-btn-default ant-btn-circle ant-btn-icon-only']")
	public WebElement plucButtonInDropdownListAfterClickingAddButton;

	public void clickOnPlucButtonInDropdownListAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(plucButtonInDropdownListAfterClickingAddButton, 10);
		plucButtonInDropdownListAfterClickingAddButton.click();
	}

	@FindBy(xpath = "//span[@class='ml-1 success ng-star-inserted']")
	public WebElement tickMarkInDropdownListConfigureForm;

	public void clickOntickMarkInDropdownListConfigureForm() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(requiredCheckboxInAdvanced, 10);
		util.waitUtil.WaitAndClick(tickMarkInDropdownListConfigureForm, 3);
	}

	public WebElement optionBasedOnVisibileTextInSelectValueDropdownInTriage(String text) {
		String xpathExpression = "//span[@class='ng-option-label ng-star-inserted'][text()='" + text + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "(//span[@class='ng-option-label ng-star-inserted'])[1]")
	public WebElement option1InSelectValueDropdownInTriage;

	public void clickOnoption1InSelectValueDropdownInTriage() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(requiredCheckboxInAdvanced, 10);
		option1InSelectValueDropdownInTriage.click();
	}

	@FindBy(xpath = "(//span[@class='ng-option-label ng-star-inserted'])[2]")
	public WebElement option2InSelectValueDropdownInTriage;

	public void clickOnoption2InSelectValueDropdownInTriage() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(option2InSelectValueDropdownInTriage, 10);
		option2InSelectValueDropdownInTriage.click();
	}

	@FindBy(xpath = "(//span[@class='ng-option-label ng-star-inserted'])[1]")
	public WebElement option1InSelectFieldDropdownInTriage;

	public void clickOnoption1InSelectFieldDropdownInTriage() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(option1InSelectFieldDropdownInTriage, 10);
		option1InSelectFieldDropdownInTriage.click();
	}

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ant-select-dropdown-menu-item-selected ant-select-dropdown-menu-item-active ng-star-inserted']")
	public WebElement option2InDropdownListAfterClickingAddButton1;

	public void clickOnoption2InDropdownListAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(option2InDropdownListAfterClickingAddButton1, 10);
		option2InDropdownListAfterClickingAddButton1.click();
	}

	// RadioGroup
	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[3]")
	public WebElement radioGroup;

	public void clickOnRadioGroup() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(radioGroup, 10);
		radioGroup.click();
	}

	@FindBy(xpath = "//nz-radio-group[@class='ant-radio-group ng-untouched ng-pristine ng-valid']/label[1]")
	public WebElement radioOption1InRadioGroupAfterClickingAddButton;

	public void clickOnRadioOption1InRadioGroupAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(radioOption1InRadioGroupAfterClickingAddButton, 10);
		radioOption1InRadioGroupAfterClickingAddButton.click();
	}

	// nz-radio-group[@class='ant-radio-group ng-untouched ng-pristine
	// ng-valid']/label[2]
	@FindBy(xpath = "//label[@class='ant-radio-wrapper ng-star-inserted']/span/input")
	public WebElement radioOption2InRadioGroupAfterClickingAddButton;

	public void clickOnRadioOption2InRadioGroupAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(radioOption2InRadioGroupAfterClickingAddButton, 10);
		radioOption2InRadioGroupAfterClickingAddButton.click();
	}

	public WebElement radioButtonBasedOnVisibleText(String text) {
		String xpathExpression = "//span[text()='" + text + "']//preceding-sibling::span/input";
		return driver.findElement(By.xpath(xpathExpression));
	}

	// HTMLText
	@FindBy(xpath = "//textarea[@class='dx-texteditor-input']")
	public WebElement writeYourHtmlCodeBox;

	public void enterInWriteYourHtmlCodeBox(String htmlCode) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(writeYourHtmlCodeBox, 10);
		writeYourHtmlCodeBox.sendKeys(htmlCode);
	}

	@FindBy(xpath = "//div[@class='html-container']")
	public WebElement htmlPreviewInConfigureForm;

	public String getTextFromHtmlPreview() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(htmlPreviewInConfigureForm, 10);
		String expectedText = htmlPreviewInConfigureForm.getText();
		return expectedText;
	}

	@FindBy(xpath = "//p[@class='mb-1 text-bold-400 ng-star-inserted']")
	public WebElement htmlPreviewAfterClickingAddButton;

	public String getTextFromHtmlPreviewAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(htmlPreviewAfterClickingAddButton, 10);
		String actualText = htmlPreviewAfterClickingAddButton.getText();
		return actualText;
	}

	// TimePicker
	@FindBy(xpath = "//li[contains(@class,'ant-select-dropdown-menu-item')][1]")
	public WebElement option1InChooseTimeFormatDropdown;

	public void clickOnOption1InChooseTimeFormatDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(option1InChooseTimeFormatDropdown, 10);
		option1InChooseTimeFormatDropdown.click();
	}

	// DatePicker
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][4]")
	public WebElement datePicker;

	public void clickOnDatePicker() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(datePicker, 10);
		datePicker.click();
	}

	@FindBy(xpath = "(//input[contains(@class,'form-control ng-untouched ng-pristine ng-valid')])[2]")
	public WebElement defaultValueInDatePicker;

	public void enterInDefaultValueInDatePicker(String value) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(defaultValueInDatePicker, 10);
		defaultValueInDatePicker.sendKeys(value);
	}

	// (//input[contains(@class,'form-control ng-untouched ng-pristine
	// ng-valid')])[3]
	@FindBy(xpath = "//label[text()='Greater than']/parent::div/following-sibling::div[@class='col-6']/input[@class='form-control ng-untouched ng-pristine ng-valid']")
	public WebElement greaterThanInDatePicker;

	public void enterInGreaterThanInDatePicker(String value) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(requiredCheckboxInAdvanced, 10);
		greaterThanInDatePicker.sendKeys(value);
	}

	@FindBy(xpath = "//input[@placeholder='±days(optional)']")
	public WebElement daysOptionalInDatePicker;

	public void enterInDaysOptionalInDatePicker(String value) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(daysOptionalInDatePicker, 10);
		daysOptionalInDatePicker.sendKeys(value);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//div[@class='col-2 my-auto']//div[@class='mat-checkbox-inner-container']")
	public WebElement todayCheckboxInDatePicker;

	public void clickOnTodayCheckboxInDatePicker() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(todayCheckboxInDatePicker, 10);
		todayCheckboxInDatePicker.click();
	}

	@FindBy(xpath = "//div[contains(@class,'ant-select-selection__placeholder ng-tns')][text()='Choose Date Format']")
	public WebElement chooseDateFormatDropdownInDatePicker;

	public void clickOnChooseDateFormatDropdownInDatePicker() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(chooseDateFormatDropdownInDatePicker, 10);
		chooseDateFormatDropdownInDatePicker.click();
		util.waitUtil.waitExecutionForGivenTime(2);
	}

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted']")
	public WebElement optionsInChooseDateFormatDropdownInDatePicker;

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted' ][5]")
	public WebElement optionDDMMYYYYInChooseDateFormatDropdownInDatePicker;

	public void clickOnoptionDDMMYYYYInChooseDateFormatDropdownInDatePicker() {
		optionDDMMYYYYInChooseDateFormatDropdownInDatePicker.click();
	}

	@FindBy(xpath = "//input[@class='ant-calendar-picker-input ant-input ng-star-inserted']")
	public WebElement datePickerInputAfterClickingAddButton;

	public void clickOnDatePickerInputAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(datePickerInputAfterClickingAddButton, 10);
		datePickerInputAfterClickingAddButton.click();
	}

	@FindBy(xpath = "//a[@class='ant-calendar-today-btn ']")
	public WebElement todayButtonAfterClickinOnDatepickerInput;

	public void clickOnTodayButtonAfterClickinOnDatepickerInput() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(todayButtonAfterClickinOnDatepickerInput, 10);
		todayButtonAfterClickinOnDatepickerInput.click();
	}

	@FindBy(xpath = "//a[@class='ant-calendar-month-select ng-star-inserted']")
	public WebElement monthAfterClickingDatePickerInput;

	public String getMonthText() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(monthAfterClickingDatePickerInput, 10);
		return monthAfterClickingDatePickerInput.getText();
	}

	@FindBy(xpath = "//a[@class='ant-calendar-year-select ng-star-inserted']")
	public WebElement yearAfterClickingDatePickerInput;

	public String getYearText() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(yearAfterClickingDatePickerInput, 10);
		return yearAfterClickingDatePickerInput.getText();
	}

	@FindBy(xpath = "//a[@class='ant-calendar-next-year-btn ng-star-inserted']")
	public WebElement nextYearDoubleArrowIcon;

	public void clickOnNextYearDoubleArrowIcon() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(nextYearDoubleArrowIcon, 10);
		nextYearDoubleArrowIcon.click();
	}

	@FindBy(xpath = "//a[@class='ant-calendar-prev-year-btn ng-star-inserted']")
	public WebElement lastYearDoubleArrowIcon;

	public void clickOnLastYearDoubleArrowIcon() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(lastYearDoubleArrowIcon, 10);
		lastYearDoubleArrowIcon.click();
	}

	// Date-time Picker
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][7]")
	public WebElement dateTimePicker;

	public void clickOnDateTimePicker() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dateTimePicker, 10);
		dateTimePicker.click();
	}

	@FindBy(xpath = "//div[contains(@class,'ant-select-selection__placeholder ng-tns')][text()='Choose Date & Time Format']")
	public WebElement chooseDateTimeFormatDropdownInDatetimePicker;

	public void clickOnChooseDateTimeFormatDropdownInDatetimePicker() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(chooseDateTimeFormatDropdownInDatetimePicker, 10);
		chooseDateTimeFormatDropdownInDatetimePicker.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//div[@class='col-6']//input[contains(@class,'form-control ng')]")
	public WebElement defaultValueInDatetimePicker;

	public void enterInDefaultValueInDatetimePicker(String value) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(defaultValueInDatetimePicker, 10);
		defaultValueInDatetimePicker.sendKeys(value);
	}

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][2]")
	public WebElement option2InchooseDateTimeFormatDropdownInDatetimePicker;

	public void clickOnOption2InchooseDateTimeFormatDropdownInDatetimePicker() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(option2InchooseDateTimeFormatDropdownInDatetimePicker, 10);
		option2InchooseDateTimeFormatDropdownInDatetimePicker.click();
	}

	@FindBy(xpath = "//input[@class='ant-calendar-picker-input ant-input ng-star-inserted']")
	public WebElement dateTimePickerInputAfterClickingAddButton;

	public void clickOnDateTimePickerInputAfterClickingAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dateTimePickerInputAfterClickingAddButton, 10);
		dateTimePickerInputAfterClickingAddButton.click();
	}

	@FindBy(xpath = "//a[@class='ant-calendar-today-btn ']")
	public WebElement nowButtonAfterClickingDateTimePickerInput;

	public void clickOnNowButtonAfterClickingDateTimePickerInput() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(nowButtonAfterClickingDateTimePickerInput, 10);
		nowButtonAfterClickingDateTimePickerInput.click();
	}

	// Phone
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][28]")
	public WebElement phone;

	public void clickOnPhone() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(phone, 10);
		phone.click();
	}

	@FindBy(xpath = "//nz-select[@nzplaceholder='Country Code']")
	public WebElement countryCodeDropdownInPhone;

	public void clickOnCountryCodeDropdownInPhone() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(countryCodeDropdownInPhone, 10);
		countryCodeDropdownInPhone.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted']")
	public List<WebElement> optionsInCountryCodeDropdownInPhone;

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ant-select-dropdown-menu-item-selected ant-select-dropdown-menu-item-active ng-star-inserted']")
	public WebElement INoptionInCountryCodeDropdownInPhone;

	public void clickOnINoptionInCountryCodeDropdownInPhone() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(INoptionInCountryCodeDropdownInPhone, 10);
		INoptionInCountryCodeDropdownInPhone.click();
	}

	@FindBy(xpath = "(//input[contains(@class,'ant-input ng')])[2]")
	public WebElement phoneInputAfterClickingAddButton;

	public void enterInPhoneInputAfterClickingAddButton(String ph) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(phoneInputAfterClickingAddButton, 10);
		phoneInputAfterClickingAddButton.sendKeys(ph);
	}

	@FindBy(xpath = "//input[@placeholder='Value']")
	public WebElement valueNumberBoxInPhone;

	public void enterInvalueNumberBoxInPhone(String ph) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(valueNumberBoxInPhone, 10);
		valueNumberBoxInPhone.sendKeys(ph);
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	// Number
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][29]")
	public WebElement number;

	public void clickOnNumber() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(number, 10);
		number.click();
	}

	@FindBy(xpath = "//input[@placeholder='Value']")
	public WebElement valueNumberBoxInNumber;

	public void enterInValueNumberBoxInNumber(String no) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(valueNumberBoxInNumber, 10);
		valueNumberBoxInNumber.sendKeys(no);
	}

	@FindBy(xpath = "//input[@placeholder='Min']")
	public WebElement minNumberBoxInNumber;

	public void enterInminNumberBoxInNumber(String no) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(minNumberBoxInNumber, 10);
		minNumberBoxInNumber.sendKeys(no);
	}

	@FindBy(xpath = "//input[@placeholder='Max']")
	public WebElement maxNumberBoxInNumber;

	public void enterInmaxNumberBoxInNumber(String no) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(maxNumberBoxInNumber, 10);
		maxNumberBoxInNumber.sendKeys(no);
	}

	@FindBy(xpath = "//input[contains(@class,'ant-input-number-input')]")
	public WebElement numberInputAfterClickingOnAddButton;

	public void enterInnumberInputAfterClickingOnAddButton(String no) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(numberInputAfterClickingOnAddButton, 10);
		numberInputAfterClickingOnAddButton.sendKeys(no);
	}

	// URL

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][30]")
	public WebElement url;

	public void clickOnUrl() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(url, 10);
		url.click();
	}

	@FindBy(xpath = "//span[@class='ant-form-item-children']/input[contains(@class,'ant-input')]")
	public WebElement urlInputAfterClickingAddButton;

	public void enterInUrlInput(String url) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(urlInputAfterClickingAddButton, 10);
		urlInputAfterClickingAddButton.sendKeys(url);
	}

	// Date Range
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][33]")
	public WebElement dateRange;

	public void clickOnDateRange() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dateRange, 10);
		dateRange.click();
	}

	@FindBy(xpath = "//span[@class='ant-calendar-picker-input ant-input ng-star-inserted']")
	public WebElement dateRangeInput;

	public void clickOnDateRangeInput() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dateRangeInput, 10);
		dateRangeInput.click();
	}

	@FindBy(xpath = "//mat-label[text()='Start Date']/ancestor::span/preceding-sibling::input")
	public WebElement startDateInDateRange;

	public void enterInStartDateInDateRange(String date) {
		// startDateInDateRange.sendKeys(date);
		util.actionutil.sendKeys(startDateInDateRange, date);
	}

	@FindBy(xpath = "//mat-label[text()='End Date']/ancestor::span/preceding-sibling::input")
	public WebElement endDateInDateRange;

	public void enterInEndDateInDateRange(String date) {
		// endDateInDateRange.sendKeys(date);
		util.actionutil.sendKeys(endDateInDateRange, date);
	}

	@FindBy(xpath = "(//span[@class='ant-calendar-my-select'])[1]")
	public WebElement startMonthYear;

	@FindBy(xpath = "(//span[@class='ant-calendar-my-select'])[2]")
	public WebElement endMonthYear;

	@FindBy(xpath = "(//a[@title='Previous month (PageUp)'])[1]")
	public WebElement previousMonthButtonStartDate;

	@FindBy(xpath = "(//a[@title='Next month (PageDown)'])[1]")
	public WebElement nextMonthButtonStartDate;

	@FindBy(xpath = "(//a[@title='Previous month (PageUp)'])[2]")
	public WebElement previousMonthButtonEndDate;

	@FindBy(xpath = "(//a[@title='Next month (PageDown)'])[2]")
	public WebElement nextMonthButtonEndDate;

	@FindBy(xpath = "//td[@class='ant-calendar-cell ant-calendar-today ng-star-inserted']")
	public WebElement todayInStartDateInDateRangeInput;

	public void clickOnTodayInStartDateInDateRangeInput() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(todayInStartDateInDateRangeInput, 10);
		todayInStartDateInDateRangeInput.click();
	}

	// Timer

	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][34]")
	public WebElement timer;

	public void clickOnTimer() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(timer, 10);
		timer.click();
	}

	@FindBy(xpath = "//span[text()=' Start Automatically ']")
	public WebElement startAutomaticallyCheckoboxInTimer;

	public void clickOnStartAutomaticallyCheckoboxInTimer() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(startAutomaticallyCheckoboxInTimer, 10);
		startAutomaticallyCheckoboxInTimer.click();
	}

	@FindBy(xpath = "//span[text()=' Hide Buttons ']")
	public WebElement hideButtonsCheckboxInTimer;

	public void clickOnHideButtonsCheckboxInTimer() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(hideButtonsCheckboxInTimer, 10);
		hideButtonsCheckboxInTimer.click();
	}

	@FindBy(xpath = "//span[text()=' Show as a countdown ']")
	public WebElement showAsACountdownCheckboxInTimer;

	public void clickOnShowAsACountdownCheckboxInTimer() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(showAsACountdownCheckboxInTimer, 10);
		showAsACountdownCheckboxInTimer.click();
	}

	@FindBy(xpath = "//input[contains(@class,'mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored')][@max='24']")
	public WebElement hrsInTimer;

	public void enterInHrsInTimer(String hr) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(hrsInTimer, 10);
		hrsInTimer.sendKeys(hr);
	}

	@FindBy(xpath = "(//input[contains(@class,'mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored')][@max='60'])[1]")
	public WebElement minsInTimer;

	public void enterInminsInTimer(String min) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(minsInTimer, 10);
		minsInTimer.sendKeys(min);
	}

	@FindBy(xpath = "(//input[contains(@class,'mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored')][@max='60'])[2]")
	public WebElement secsInTimer;

	public void enterInsecsInTimer(String sec) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(secsInTimer, 10);
		secsInTimer.sendKeys(sec);
	}

	@FindBy(xpath = "//button[@class='ant-btn ant-btn-default ant-btn-lg ant-btn-icon-only']")
	public WebElement startPauseResumeButton;

	public void clickOnstartPauseResumeButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(startPauseResumeButton, 10);
		startPauseResumeButton.click();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	// span[text()='Reset']
	@FindBy(xpath = "//button[@class='ml-3 ant-btn ant-btn-default ant-btn-lg']")
	public WebElement resetButton;

	public void clickOnResetButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(resetButton, 10);
		resetButton.click();
	}

	// Container
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][24]")
	public WebElement container;

	public void clickOnContainer() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(container, 10);
		container.click();
	}

	@FindBy(xpath = "//mat-label[text()='Select Fields']")
	public WebElement selectFieldsDropdownInContainer;

	public void clickOnSelectFieldsDropdownInContainer() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(selectFieldsDropdownInContainer, 10);
		selectFieldsDropdownInContainer.click();
	}

	@FindBy(xpath = "//span[@class='mat-option-text']")
	public List<WebElement> optionsInSelectFieldsDropdown;

	@FindBy(xpath = "(//span[@class='mat-option-text'])[1]")
	public WebElement option1CheckboxInSelectFieldsDropdown;

	public WebElement optionCheckboxInSelectFieldsDropdownByText(String text) {
		return driver.findElement(By.xpath("//span[contains(text(),'" + text + "')]"));
	}

	@FindBy(xpath = "(//span[@class='mat-option-text'])[2]")
	public WebElement option2CheckboxInSelectFieldsDropdown;

	public void clickOnOption2CheckboxInSelectFieldsDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(option2CheckboxInSelectFieldsDropdown, 10);
		option2CheckboxInSelectFieldsDropdown.click();
	}

	// Auto Number
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][43]")
	public WebElement autoNumber;

	public void clickOnAutoNumber() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(autoNumber, 10);
		autoNumber.click();
	}

	@FindBy(xpath = "//input[@placeholder='Start Sequence']")
	public WebElement startSequenceNumberBoxInAutoNumber;

	public void enterInStartSequenceNumberBoxInAutoNumber(String no) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(startSequenceNumberBoxInAutoNumber, 10);
		startSequenceNumberBoxInAutoNumber.sendKeys(no);
	}

	// Matrix
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][42]")
	public WebElement matrix;

	public void clickOnMatrix() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(matrix, 10);
		matrix.click();
	}

	@FindBy(xpath = "//input[@placeholder='Field']")
	public WebElement noOfColumnsNumberBoxInMatrix;

	public void enterInNoOfColumnsNumberBoxInMatrix(String no) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(noOfColumnsNumberBoxInMatrix, 10);
		noOfColumnsNumberBoxInMatrix.sendKeys(no);
	}

	@FindBy(xpath = "//app-z-color-picker/div/div")
	public WebElement colorSquareInMatrix;

	public void clickOnColorSquareInMatrix() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(colorSquareInMatrix, 10);
		colorSquareInMatrix.click();
	}

	@FindBy(xpath = "//div[@title='#EB144C']")
	public WebElement redColorInMatrix;

	public void clickOnRedColorInMatrix() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(redColorInMatrix, 10);
		redColorInMatrix.click();
	}

	@FindBy(xpath = "//textarea[contains(@class,'z-text-input')]")
	public WebElement textEditInputInMatrixAfterClickingAddButton;

	public void enterIntextEditInputInMatrixAfterClickingAddButton(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(textEditInputInMatrixAfterClickingAddButton, 10);
		textEditInputInMatrixAfterClickingAddButton.sendKeys(text);
	}

	@FindBy(xpath = "//body")
	public WebElement bodyOfWebPage;

	public void clickOnbodyOfWebPage() {
		driver.findElement(By.tagName("body")).click();
	}

	// Signature
	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[19]")
	public WebElement signature;

	public void clickOnSignature() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(signature, 10);
		signature.click();
	}

	@FindBy(xpath = "//button[@nztitle='Clear']")
	public WebElement clearButtonInSignatureAfterClickingOnAddButton;

	public void clickOnClearButtonInSignatureAfterClickingOnAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(clearButtonInSignatureAfterClickingOnAddButton, 10);
		clearButtonInSignatureAfterClickingOnAddButton.click();
	}

	@FindBy(xpath = "//button[@nztitle='Change Font Size']")
	public WebElement changeFontSizeButtonInSignnatureAfterClickingOnAddButton;

	public void clickOnChangeFontSizeButtonInSignnatureAfterClickingOnAddButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(changeFontSizeButtonInSignnatureAfterClickingOnAddButton, 10);
		changeFontSizeButtonInSignnatureAfterClickingOnAddButton.click();
	}

	@FindBy(xpath = "//button[@nztitle='Undo']")
	public WebElement undoButton;

	public void clickOnUndoButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(undoButton, 10);
		undoButton.click();
	}

	// span[text()='Upload']
	// button[@class='ant-btn ant-btn-default ng-star-inserted']
	@FindBy(xpath = "//input[@type='file']")
	public WebElement uploadButton;

	public void clickOnUploadButton(String path) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(uploadButton, 10);
		// uploadButton.click();
		uploadButton.sendKeys(path);
	}

	public void uploadFileByClickingOnUploadButton(String path) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(uploadButton, 10);
		uploadButton.sendKeys(path);
	}

	@FindBy(xpath = "//i[@class='anticon anticon-more ng-star-inserted']")
	public WebElement threeDotsButton;

	public void clickOnThreeDotsButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(threeDotsButton, 10);
		threeDotsButton.click();
	}

	@FindBy(xpath = "//div[@title='#00D084']")
	public WebElement greenColor;

	public void clickOnGreenColor() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(greenColor, 10);
		greenColor.click();
	}

	// datepicker
	@FindBy(xpath = "//div[@class='ant-calendar-date-panel']")
	public WebElement calendar;

	@FindBy(xpath = "//span[@class='ant-calendar-my-select']")
	public WebElement monthYear;

	@FindBy(xpath = "//table[@class='ant-calendar-table']//td/div")
	public WebElement date;

	@FindBy(xpath = "//a[@title='Next month (PageDown)']")
	public WebElement nextMonthButton;

	@FindBy(xpath = "//a[@title='Previous month (PageUp)']")
	public WebElement previousMonthButton;

	// table[@class='ant-calendar-table']//td/div[text()=' "+value+" ']
	public WebElement day(String value) {
		String str = "//td[@class='ant-calendar-cell ng-star-inserted']//div[@class='ant-calendar-date ng-star-inserted'][text()=' "
				+ value + " ']";
		WebElement element = driver.findElement(By.xpath(str));
		return element;
	}

	public WebElement day2(String value) throws InterruptedException {
		String str = "(//td[@class='ant-calendar-cell ng-star-inserted']//div[@class='ant-calendar-date ng-star-inserted'][@aria-selected='false'][text()=' "
				+ value + " '])[last()]";
		WebElement element = driver.findElement(By.xpath(str));
		util.waitUtil.WaitForElementToBePresentUpdate(element, 10);
		return element;
	}

	// datetimepicker

	public WebElement hrsInDateTimepickerAfterClickingAdd(String value) throws InterruptedException {
		String str = "//div[@class='ant-calendar-time-picker-select ng-star-inserted'][1]/ul/li[text()=' " + value
				+ " ']";
		WebElement element = driver.findElement(By.xpath(str));
		util.waitUtil.WaitForElementToBePresentUpdate(element, 10);
		return element;
	}

	public WebElement minsInDateTimepickerAfterClickingAdd(String value) throws InterruptedException {
		String str = "//div[@class='ant-calendar-time-picker-select ng-star-inserted'][2]/ul/li[text()=' " + value
				+ " ']";
		WebElement element = driver.findElement(By.xpath(str));
		util.waitUtil.WaitForElementToBePresentUpdate(element, 10);
		return element;
	}

	@FindBy(xpath = "//a[@class='ant-calendar-ok-btn ']")
	public WebElement okButtonDatetimepicker;

	// Location
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][15]")
	public WebElement location;

	public void clickOnLocation() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(location, 10);
		location.click();
	}

	// QR Code
	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[17]")
	public WebElement qrBarcodeScanner;

	public void clickOnQrBarcodeScanner() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(qrBarcodeScanner, 10);
		qrBarcodeScanner.click();
	}

	// div[@class='col-12']//input[@class='mat-checkbox-input cdk-visually-hidden']
	@FindBy(xpath = "//span[text()='Get location on submit? ']")
	public WebElement getLocationOnSubmitCheckbox;

	public void clickOnGetLocationOnSubmitCheckbox() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(getLocationOnSubmitCheckbox, 10);
		getLocationOnSubmitCheckbox.click();
	}

	// ActionButton
	@FindBy(xpath = "//li[@class='ant-select-dropdown-menu-item ng-star-inserted'][18]")
	public WebElement actionButton;

	public void clickOnActionButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(actionButton, 10);
		actionButton.click();
	}

	@FindBy(xpath = "//div[text()='Action Type']")
	public WebElement actionTypeDropdown;

	public void clickOnActionTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(actionTypeDropdown, 10);
		actionTypeDropdown.click();
	}

	public WebElement actionNameInActionTypeDropdown(String actionName) {
		String xpathString = "//ul/li//span[text()='" + actionName + "']";
		return driver.findElement(By.xpath(xpathString));
	}

	@FindBy(xpath = "//ul[@class='ant-select-dropdown-menu ant-select-dropdown-menu-root ant-select-dropdown-menu-vertical']/li[1]")
	public WebElement option1InActionTypeDropdown;

	public void clickOnOption1InActionTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(option1InActionTypeDropdown, 10);
		option1InActionTypeDropdown.click();
	}

	@FindBy(xpath = "//div[text()='Choose Form']")
	public WebElement chooseFormDropdown;

	public void clickOnChooseFormDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(chooseFormDropdown, 10);
		chooseFormDropdown.click();
	}

	public WebElement databaseInChooseFormDropdown(String dbName) {
		String xpathString = "//ul[@class='ant-select-dropdown-menu-item-group-list']/li[normalize-space()='" + dbName
				+ "']";
		return driver.findElement(By.xpath(xpathString));
	}

	@FindBy(xpath = "//button[@class='btn btn-sm btn-primary btn-raised mt-2']")
	public WebElement addButtonChooseAutoPopulateInputs;

	public void clickOnAddButtonChooseAutoPopulateInputs() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(addButtonChooseAutoPopulateInputs, 10);
		addButtonChooseAutoPopulateInputs.click();
	}

	@FindBy(xpath = "(//nz-select[@nzplaceholder='Choose Field'])[1]")
	public WebElement chooseFieldDropdown1InChooseAutoPopulateInputs;

	public void clickOnChooseFieldDropdown1InChooseAutoPopulateInputs() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(chooseFieldDropdown1InChooseAutoPopulateInputs, 10);
		chooseFieldDropdown1InChooseAutoPopulateInputs.click();
	}

	@FindBy(xpath = "(//nz-select[@nzplaceholder='Choose Field'])[2]")
	public WebElement chooseFieldDropdown2InChooseAutoPopulateInputs;

	public void clickOnChooseFieldDropdown2InChooseAutoPopulateInputs() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(chooseFieldDropdown2InChooseAutoPopulateInputs, 10);
		chooseFieldDropdown2InChooseAutoPopulateInputs.click();
	}

	@FindBy(id = "SuccessMessage")
	public WebElement enterSuccessMessageTextBox;

	public void enterInEnterSuccessMessageTextBox(String message) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(enterSuccessMessageTextBox, 10);
		enterSuccessMessageTextBox.sendKeys(message);
	}

	@FindBy(id = "LoadingMessage")
	public WebElement enterLoadingMessageTextBox;

	public void enterInEnterLoadingMessageTextBox(String message) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(enterLoadingMessageTextBox, 10);
		enterLoadingMessageTextBox.sendKeys(message);
	}

	@FindBy(id = "ErrorMessage")
	public WebElement enterErrorMessageTextBox;

	public void enterInEnterErrorMessageTextBox(String message) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(enterErrorMessageTextBox, 10);
		enterErrorMessageTextBox.sendKeys(message);
	}

	@FindBy(xpath = "//span[text()='Show Icon']/preceding-sibling::div")
	public WebElement showIconCheckbox;

	public void clickOnShowIconCheckbox() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(showIconCheckbox, 10);
		showIconCheckbox.click();
	}

	@FindBy(xpath = "//i[@nztitle='Please choose icon']")
	public WebElement iconInActionButton;

	public void clickOnIconInActionButton() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(iconInActionButton, 10);
		iconInActionButton.click();
	}

	@FindBy(xpath = "(//div[@class='p-1 ng-star-inserted']/button)[3]")
	public WebElement icon3;

	public void clickOnIcon3() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(icon3, 10);
		icon3.click();
	}

	@FindBy(xpath = "//span[text()='Outline']/preceding-sibling::div")
	public WebElement outlineCheckbox;

	public void clickOnOutlineCheckbox() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(outlineCheckbox, 10);
		outlineCheckbox.click();
	}

	@FindBy(xpath = "//span[text()='Refresh Form']/preceding-sibling::div")
	public WebElement refreshFormCheckboxInEditSubmissionActionType;

	public void clickOnRefreshFormCheckboxInEditSubmissionActionType() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(refreshFormCheckboxInEditSubmissionActionType, 10);
		refreshFormCheckboxInEditSubmissionActionType.click();
	}

	public WebElement actionButtonNameAfterclickingAddButton(String fieldName) {
		String xpathString = "//span[text()=' " + fieldName
				+ " ']/parent::button[@class='ant-btn ng-star-inserted ant-btn-primary ant-btn-background-ghost']";
		return driver.findElement(By.xpath(xpathString));
	}

	@FindBy(xpath = "(//div[@class='ant-modal-body ng-star-inserted'])[2]//app-z-form-modal//div/div[2]//form/div[2]//button")
	public WebElement submitButtonAfterClickOnActionButton;

	public void clickOnSubmitButton2() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(submitButtonAfterClickOnActionButton, 10);
		util.actionutil.moveToElement(submitButtonAfterClickOnActionButton);
		submitButtonAfterClickOnActionButton.click();
	}

	@FindBy(xpath = "//button[@aria-label='Close']")
	public WebElement closeIconAfterEnteringDatabase;

	public void clickOnCloseIconAfterEnteringDatabase() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(closeIconAfterEnteringDatabase, 10);
		closeIconAfterEnteringDatabase.click();
	}

	public WebElement databaseTitle(String dbName) {
		String xpathExpression = "//h4[text()='" + dbName + "']/ancestor::div[@class='card-hover']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//input[@placeholder='search by title']")
	public WebElement searchBoxInDatabases;

	public void enterInSearchBoxInDatabases(String dbName) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(searchBoxInDatabases, 10);
		searchBoxInDatabases.clear();
		searchBoxInDatabases.sendKeys(dbName);
	}

	public void clearSearchBoxInDatabases() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(searchBoxInDatabases, 10);
		searchBoxInDatabases.clear();
	}

	public WebElement textInDatabaseRecords(String textData) {
		String xpathExpression = "//span[text()='" + textData + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	// textarea[@class='z-text-input-disabled ant-input curved-input ng-pristine
	// ng-valid ng-star-inserted ng-touched']
	@FindBy(xpath = "//textarea[contains(@class,'z-text-input-disabled ant-input curved-input ')]")
	public WebElement textEditTextAreaAfterclickingOnActionButton;

	public void enterIntxtEditTextAreaAfterclickingOnActionButton(String text) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(textEditTextAreaAfterclickingOnActionButton, 10);
		textEditTextAreaAfterclickingOnActionButton.sendKeys(text);
	}

	@FindBy(xpath = "//li[normalize-space()='Email']")
	private WebElement emailInChooseFieldTypeDropdown;

	public void clickOnEmailInChooseFieldTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(emailInChooseFieldTypeDropdown, 10);
		emailInChooseFieldTypeDropdown.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Mobile']")
	private WebElement mobileInChooseFieldTypeDropdown;

	public void clickOnMobileInChooseFieldTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(mobileInChooseFieldTypeDropdown, 10);
		mobileInChooseFieldTypeDropdown.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Number']")
	private WebElement numberInChooseFieldTypeDropdown;

	public void clickOnNumberInChooseFieldTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(numberInChooseFieldTypeDropdown, 10);
		numberInChooseFieldTypeDropdown.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Decimal']")
	private WebElement decimalInChooseFieldTypeDropdown;

	public void clickOnDecimalInChooseFieldTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(decimalInChooseFieldTypeDropdown, 10);
		decimalInChooseFieldTypeDropdown.click();
	}

	@FindBy(xpath = "//li[normalize-space()='OTP']")
	private WebElement otpInChooseFieldTypeDropdown;

	public void clickOnOtpInChooseFieldTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(otpInChooseFieldTypeDropdown, 10);
		otpInChooseFieldTypeDropdown.click();
	}

	public void clickOnEscapeButtonOnKeyboard() {
		driver.findElement(By.xpath("//body")).sendKeys(Keys.ESCAPE);
	}

	@FindBy(xpath = "//i[@type='close-circle']")
	public WebElement closeCircle;

	public void clickOnCloseCircle() {
		closeCircle.click();
	}

	@FindBy(xpath = "(//span[contains(text(),'checkbox')])/../..//input")
	public WebElement checkBoxInputCheckboxMandatory;

	public void clickOnCheckBoxInputCheckboxMandatory() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(checkBoxInputCheckboxMandatory, 10);
		util.waitUtil.waitExecutionForGivenTime(1);
		checkBoxInputCheckboxMandatory.click();
	}

	public void validErrorOfPhoneFieldIsDisplayed() {
		String xpathExpression = "//div[text()=\"'Please enter valid phone number'\"]";
		Assert.assertTrue(driver.findElement(By.xpath(xpathExpression)).isDisplayed());
	}

	public void commonErrorMessageForRequiredFieldIsDisplayed() {
		String xpathExpression = "//*[contains(text(),'Certain Mandatory fields are empty. Please review entries marked in red *')]";
		Assert.assertTrue(driver.findElement(By.xpath(xpathExpression)).isDisplayed());
	}

	public void commonErrorMessageForInvalidFormatsIsDisplayed() {
		String xpathExpression = "//span[text()='Invalid formats detected for certain fields. Please review entries marked in red ']";
		Assert.assertTrue(driver.findElement(By.xpath(xpathExpression)).isDisplayed());
	}

	@FindBy(xpath = "//div[text()='Choose Numbers Type']/parent::div")
	public WebElement chooseNumbersTypeDropdown;

	public void clickOnChooseNumbersTypeDropdown() {
		chooseNumbersTypeDropdown.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Integer']")
	public WebElement integerInChooseNumbersTypeDropdown;

	public void clickOnIntegerInChooseNumbersTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(integerInChooseNumbersTypeDropdown, 10);
		integerInChooseNumbersTypeDropdown.click();
	}

	@FindBy(xpath = "//li[normalize-space()='Decimal']")
	public WebElement decimalInChooseNumbersTypeDropdown;

	public void clickOnDecimalInChooseNumbersTypeDropdown() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(decimalInChooseNumbersTypeDropdown, 10);
		decimalInChooseNumbersTypeDropdown.click();
	}

	public WebElement optionByVisibleTextInSelectValueDropdown(String text) {
		String xpathExpression = "//span[@class='ng-option-label ng-star-inserted'][text()='" + text + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	public WebElement optionByVisibleTextInDropdownlistInput(String text) {
		String xpathExpression = "//li[normalize-space()='" + text + "']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "//input[@placeholder='Precision']")
	public WebElement precisionInputInNumber;

	public void enterInPrecisionInputInNumber(String num) throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(precisionInputInNumber, 10);
		precisionInputInNumber.sendKeys(num);
	}

	@FindBy(xpath = "//input[contains(@class,'ant-select-search__field ng-tns') and contains(@class,'ng-pristine ng-valid ng-star-inserted')]")
	public WebElement dropdownListInput;

	public void clickOnDropdownListInput() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dropdownListInput, 10);
		dropdownListInput.click();
	}

	@FindBy(xpath = "//i[@nztype='close-circle']")
	public WebElement closeCircle2;

	public void clickOnCloseCircle2() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(closeCircle2, 10);
		closeCircle2.click();
	}

	@FindBy(xpath = "//div[text()=\" Missing value for required field 'dropdownList' and value 'null' \"]")
	public WebElement missingValueForRequiredFieldErrorMessage;

	public void missingValueForRequiredFieldErrorMessageIsDispayed() {
		Assert.assertTrue(missingValueForRequiredFieldErrorMessage.isDisplayed());
	}

	@FindBy(xpath = "//span[@class='menu-title' and text()='Databases']/ancestor::a")
	public WebElement databases;

	public void clickOnDatabases() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(databases, 10);
		databases.click();
	}

	@FindBy(xpath = "//span[normalize-space()='Add']/..")
	public WebElement addButtonInDatabases;

	public void clickOnAddButtonInDatabases() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(addButtonInDatabases, 10);
		addButtonInDatabases.click();
	}

	public WebElement checkboxByLableAfterClickingAddButton(String label) {
		String xpathExpression = "//label[contains(@class,'ant-checkbox-wrapper')]//span[@class='ng-star-inserted'][text()=' "
				+ label + " ']";
		return driver.findElement(By.xpath(xpathExpression));
	}

	@FindBy(xpath = "(//li[@class='ant-select-dropdown-menu-item ng-star-inserted'])[13]")
	public WebElement form_DatabaseSearch;

	public void clickOnForm_DatabaseSearch() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(form_DatabaseSearch, 10);
		form_DatabaseSearch.click();
	}

	@FindBy(xpath = "//nz-form-label[normalize-space()='form/DatabaseSearch']/following-sibling::nz-form-control")
	public WebElement form_DatabaseSearchAfterClickingAddButton;

	public void clickOnForm_DatabaseSearchAfterClickingAddButton() {
		form_DatabaseSearchAfterClickingAddButton.click();
	}

	@FindBy(xpath = "//nz-form-label[normalize-space()='form/DatabaseSearch']/following-sibling::nz-form-control//div[@title]")
	public WebElement dropdownOptionTextInFormDatabaseSearch;

	public String getDropdownOptionTextInFormDatabaseSearch() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(dropdownOptionTextInFormDatabaseSearch, 10);
		return dropdownOptionTextInFormDatabaseSearch.getText();
	}

	@FindBy(xpath = "//tr//td//span[@class='dx-checkbox-icon']")
	public WebElement checkboxForEntryInDatabase;

	public void clickOnCheckboxForEntryInDatabase() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(checkboxForEntryInDatabase, 10);
		checkboxForEntryInDatabase.click();
	}

	@FindBy(xpath = "//button[@type='button' and @nzoktext='Delete']")
	public WebElement deleteButtonInDatabase;

	public void clickOnDeleteButtonInDatabase() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(deleteButtonInDatabase, 10);
		deleteButtonInDatabase.click();
	}

	@FindBy(xpath = "//tr[@role='row']//td[@role='gridcell']//span[@class='ng-star-inserted dx-template-wrapper']")
	public WebElement cellInDatabaseForAutonumberEntry;

	public String getTextFromCellInDatabaseForAutonumberEntry() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(cellInDatabaseForAutonumberEntry, 10);
		return cellInDatabaseForAutonumberEntry.getText();
	}

	public String getErrorMessageByPrevalidationBot() {
		String xpathExpression = "//nz-form-explain";
		return driver.findElement(By.xpath(xpathExpression)).getText();
	}

	@FindBy(xpath = "//tr[1]//td[@class='dx-command-edit']//i[@nztype='edit']/parent::button")
	public WebElement editIconForRow1InDatabase;

	public void clickOnEditIconForRow1InDatabase() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(editIconForRow1InDatabase, 10);
		editIconForRow1InDatabase.click();
	}

	@FindBy(xpath = "//i[@nztype='close'][@title='Remove file']")
	public WebElement closeIconForRemovingFile;

	public void clickOnCloseIconForRemovingFile() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(closeIconForRemovingFile, 10);
		closeIconForRemovingFile.click();
	}

	@FindBy(xpath = "(//button[@nzshape='circle'])[1]")
	public WebElement closeIconForRemovingFileProfileImage;

	public void clickOnCloseIconForRemovingFileProfileImage() throws InterruptedException {
		util.waitUtil.WaitForElementToBePresentUpdate(closeIconForRemovingFileProfileImage, 10);
		closeIconForRemovingFileProfileImage.click();
	}

	public WebElement fileTypeInFileUploadByVisibleText(String text) {
		return driver.findElement(By.xpath("//span[normalize-space()='" + text + "'][@class='mat-option-text']"));
	}

}
