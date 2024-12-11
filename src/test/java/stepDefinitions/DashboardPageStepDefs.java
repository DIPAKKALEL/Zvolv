package stepDefinitions;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

import pageObjects.AddDashboardPage;
import pageObjects.DashboardPage;
import pageObjects.DashboardPageObjects;
import pageObjects.GlobalPageObjects;
import pageObjects.LoginThroughWorkspacePageObj;
import testbase.TestBase;
import utilities.Utilities;

public class DashboardPageStepDefs extends TestBase {

	DashboardPage dashboardPage = new DashboardPage(driver);
	Utilities util = new Utilities(driver);
	LoginThroughWorkspacePageObj loginbyworkspace = new LoginThroughWorkspacePageObj(driver);
	GlobalPageObjects globalPageObjects = new GlobalPageObjects(driver);
	AddDashboardPage addDashBorad = new AddDashboardPage(driver);
	DashboardPageObjects dashboardpageobjects = new DashboardPageObjects(driver);
	TestBase tesbase = new TestBase();
	String widgetDescription;

	@When("User clicks on {string} Dashboard")
	public void user_clicks_on_dashboard(String string) {
		dashboardPage.dashboardName(string).click();
	}

	@Then("User clicks on Edit button in Dashboard")
	public void user_clicks_on_edit_button_in_dashboard() {
		dashboardPage.clickOnEditButtonInDashboard();
	}

	@Then("User clicks on Add Widget button")
	public void user_clicks_on_add_widget_button() {
		dashboardPage.clickOnAddWidgetButtonInDashboard();
	}

	@Then("User clicks on {string} widget")
	public void user_clicks_on_widget(String string) {
		dashboardPage.widgetBasedOnTitle(string).click();
	}

	@Then("User enters {string} as Pie Chart title")
	public void user_enters_as_pie_chart_title(String string) {
		dashboardPage.enterInTitleOfWidget(string);
	}

	@Then("User clicks on {string} accordion")
	public void user_clicks_on_accordion(String string) {
		dashboardPage.accordionInWidgetsBasedOnVisibleText(string).click();
	}

	@Then("User clicks on {string} checkbox")
	public void user_clicks_on_checkbox(String string) {
		dashboardPage.checkboxInDataPointsInWidgetBasedOnVisibleText(string).click();
	}

	@Then("User clicks on {string} button")
	public void user_clicks_on_button(String string) {

		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].scrollIntoView(true);",
				dashboardPage.buttonInDataManipulationByVisibleText(string));
		dashboardPage.buttonInDataManipulationByVisibleText(string).click();
	}

	@Then("User clicks on {string} dropdown")
	public void user_clicks_on_dropdown(String string) {
		dashboardPage.dropdownInFilterInWidgetBasedOnText(string).click();
	}

	@Then("User selects {string} form")
	public void user_selects_form(String string) {
		util.actionutil
				.moveToElement(dashboardPage.optionInChooseFormDropdownInDataPointsInWidgetBasedOnVisibleText(string));
		dashboardPage.optionInChooseFormDropdownInDataPointsInWidgetBasedOnVisibleText(string).click();
	}

	@Then("User selects {string} field")
	public void user_selects_field(String string) {
		dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(string).click();
	}

	@Then("User selects {string} value")
	public void user_selects_value(String string) {
		dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(string).click();
	}

	@Then("User enters {string} in Value field")
	public void user_enters_in_value_field(String string) {
		dashboardPage.enterInValueTextboxInConditionalFormattingInSeries(string);
	}

	@Then("User clicks on {string} dropdown in Legends")
	public void user_clicks_on_dropdown_in_legends(String string) {
		dashboardPage.dropdownInLegendsInWidgetBasedOnText(string).click();
	}

	@Then("User clears Title field in Widget")
	public void user_clears_title_field_in_widget() {
		dashboardPage.titleInDetailsOfWidget.clear();
	}

	@Then("User waits for {string} milliseconds")
	public void user_waits_for_milliseconds(String string) throws NumberFormatException, InterruptedException {
		Thread.sleep(Long.parseLong(string));
	}

	@Then("User enters in {string} Text field with value {string}")
	public void user_enters_in_text_field_with_value(String string, String string2) {
		dashboardPage.textFieldBasedOnVisibleTextInDatapointsAccordion(string).sendKeys(string2, Keys.ENTER);
	}

	@Then("User clicks on {string} button in Form footer")
	public void user_clicks_on_button_in_form_footer(String string) {
		util.waitUtil.waitForElementClickable(dashboardPage.buttonInFooterInDatapointsFormByVisibleText(string));
		dashboardPage.buttonInFooterInDatapointsFormByVisibleText(string).click();
	}

	@Then("User clicks on {string} button in Serieses accordion")
	public void user_clicks_on_button_in_serieses_accordion(String string) {
		dashboardPage.addButtonInSeriesesAccordion.click();
	}

	@Then("User clicks on {string} dropdown in Series accordion")
	public void user_clicks_on_dropdown_in_series_accordion(String string) {
		dashboardPage.dropdownInDataManipulationInWidgetBasedOnTitle(string).click();
	}

	@Then("User clicks on Add button in {string} accordion")
	public void user_clicks_on_button_in_accordion(String string) {
		dashboardPage.addButtonBasedOnAccordionName(string).click();
	}

	@Then("User clicks on dropdown with {string} placeholder")
	public void user_clicks_on_dropdown_with_placeholder(String string) {
		dashboardPage.dropdownInSeriesBasedOnPlaceholder(string).click();
	}

	@Then("User clicks on Value field")
	public void user_clicks_on_value_field() {
		dashboardPage.clickOnValueTextboxInConditionalFormattingInSeries();
	}

	@Then("User enters {string} as Description")
	public void user_enters_as_description(String string) {
		dashboardPage.enterInDescriptionTextboxInDetailsAccordion(string);
	}

	@Then("User clicks on {string} color picker")
	public void user_clicks_on_color_picker(String string) {
		dashboardPage.colorPickerBasedOnVisibleTextInDetailsAccordion(string).click();
	}

	@Then("User selects {string} color")
	public void user_selects_color(String string) {
		dashboardPage.colorBasedOnColorCode(string).click();
	}

	@Then("User clicks on {string} tab")
	public void user_clicks_on_tab(String string) {
		dashboardPage.tabNameInAccordion(string).click();
	}

	@Then("User clicks on {string} value")
	public void user_clicks_on_value(String string) {
		dashboardPage.optionInChooseFormDropdownInDataPointsInWidgetBasedOnVisibleText(string).click();
	}

	@Then("User clicks on {string} radio")
	public void user_clicks_on_radio(String string) {
		dashboardPage.radioNameBasedOnVisibleText(string).click();
	}

	@Then("User clicks on {string} value in Formula tab")
	public void user_clicks_on_value_in_formula_tab(String string) {
		dashboardPage.optionInDropdownInFormulaTabBasedOnVisibleText(string).click();
	}

	@Then("User mouse overs on {string} ADD button")
	public void user_mouse_overs_on_add_button(String string) {
		util.actionutil.moveToElement(dashboardPage.addButtonInPivotBasedOnColumnHeading(string));
	}

	@Then("User clicks on {string} dropdown in Data Manipulation accordion")
	public void user_clicks_on_dropdown_in_data_manipulation_accordion(String string) {
		dashboardPage.dropdownInDataManipulationInWidgetBasedOnTitle(string).click();
	}

	@Then("User enters {string} value in Label field")
	public void user_enters_value_in_label_field(String string) {
		dashboardPage.enterInLabelTextboxInWidgets(string);
	}

	@Then("User clicks on {string} dropdown in Tooltip accordion")
	public void user_clicks_on_dropdown_in_tooltip_accordion(String string) {
		dashboardPage.dropdownInTooltipInWidgetBasedOnTitle(string).click();
	}

	@Then("User clicks on {string} dropdown in Drill Down accordion")
	public void user_clicks_on_dropdown_in_drill_down_accordion(String string) {
		dashboardPage.dropdownInDataManipulationInWidgetBasedOnTitle(string).click();
	}

	@Then("User clicks on {string} color picker in Serieses accordion")
	public void user_clicks_on_color_picker_in_serieses_accordion(String string) {
		dashboardPage.clickOnColorPickerInConditionalFormattingInSeriesAccordion();
	}

	@Then("User clicks on {string} button on Keyboard")
	public void user_clicks_on_button_on_keyboard(String string) {
		Actions actions = new Actions(driver);
		Keys keyEnum = Keys.valueOf(string.toUpperCase());
		actions.sendKeys(keyEnum).perform();
	}

	@Then("User enters {string} in {string} number box in accordion")
	public void user_enters_in_number_box_in_accordion(String string, String string2) {
		dashboardPage.numberBoxInAccordion(string2).sendKeys(string);
	}

	@Then("User clicks on dropdown with {string} placeholder in Datapoints accordion")
	public void user_clicks_on_dropdown_with_placeholder_in_datapoints_accordion(String string) {
		dashboardPage.dropdownBasedOnPlaceholderInDataPointsInWidget(string).click();
	}

	@Then("User enters {string} value in textbox in dropdown with {string} placeholder")
	public void user_enters_value_in_textbox_in_dropdown_with_placeholder(String string, String string2) {
		dashboardPage.textboxInDropdownBasedOnPlaceholder(string2).sendKeys(string, Keys.ENTER);
	}

	@Then("User clicks on {string} value in Choose operation dropdown in Formula tab")
	public void user_clicks_on_value_in_choose_operation_dropdown_in_formula_tab(String string) {
		try {
			dashboardPage.optionInDropdownInFormulaTabBasedOnVisibleText(string).click();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Then("User clicks on {string} option after mouse overing onto ADD button")
	public void user_clicks_on_option_after_mouse_overing_onto_add_button(String string) {
		util.actionutil.moveToElement(dashboardPage.optionAfterClickingOnADDButtonInPivotBasedOnVisibleText(string));
		dashboardPage.optionAfterClickingOnADDButtonInPivotBasedOnVisibleText(string).click();
	}

	@Then("User clicks on dropdown in Summarize by in Pivot")
	public void user_clicks_on_dropdown_in_summarize_by_in_pivot() {
		dashboardPage.clickOnDropdownInPivotInSummarizeby();
	}

	@Then("User clicks on {string} value in the dropdown in Summarize by in Pivot")
	public void user_clicks_on_value_in_the_dropdown_in_summarize_by_in_pivot(String string) {
		dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(string).click();
	}

	@Then("User clicks on {string} value in dropdown in Data Manipulation accordion")
	public void user_clicks_on_value_in_dropdown_in_data_manipulation_accordion(String string) {
		dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(string).click();
	}

	@Then("User clicks on {string} value in dropdown in Tooltip accordion")
	public void user_clicks_on_value_in_dropdown_in_tooltip_accordion(String string) {
		dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(string).click();
	}

	@Then("User clicks on {string} value in dropdown in Drill down accordion")
	public void user_clicks_on_value_in_dropdown_in_drill_down_accordion(String string) {
		dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(string).click();
	}

	@Then("User clicks on {string} value in dropdown in Filter accordion")
	public void user_clicks_on_value_in_dropdown_in_filter_accordion(String string) {
		dashboardPage.optionInDropdownInAdvancedTabInFilterAccordion(string).click();
	}

	@Then("User scrolls to bottom of page")
	public void user_scrolls_to_bottom_of_page() {
		// util.actionutil.sendKeys(Keys.chord(Keys.END));
		// JavascriptExecutor js = (JavascriptExecutor) driver;
		// js.executeScript("window.scrollTo(0, document.body.scrollHeight)");
//	 js.executeScript("window.scrollTo(0, document.documentElement.scrollHeight)");
		Actions actions = new Actions(driver);
		actions.keyDown(Keys.CONTROL).keyDown(Keys.END).keyUp(Keys.CONTROL).keyUp(Keys.END).perform();

	}

	@Then("User clicks on {string} value in dropdown in Pivot accordion")
	public void user_clicks_on_value_in_dropdown_in_pivot_accordion(String string) {
		dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(string).click();
	}

	@Then("User clicks on dropdown with {string} placeholder in Pivot accordion")
	public void user_clicks_on_dropdown_with_placeholder_in_pivot_accordion(String string) {
		dashboardPage.dropdownBasedOnPlaceholderInDataPointsInWidget(string).click();
	}

	@Then("User clicks on Post Operations ADD button")
	public void user_clicks_on_post_operations_add_button() {
		dashboardPage.clickOnAddButtonInPivotInPostOperationsColumn();
	}

	@Then("User enters {string} in Title box in Customize Axis accordion")
	public void user_enters_in_title_box_in_customize_axis_accordion(String string) {
		dashboardPage.enterIntitleTextBoxInCustomizeAxisAccordion(string);
	}

	@Then("User clicks on {string} value in Customize Axis accordion")
	public void user_clicks_on_value_in_customize_axis_accordion(String string) {
		dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(string).click();
	}

	@Then("User clicks on Delete button in popup")
	public void user_clicks_on_delete_button_in_popup() {
		dashboardPage.clickOnDeleteButtonInPopup();
	}

	@Then("User clicks on {string} type button by {string} widget name")
	public void user_clicks_on_type_button_by_widget_name(String string, String string2) {
		dashboardPage.buttonByTypeAndWidgetName(string, string2).click();
	}

	@Then("User clicks on {string} in Choose Column Type dropdown in Advanced Tab in DataPoints accordion")
	public void user_clicks_on_in_choose_column_type_dropdown_in_advanced_tab_in_data_points_accordion(String string) {
		dashboardPage.optionInChooseColumnTypeDropdownInAdvancedTabInDataPointsAccordion(string).click();
	}

	@Then("User clicks on {string} dropdown in Copy widget")
	public void user_clicks_on_dropdown_in_copy_widget(String string) {
		dashboardPage.dropdownInDataManipulationInWidgetBasedOnTitle(string).click();
	}

	@Then("User double clicks on field in Summarize by in Pivot")
	public void user_double_clicks_on_field_in_summarize_by_in_pivot() {
		dashboardPage.doubleClickOnFieldAfterClickingADDButtoninSummarizeByInPivot();
	}

	@Then("User enters {string} in input field in Summarize by in Pivot")
	public void user_enters_in_input_field_in_summarize_by_in_pivot(String string) {
		dashboardPage.inputFieldAfterClickingADDButtoninSummarizeByInPivot.clear();
		dashboardPage.enterInInputFieldAfterClickingADDButtoninSummarizeByInPivot(string);
	}

	@Then("User enters {string} value in {string} field")
	public void user_enters_value_in_field(String string, String string2) {
		dashboardPage.inputFieldByLabel(string2).sendKeys(string);
	}

	@Then("User fills the details in Condional formatting")
	public void user_fills_the_details_in_condional_formatting(io.cucumber.datatable.DataTable dataTable) {
		List<Map<String, String>> dt = dataTable.asMaps();

		for (int i = 1; i < dataTable.height(); i++) {
			dashboardPage.addButtonBasedOnAccordionName("Condional formatting").click();
			dashboardPage.dropdownInSeriesBasedOnPlaceholder("Select field", i).click();
			dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(dt.get(i - 1).get("Apply on(Field)")).click();
			dashboardPage.dropdownInSeriesBasedOnPlaceholder("Select operator", i).click();
			dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(dt.get(i - 1).get("Format if(Operator)"))
					.click();
			dashboardPage.valueTextboxInConditionalFormattingInSeriesByIndex(i).sendKeys(dt.get(i - 1).get("Value"));
			// dashboardPage.enterInValueTextboxInConditionalFormattingInSeries(dt.get(i-1).get("Value"));
			dashboardPage.clickOnColorPickerInConditionalFormattingInSeriesAccordionByIndex(i);
			// dashboardPage.clickOnColorPickerInConditionalFormattingInSeriesAccordion();
			dashboardPage.colorBasedOnColorCode(dt.get(i - 1).get("Color")).click();
		}

	}

	@Then("User refreshes the page")
	public void user_refreshes_the_page() {
		driver.get(driver.getCurrentUrl());
	}

	@Then("User takes Screenshot of {string} Doughnut Widget")
	public void user_takes_screenshot_of_doughnut_widget(String string) throws Exception {
		byte[] screenshot = ((TakesScreenshot) dashboardPage.doughnutWidgetReflectionByTitle(string))
				.getScreenshotAs(OutputType.BYTES);
		String testName = executionScenario.getName();
		executionScenario.attach(screenshot, "image/png", testName);
		System.out.println("Screenshot attached successfully");
	}

	@Then("User verifies title {string} of Doughnut chart widget")
	public void user_verifies_title_of_doughnut_chart_widget(String string) {
		String actualTitle = dashboardPage.getDoughnutWidgetTitleLatestInReflection();
		Assert.assertEquals(string.toUpperCase(), actualTitle);
		TestBase.writeResponse("Expected Widget Title with Case: " + string + " == "
				+ dashboardPage.getDoughnutWidgetTitleLatestInReflection().trim().toUpperCase()
				+ " Actual Widget Title");
	}

	@Then("User verifies the display of Data Export option in Doughnut widget by title {string}")
	public void user_verifies_the_display_of_data_export_option_in_doughnut_widget_by_title(String string) {
		try {
			if (dashboardPage.dropdownAtTopRightInDoughnutWidgetReflectionByWidgetTitle(string).isDisplayed()) {
				TestBase.writeResponse("Export Dashboard Dropdown IS displayed ");
			}
		} catch (Exception e) {
			TestBase.writeResponse("Export Dashboard Dropdown is NOT displayed ");
		}

	}

	@Then("User verifies data is displayed or not")
	public void user_verifies_data_is_displayed_or_not() {
		try {
			if (dashboardPage.isDataLoadingErrorMessageDisplayed()) {
				TestBase.writeResponse("Data Loading error message IS displayed");
			}
		} catch (Exception e) {
			if (dashboardPage.isDataPreviewTableDisplayed()) {
				TestBase.writeResponse("Data Table IS  displayed");
			} else {
				TestBase.writeResponse("No Data message IS  displayed");
			}
		}
	}

	@Then("User verifies description of Doughnut chart widget {string} with {string}")
	public void user_verifies_description_of_doughnut_chart_widget_with(String string, String string2) {
		String actualDescription = dashboardPage.getDoughnutWidgetDescriptionLatestInReflectionByTitle(string);
		Assert.assertEquals(string2, actualDescription);
		TestBase.writeResponse("Expected Widget Description with Case: " + string2 + " == " + actualDescription
				+ " (Actual Widget Description)");
	}

	@Then("User enters {string} in Select roles dropdown in View Permissions")
	public void user_enters_in_select_roles_dropdown_in_view_permissions(String string) {
		dashboardPage.enterInInputFieldInSelctRolesDropdown(string);
	}

	@Then("User clicks on button with inner text {string}")
	public void user_clicks_on_button_with_inner_text(String string) {
		dashboardPage.buttonByInnerTextInHTMLStaticWidget(string).click();
	}

	@Then("I fill the details in Data Manipulation")
	public void i_fill_the_details_in_data_manipulation(io.cucumber.datatable.DataTable dataTable) {

		List<Map<String, String>> dt = dataTable.asMaps();

		for (int i = 1; i < dataTable.height(); i++) {
			// globalPageObjects.clickOndownarrowByVisibleText("Select data point");
			dashboardPage.dropdownInSeriesBasedOnPlaceholder("Select data point", i).click();
			globalPageObjects.clickOnElementByVisibleTextInDropdown(dt.get(i - 1).get("Data point"));
			// globalPageObjects.clickOndownarrowByVisibleText("Select operation");
			dashboardPage.dropdownInSeriesBasedOnPlaceholder("Select operation", i).click();
			globalPageObjects.clickOnElementByVisibleTextInDropdown(dt.get(i - 1).get("Operation"));
			util.waitUtil.waitExecutionForGivenTime(2);
			dashboardPage.clickOnAddButtonInDataManipulation();
		}

	}

	@Then("User clicks on {string} title in Configure in Data Source")
	public void user_clicks_on_title_in_configure_in_data_source(String string) {
		dashboardPage.elementByTitleInDataSourceInConfigure(string).click();
	}

	@Then("User enters {string} in Input textbox")
	public void user_enters_in_input_textbox(String string) {
		dashboardPage.inputTextboxInConfigureInDataSource.clear();
		dashboardPage.enterInInputTextboxInConfigureInDataSource(string);
	}

	@Then("User enters {string} in Input number box in Configure in Data source")
	public void user_enters_in_input_number_box_in_configure_in_data_source(String string) {
		// dashboardPage.inputNumberboxInConfigureInDataSource.click();
		dashboardPage.inputNumberboxInConfigureInDataSource.clear();
		dashboardPage.enterInInputNumberboxInConfigureInDataSource(string, 2);
	}

	@Then("User clicks on Filter icon in Configure in Data source")
	public void user_clicks_on_filter_icon_in_configure_in_data_source() {
		dashboardPage.clickOnFilterIconInConfigureInDatasource();
	}

	@Then("User clicks on Hide icon in Configure in Data source")
	public void user_clicks_on_hide_icon_in_configure_in_data_source() {
		dashboardPage.clickOnHideIconInConfigureInDatasource();
	}

	@Then("I fill details in Filter in Configure in Data source")
	public void i_fill_details_in_filter_in_configure_in_data_source(io.cucumber.datatable.DataTable dataTable) {
		List<Map<String, String>> dt = dataTable.asMaps();
		dashboardPage.inputTextboxInConfigureInDataSource.clear();
		dashboardPage.enterInInputTextboxInConfigureInDataSource(dt.get(0).get("heading"));
		dashboardPage.clickOnFilterIconInConfigureInDatasource();
		System.out.println("dt height: " + dataTable.height());

		for (int i = 0; i < dataTable.height() - 1; i++) {
			// globalPageObjects.clickOnButtonByVisibleText("Add Filter");
			dashboardPage.clickOnAddFilterInTasktrackerTable();
			util.waitUtil.waitExecutionForGivenTime(1);
			dashboardPage.clickOndownarrowByVisibleTextByIndex("Value is", (i + 1));
			globalPageObjects.clickOnElementByVisibleTextInDropdown(dt.get(i).get("Value is"));
			// globalPageObjects.enterTextByPlaceHolder("Value", dt.get(i).get("Value"));
			dashboardPage.inputByIndexInFilterInDatasource(i + 1).sendKeys(dt.get(i).get("Value"));
			util.waitUtil.waitExecutionForGivenTime(2);
		}
	}

	@Then("User selects {string} value in View Permission dropdown")
	public void user_selects_value_in_view_permission_dropdown(String string) {
		dashboardPage.optionInViewPermissionDropdownByVisibleText(string).click();
	}

	@Then("User takes doughunut widget screenshot by {string}")
	public void user_takes_doughunut_widget_screenshot_by(String string) throws Exception {
		byte[] screenshot = ((TakesScreenshot) dashboardPage.doughnutWidgetReflectionByTitle(string))
				.getScreenshotAs(OutputType.BYTES);
		String testName = executionScenario.getName();
		executionScenario.attach(screenshot, "image/png", testName);
		System.out.println("Screenshot attached successfully");
	}

	@Then("User verifies title {string} of Kpi widget")
	public void user_verifies_title_of_kpi_widget(String string) {
		String actualTitle = dashboardPage.getKpiWidgetTitleLatestInReflection();
		Assert.assertEquals(string.toUpperCase(), actualTitle);
		TestBase.writeResponse("Expected Widget Title with Case: " + string + " == "
				+ dashboardPage.getKpiWidgetTitleLatestInReflection().trim().toUpperCase() + " Actual Widget Title");
	}

	@Then("User verifies description of Kpi widget {string} with {string}")
	public void user_verifies_description_of_kpi_widget_with(String string, String string2) {
		String actualDescription = dashboardPage.getKpiWidgetDescriptionLatestInReflectionByTitle(string);
		Assert.assertEquals(string2, actualDescription);
		TestBase.writeResponse("Expected Widget Description with Case: " + string2 + " == " + actualDescription
				+ " (Actual Widget Description)");
	}

	@Then("User takes kpi widget screenshot by {string}")
	public void user_takes_kpi_widget_screenshot_by(String string) throws Exception {
		byte[] screenshot = ((TakesScreenshot) dashboardPage.kpiWidgetReflectionByTitle(string))
				.getScreenshotAs(OutputType.BYTES);
		String testName = executionScenario.getName();
		executionScenario.attach(screenshot, "image/png", testName);
		System.out.println("Screenshot attached successfully");
	}

	@Then("User verifies the display of Data Export option in Kpi widget by title {string}")
	public void user_verifies_the_display_of_data_export_option_in_kpi_widget_by_title(String string) {
		try {
			if (dashboardPage.dropdownAtTopRightInKpiWidgetReflectionByWidgetTitle(string).isDisplayed()) {
				TestBase.writeResponse("Export Dashboard Dropdown IS displayed ");
			}
		} catch (Exception e) {
			TestBase.writeResponse("Export Dashboard Dropdown is NOT displayed ");
		}
	}

	@Then("User verifies title {string} of Tasktracker table widget")
	public void user_verifies_title_of_tasktracker_table_widget(String string) {
		String actualTitle = dashboardPage.getTasktrackertableWidgetTitleLatestInReflection();
		Assert.assertEquals(string.toUpperCase(), actualTitle);
		TestBase.writeResponse("Expected Widget Title with Case: " + string + " == "
				+ dashboardPage.getTasktrackertableWidgetTitleLatestInReflection().trim().toUpperCase()
				+ " Actual Widget Title");
	}

	@Then("User verifies description of Tasktracker table  widget {string} with {string}")
	public void user_verifies_description_of_tasktracker_table_widget_with(String string, String string2) {
		String actualDescription = dashboardPage.getTasktrackertableWidgetDescriptionLatestInReflectionByTitle(string);
		Assert.assertEquals(string2, actualDescription);
		TestBase.writeResponse("Expected Widget Description with Case: " + string2 + " == " + actualDescription
				+ " (Actual Widget Description)");
	}

	@Then("User verifies the display of Data Export option in Tasktracker table  widget by title {string}")
	public void user_verifies_the_display_of_data_export_option_in_tasktracker_table_widget_by_title(String string) {
		try {
			if (dashboardPage.dropdownAtTopRightInTasktrackertableWidgetReflectionByWidgetTitle(string).isDisplayed()) {
				TestBase.writeResponse("Export Dashboard Dropdown IS displayed ");
			}
		} catch (Exception e) {
			TestBase.writeResponse("Export Dashboard Dropdown is NOT displayed ");
		}
	}

	@Then("User takes Tasktracker table  widget screenshot by {string}")
	public void user_takes_tasktracker_table_widget_screenshot_by(String string) throws Exception {
		byte[] screenshot = ((TakesScreenshot) dashboardPage.taskTrackerTableWidgetReflectionByTitle(string))
				.getScreenshotAs(OutputType.BYTES);
		String testName = executionScenario.getName();
		executionScenario.attach(screenshot, "image/png", testName);
		System.out.println("Screenshot attached successfully");
	}

	@Then("User verifies title {string} of Line chart widget")
	public void user_verifies_title_of_line_chart_widget(String string) {
		String actualTitle = dashboardPage.getLinechartWidgetTitleLatestInReflection();
		Assert.assertEquals(string.toUpperCase(), actualTitle);
		TestBase.writeResponse("Expected Widget Title with Case: " + string + " == " + actualTitle.trim().toUpperCase()
				+ " Actual Widget Title");
	}

	@Then("User verifies description of Line chart widget {string} with {string}")
	public void user_verifies_description_of_line_chart_widget_with(String string, String string2) {
		String actualDescription = dashboardPage.getLinechartWidgetDescriptionLatestInReflectionByTitle(string);
		Assert.assertEquals(string2, actualDescription);
		TestBase.writeResponse("Expected Widget Description with Case: " + string2 + " == " + actualDescription
				+ " (Actual Widget Description)");
	}

	@Then("User verifies the display of Data Export option in Line chart widget by title {string}")
	public void user_verifies_the_display_of_data_export_option_in_line_chart_widget_by_title(String string) {
		try {
			if (dashboardPage.dropdownAtTopRightInLinechartWidgetReflectionByWidgetTitle(string).isDisplayed()) {
				TestBase.writeResponse("Export Dashboard Dropdown IS displayed ");
			}
		} catch (Exception e) {
			TestBase.writeResponse("Export Dashboard Dropdown is NOT displayed ");
		}
	}

	@Then("User takes Line chart widget screenshot by {string}")
	public void user_takes_line_chart_widget_screenshot_by(String string) {
		byte[] screenshot = ((TakesScreenshot) dashboardPage.lineChartWidgetReflectionByTitle(string))
				.getScreenshotAs(OutputType.BYTES);
		String testName = executionScenario.getName();
		executionScenario.attach(screenshot, "image/png", testName);
		System.out.println("Screenshot attached successfully");
	}

	@Then("User verifies title {string} of Gantt widget")
	public void user_verifies_title_of_gantt_widget(String string) {
		String actualTitle = dashboardPage.getGanttWidgetTitleLatestInReflection();
		Assert.assertEquals(string.toUpperCase(), actualTitle);
		TestBase.writeResponse("Expected Widget Title with Case: " + string + " == " + actualTitle.trim().toUpperCase()
				+ " Actual Widget Title");
	}

	@Then("User verifies description of Gantt widget {string} with {string}")
	public void user_verifies_description_of_gantt_widget_with(String string, String string2) {
		String actualDescription = dashboardPage.getGanttWidgetDescriptionLatestInReflectionByTitle(string);
		Assert.assertEquals(string2, actualDescription);
		TestBase.writeResponse("Expected Widget Description with Case: " + string2 + " == " + actualDescription
				+ " (Actual Widget Description)");
	}

	@Then("User verifies the display of Data Export option in Gantt widget by title {string}")
	public void user_verifies_the_display_of_data_export_option_in_gantt_widget_by_title(String string) {
		try {
			if (dashboardPage.dropdownAtTopRightInGanttWidgetReflectionByWidgetTitle(string).isDisplayed()) {
				TestBase.writeResponse("Export Dashboard Dropdown IS displayed ");
			}
		} catch (Exception e) {
			TestBase.writeResponse("Export Dashboard Dropdown is NOT displayed ");
		}
	}

	@Then("User takes Gantt widget screenshot by {string}")
	public void user_takes_gantt_widget_screenshot_by(String string) {
		byte[] screenshot = ((TakesScreenshot) dashboardPage.ganttWidgetReflectionByTitle(string))
				.getScreenshotAs(OutputType.BYTES);
		String testName = executionScenario.getName();
		executionScenario.attach(screenshot, "image/png", testName);
		System.out.println("Screenshot attached successfully");
	}

	@Then("User clicks on Configure button in Gantt Config")
	public void user_clicks_on_configure_button_in_gantt_config() {
		dashboardPage.clickOnConfigureButtonInGanttConfig();
	}

	@Then("User clicks on {string} dropdown in Gantt")
	public void user_clicks_on_dropdown_in_gantt(String string) {
		dashboardPage.dropdownInGanttByLabel(string).click();
	}

	@Then("User verifies title {string} of Pie chart widget")
	public void user_verifies_title_of_pie_chart_widget(String string) {
		String actualTitle = dashboardPage.getPiechartWidgetTitleLatestInReflection();
		Assert.assertEquals(string.toUpperCase(), actualTitle);
		TestBase.writeResponse("Expected Widget Title with Case: " + string + " == " + actualTitle.trim().toUpperCase()
				+ " Actual Widget Title");
	}

	@Then("User verifies description of Pie chart widget {string} with {string}")
	public void user_verifies_description_of_pie_chart_widget_with(String string, String string2) {
		String actualDescription = dashboardPage.getPiechartWidgetDescriptionLatestInReflectionByTitle(string);
		Assert.assertEquals(string2, actualDescription);
		TestBase.writeResponse("Expected Widget Description with Case: " + string2 + " == " + actualDescription
				+ " (Actual Widget Description)");
	}

	@Then("User verifies the display of Data Export option in Pie chart widget by title {string}")
	public void user_verifies_the_display_of_data_export_option_in_pie_chart_widget_by_title(String string) {
		try {
			if (dashboardPage.dropdownAtTopRightInPiechartWidgetReflectionByWidgetTitle(string).isDisplayed()) {
				TestBase.writeResponse("Export Dashboard Dropdown IS displayed ");
			}
		} catch (Exception e) {
			TestBase.writeResponse("Export Dashboard Dropdown is NOT displayed ");
		}
	}

	@Then("User takes Pie chart widget screenshot by {string}")
	public void user_takes_pie_chart_widget_screenshot_by(String string) {
		byte[] screenshot = ((TakesScreenshot) dashboardPage.piechartWidgetReflectionByTitle(string))
				.getScreenshotAs(OutputType.BYTES);
		String testName = executionScenario.getName();
		executionScenario.attach(screenshot, "image/png", testName);
		System.out.println("Screenshot attached successfully");
	}

	@Then("User verifies title {string} of Iframe widget")
	public void user_verifies_title_of_iframe_widget(String string) {
		String actualTitle = dashboardPage.getIframeWidgetTitleLatestInReflection();
		Assert.assertEquals(string.toUpperCase(), actualTitle);
		TestBase.writeResponse("Expected Widget Title with Case: " + string + " == " + actualTitle.trim().toUpperCase()
				+ " Actual Widget Title");
	}

	@Then("User verifies description of Iframe widget {string} with {string}")
	public void user_verifies_description_of_iframe_widget_with(String string, String string2) {
		String actualDescription = dashboardPage.getIframeWidgetDescriptionLatestInReflectionByTitle(string);
		Assert.assertEquals(string2, actualDescription);
		TestBase.writeResponse("Expected Widget Description with Case: " + string2 + " == " + actualDescription
				+ " (Actual Widget Description)");
	}

	@Then("User verifies the display of Data Export option in Iframe widget by title {string}")
	public void user_verifies_the_display_of_data_export_option_in_iframe_widget_by_title(String string) {
		try {
			if (dashboardPage.dropdownAtTopRightInIframeWidgetReflectionByWidgetTitle(string).isDisplayed()) {
				TestBase.writeResponse("Export Dashboard Dropdown IS displayed ");
			}
		} catch (Exception e) {
			TestBase.writeResponse("Export Dashboard Dropdown is NOT displayed ");
		}
	}

	@Then("User takes Iframe widget screenshot by {string}")
	public void user_takes_iframe_widget_screenshot_by(String string) {
		byte[] screenshot = ((TakesScreenshot) dashboardPage.iframeWidgetReflectionByTitle(string))
				.getScreenshotAs(OutputType.BYTES);
		String testName = executionScenario.getName();
		executionScenario.attach(screenshot, "image/png", testName);
		System.out.println("Screenshot attached successfully");
	}

	@Then("User verifies the display of Dropdown option at top right in Iframe widget by title {string}")
	public void user_verifies_the_display_of_dropdown_option_at_top_right_in_iframe_widget_by_title(String string) {
		try {
			if (dashboardPage.dropdownAtTopRightInIframeWidgetReflectionByWidgetTitle(string).isDisplayed()) {
				TestBase.writeResponse("Dropdown option at top right IS displayed ");
			}
		} catch (Exception e) {
			TestBase.writeResponse("Dropdown option at top right is NOT displayed ");
		}
	}

	@Then("User verifies title {string} of Bar chart widget")
	public void user_verifies_title_of_bar_chart_widget(String string) {
		String actualTitle = dashboardPage.getBarchartWidgetTitleLatestInReflection();
		Assert.assertEquals(string.toUpperCase(), actualTitle);
		TestBase.writeResponse("Expected Widget Title with Case: " + string + " == " + actualTitle.trim().toUpperCase()
				+ " Actual Widget Title");
	}

	@Then("User verifies description of Bar chart widget {string} with {string}")
	public void user_verifies_description_of_bar_chart_widget_with(String string, String string2) {
		String actualDescription = dashboardPage.getBarchartWidgetDescriptionLatestInReflectionByTitle(string);
		Assert.assertEquals(string2, actualDescription);
		TestBase.writeResponse("Expected Widget Description with Case: " + string2 + " == " + actualDescription
				+ " (Actual Widget Description)");
	}

	@Then("User verifies the display of Data Export option in Bar chart widget by title {string}")
	public void user_verifies_the_display_of_data_export_option_in_bar_chart_widget_by_title(String string) {
		try {
			if (dashboardPage.dropdownAtTopRightInBarchartWidgetReflectionByWidgetTitle(string).isDisplayed()) {
				TestBase.writeResponse("Export Dashboard Dropdown IS displayed ");
			}
		} catch (Exception e) {
			TestBase.writeResponse("Export Dashboard Dropdown is NOT displayed ");
		}
	}

	@Then("User takes Bar chart widget screenshot by {string}")
	public void user_takes_bar_chart_widget_screenshot_by(String string) {
		byte[] screenshot = ((TakesScreenshot) dashboardPage.barchartWidgetReflectionByTitle(string))
				.getScreenshotAs(OutputType.BYTES);
		String testName = executionScenario.getName();
		executionScenario.attach(screenshot, "image/png", testName);
		System.out.println("Screenshot attached successfully");
	}

	@Then("I fill the details in Condional formatting")
	public void i_fill_the_details_in_condional_formatting(io.cucumber.datatable.DataTable dataTable) {
		List<Map<String, String>> dt = dataTable.asMaps();

		for (int i = 1; i < dataTable.height(); i++) {
			dashboardPage.addButtonBasedOnAccordionName("Condional formatting").click();
			dashboardPage.dropdownInSeriesBasedOnPlaceholder("Select field", i).click();
			dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(dt.get(i - 1).get("Apply on(Field)")).click();
			dashboardPage.dropdownInSeriesBasedOnPlaceholder("Select operator", i).click();
			dashboardPage.optionIndropdownInTooltipInWidgetBasedOnText(dt.get(i - 1).get("Format if(Operator)"))
					.click();
			dashboardPage.valueTextboxInConditionalFormattingInSeriesByIndex(i).sendKeys(dt.get(i - 1).get("Value"));
			// dashboardPage.enterInValueTextboxInConditionalFormattingInSeries(dt.get(i-1).get("Value"));
			dashboardPage.clickOnColorPickerInConditionalFormattingInSeriesAccordionByIndex(i);
			// dashboardPage.clickOnColorPickerInConditionalFormattingInSeriesAccordion();
			dashboardPage.colorBasedOnColorCode(dt.get(i - 1).get("Color")).click();
		}

	}

	@Then("User clicks on {string} button in Gantt Config")
	public void user_clicks_on_button_in_gantt_config(String string) {
		dashboardPage.clickOnConfigButttonInGanttConfigByVisibleText(string);
	}

	@Then("User clicks on {string} dropdown downarrow")
	public void user_clicks_on_dropdown_downarrow(String string) {
		dashboardPage.dropdownDownArrowByLabel(string).click();
	}

	@When("User scrolls to x {string} and y {string} positions")
	public void user_scrolls_to_x_and_y_positions(String string, String string2) {
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("document.elementFromPoint(100,100).click();");

	}

	@Then("User clicks on {string} button2")
	public void user_clicks_on_button2(String string) {
		dashboardPage.saveButtoninDashboard.click();
	}

	@When("User clicks on {string} in Choose Column Type dropdown in Datapoints")
	public void user_clicks_on_in_choose_column_type_dropdown_in_datapoints(String string) {
		dashboardPage.genericOptionInDropdown.click();
	}

	@Then("User clicks on Add button in {string} accordion2")
	public void user_clicks_on_add_button_in_accordion2(String string) {
		dashboardPage.addButtonInFiltersAccordion.click();
	}

	@Then("User clicks on {string} checkbox2")
	public void user_clicks_on_checkbox2(String string) {
		dashboardPage.transposeCheckbox.click();
	}

	@Then("User clicks on Add button in Tooltip Config accordion")
	public void user_clicks_on_add_button_in_tooltip_config_accordion() {
		dashboardPage.addButtonInTooltipConfig.click();
	}

	@Then("User clicks on {string} dropdown in Calendar")
	public void user_clicks_on_dropdown_in_calendar(String string) {
		dashboardPage.dropdownInCalendarByLabel(string).click();
	}

	@Then("User clicks on Data Preview button in Datapoints in Calendar")
	public void user_clicks_on_data_preview_button_in_datapoints_in_calendar() {
		dashboardPage.clickOnDataPeviewButtonInDatapointsInCalendar();
	}

	@Then("User clicks on OK button in HtmlviewerStatic")
	public void user_clicks_on_ok_button_in_htmlviewer_static() {
		dashboardPage.clickOnOkButtonInHtmlviewerStatic();
	}

	@Then("User switches to frame")
	public void user_switches_to_frame() {
		driver.switchTo().frame(0);
	}

	@Given("User clicks on HTMLView Raw widget")
	public void user_clicks_on_html_view_raw_widget() {
		dashboardPage.clickOnHtmlviewerRaw();
	}

	// DIPAK Action Card
	@Then("User see the labels {string}, {string}, {string}, and {string}")
	public void user_see_the_labels_and(String string, String string2, String string3, String string4) {
		String[] str = { string, string2, string3, string4 };
		for (int i = 0; i <= str.length - 1; i++) {
			addDashBorad.UserSawTheLabel(str[i]);

		}
	}


	@Then("User see the samll muted text {string},{string},{string}, and checkbox text {string}")
	public void user_see_the_samll_muted_text_and_checkbox_text(String string, String string2, String string3,
			String string4) {
		String[] str = { string, string2, string3, string4 };
		for (int i = 0; i <= str.length - 1; i++) {
			addDashBorad.UserSawTheLabel(str[i]);
		}
	}

	@Then("I click on {string} {string} button")
	public void i_click_on_button(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		String[] splitText2 = string2.split("=");
		String locator2 = splitText2[0];
		String locatorText2 = splitText2[1];
		if ((locator.equals("VT")) && (locator2.equals("DI"))) {
			dashboardpageobjects.clickonCloseButton(locatorText, locatorText2);
		}

	}

	@Then("I click on {string} DD Option")
	public void i_click_on_dd_option(String string) {
		String xpath = "(//*[contains(text(),'" + string + "')])[2]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	@Then("User click on {string} Button")
	public void user_click_on_button(String string) {
		String xpath = "(//*[contains(text(),'Add')])[2]/..";
		WebElement ele = driver.findElement(By.xpath(xpath));
		ele.click();
	}

	@Then("User see the lables {string}, {string},")
	public void user_see_the_lables(String string, String string2) {
		String[] str = { string, string2 };
		for (int i = 0; i <= str.length - 1; i++) {
			addDashBorad.UserSawTheLabel(str[i]);
			writeResponse(str[i]);
		}
	}

	// Calendar
	@Given("User enters the {string} dashboard title")
	public void user_enters_the_dashboard_title(String string) {
		dashboardpageobjects.dashboardTitle(string);
	}

	@Given("I click on new caledar dashboard")
	public void i_click_on_new_caledar_dashboard() {
		dashboardpageobjects.clickonNewDashboard();
	}

	@Then("User clicks Background Color and selects the color")
	public void user_clicks_background_color_and_selects_the_color() {
		dashboardPage.backgroundColorSelction();

	}

	@Then("User clicks on Text Color and Selects the text color")
	public void user_clicks_on_text_color_and_selects_the_text_color() {
		dashboardPage.textcolorSelection();
	}

	@Then("User clicks on Icon Color ans Selects the Icon color")
	public void user_clicks_on_icon_color_ans_selects_the_icon_color() {
		dashboardPage.iconcolorSelection();
	}

	@Given("I clicked on cursor")
	public void i_clicked_on_cursor() {
		addDashBorad.DDsomethingNewCursor();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@Then("User clicked on edit permissin cursor")
	public void user_clicked_on_edit_permissin_cursor() {
		addDashBorad.EditPersmissionsNewCursor();
	}

	@Then("I click on Edit Permission {string} Dropdown")
	public void i_click_on_edit_permission_dropdown(String string) {
		addDashBorad.editpermissionDD();
	}

	@Then("User selects the {string}")
	public void user_selects_the(String string) {
		String[] split = string.split("=");
		String locator = split[0];
		String locatorText = split[1];
		if (locator.equals("VT")) {
			String str = "(//*[contains(text(),'" + locatorText + "')])[2]";
			WebElement ele = driver.findElement(By.xpath(str));
			ele.click();
		}
	}

	@Then("I click Save Dashborads {string} Button")
	public void i_click_save_dashborads_button(String string) {
		addDashBorad.AddDashboardSave_Btn(string);
	}

	@Then("User see the {string} Webelement")
	public void user_see_the_webelement(String string) {
		dashboardPage.externalLinkWebelement(string);
	}

	@When("User click on {string} form dropdown crosszapp datasource")
	public void user_click_on_form_dropdown_crosszapp_datasource(String string) {
		dashboardPage.crosszappdatasource();
	}

	@Then("User click on {string} and {string}")
	public void user_click_on_and(String string, String string2) {
		String[] split1 = string.split("=");
		String locator_1 = split1[0];
		String locatorText_1 = split1[1];
		String[] split2 = string2.split("=");
		String locator_2 = split2[0];
		String locatorText_2 = split2[1];
		if (locator_1.equals("LABEL") && locator_2.equals("VT")) {
			String xpath = "(//*[contains(text(),'" + locatorText_1 + "')])/..//div[contains(text(),'" + locatorText_2
					+ "')]";
			WebElement ele = driver.findElement(By.xpath(xpath));
			ele.click();
		}
	}

	@Given("User click on {string} and {string} button")
	public void user_click_on_and_button(String string, String string2) {
		String[] split1 = string.split("=");
		String locator_1 = split1[0];
		String locatorText_1 = split1[1];
		String[] split2 = string2.split("=");
		String locator_2 = split2[0];
		String locatorText_2 = split2[1];
		if (locator_1.equals("LABEL") && locator_2.equals("VT")) {
			String xpath = "(//*[contains(text(),'" + locatorText_1 + "')])/..//div[contains(text(),'" + locatorText_2
					+ "')]/..";
			WebElement ele = driver.findElement(By.xpath(xpath));
			ele.click();
		}
	}

	@Then("I click on {string} and {string}")
	public void i_click_on_and(String string, String string2) {
		String[] split1 = string.split("=");
		String locator_1 = split1[0];
		String locatorText_1 = split1[1];
		String[] split2 = string2.split("=");
		String locator_2 = split2[0];
		String locatorText_2 = split2[1];
		if (locator_1.equals("LABEL") && locator_2.equals("VT")) {
			String xpath = "(//*[contains(text(),'" + locatorText_1 + "')])/..//div[contains(text(),'" + locatorText_2
					+ "')]/../..";
			WebElement ele = driver.findElement(By.xpath(xpath));
			ele.click();
		}
	}

	@Then("I click on {string} Dropdown")
	public void i_click_on_dropdown(String string) {
		dashboardpageobjects.calConfig(string);
	}

	@Then("I click on {string} setting button")
	public void i_click_on_setting_button(String string) {
		dashboardpageobjects.SeetingBtnOfCalendar(string);
	}

	@Then("User click on {string} btn")
	public void user_click_on_btn(String string) {
		dashboardpageobjects.DoneBtnCalender();
	}

	@Then("I Scroll down the page to {string} WebElement")
	public void i_scroll_down_the_page_to_web_element(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			driver.findElement(By.xpath("(//*[contains(text(),'" + locatorText + "')])[2]"));
		}
	}

	@Then("I click on Calendar zone Dropdown")
	public void i_click_on_calendar_zone_dropdown() {
		dashboardpageobjects.CaledartimeZoneDropDown();
	}

	@Then("Uset click on caledar time zone dropdown icon")
	public void uset_click_on_caledar_time_zone_dropdown_icon() {
		dashboardpageobjects.calendarTimeZonedropdwonIcon();
	}

	@Then("I see Dropdown of Calender Time Zone")
	public void i_see_dropdown_of_calender_time_zone() {
		dashboardpageobjects.CalendarTimeZones();

	}

	@Then("User enter the events data as below")
	public void user_enter_the_events_data_as_below(io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> db = dataTable.asLists();
		globalPageObjects.enterTextByLabelTextAreawithoutEnterPress(db.get(0).get(0), db.get(1).get(0));
		globalPageObjects.enterTextByLabelTextAreawithoutEnterPress(db.get(0).get(1), db.get(1).get(1));
	}

	@Then("I click on {string} delete of calendar")
	public void i_click_on_delete_of_calendar(String string) {
		dashboardpageobjects.DeleteTheCaledarWidget(string);
	}

	@When("I click {string}")
	public void i_click(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("LABEL1")) {
			dashboardpageobjects.enterTextByLabelInputClick(locatorText);
		}

	}

	@Then("I enter Date as {string}")
	public void i_enter_date_as(String string) {
		dashboardpageobjects.SelectDateFromDatePicker(string);
	}

	@Then("I enter time {string} as {string}")
	public void i_enter_time_as(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locatorText.equals("Start Time")) {
			dashboardpageobjects.StartTime(string2);
		} else if (locatorText.equals("End Time")) {
			dashboardpageobjects.EndTime(string2);
		}
	}

	@Then("I click on Checkbox")
	public void i_click_on_checkbox() {
		dashboardpageobjects.selectcheckbox();
	}

	@Then("I click on all select checkbox")
	public void i_click_on_all_select_checkbox() {
		dashboardpageobjects.selectAllcheckbox();
	}

	@Then("I see {string} as a default calendar view")
	public void i_see_as_a_default_calendar_view(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			String xpath = "//*[@aria-selected='true']//*[contains(text(),'" + locatorText + "')]";
			driver.findElement(By.xpath(xpath)).isDisplayed();
		}
	}

	@Then("I click on {string} dropdown Value")
	public void i_click_on_dropdown_value(String string) {
		String xpath = "(//*[contains(text(),' New Submission')])[2]";
		WebElement ele = driver.findElement(By.xpath(xpath));
		util.actionutil.moveToElement(ele);
		ele.click();
	}

	@Then("User verifies the current date of calendar")
	public void user_verifies_the_current_date_of_calendar() {
		dashboardpageobjects.currentcalendarDate();
	}

	@Then("User verifies the WeekDays of the Calendar")
	public void user_verifies_the_week_days_of_the_calendar() {
		dashboardpageobjects.weekdayofCalendar();
	}

	@Then("User checks for the Leaf Year Feb month days")
	public void user_checks_for_the_leaf_year_feb_month_days() {
		dashboardpageobjects.leafYearCheck();
	}

	@Then("I click on Calendar Body")
	public void i_click_on_calendar_body() {
		dashboardpageobjects.clickoncalendarbody();
	}

	@Given("I click on new Created dashboard")
	public void i_click_on_new_created_dashboard() {
		dashboardpageobjects.clickonNewDashboard();
	}

	@Then("I see {string} of copied dashboard")
	public void i_see_of_copied_dashboard(String string) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.copyOfDashboard(locatorText);
		}
	}

	@Then("User checks for the Non Leaf Year Feb month days")
	public void user_checks_for_the_non_leaf_year_feb_month_days() {
		dashboardpageobjects.NonleafYearCheck();

	}

	@Given("i print the Date")
	public void i_print_the_date() {
		util.dateUtil.date();
	}

	@Then("WebElement by {string}[{int}] disappears from UI")
	public void web_element_by_disappears_from_ui(String string, Integer int1) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.WebElementDisappears(locatorText, int1);
		}
	}

	@Then("User Verifies {string} dropdown options")
	public void user_verifies_dropdown_options(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("LABEL")) {
			dashboardpageobjects.StartDayHourVerification(locatorText);
		}
	}

	@Then("I see {string} time zone box element")
	public void i_see_time_zone_box_element(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.TimeZoneBoxAppears(locatorText);
		}
	}

	@Then("I enter {string}[{int}] as {string} calendar old form")
	public void i_enter_as_calendar_old_form(String string, Integer int1, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("LABEL2")) {
			dashboardpageobjects.enterTextByLabelTextareaByIndexInOldFormCalendar(locatorText, int1, string2);
		}
	}

	@Then("I login with Users credentials")
	public void i_login_with_users_credentials(io.cucumber.datatable.DataTable dataTable) throws Exception {
		List<List<String>> dt = dataTable.asLists();
		loginbyworkspace.enterEmailOrPhoneNumber(dt.get(0).get(0));
		loginbyworkspace.enterPassword(dt.get(0).get(1));
		loginbyworkspace.clickOnLoginButton();
	}

	// TimeLine Widget

	@Then("User able to see created forms column same as {string},{string},{string},{string},{string}[{int}] values in dropdown")
	public void user_able_to_see_created_forms_column_same_as_values_in_dropdown(String string, String string2,
			String string3, String string4, String string5, Integer int1) {
		dashboardpageobjects.TimelineWidgetDropdownOptionVerification(string, string2, string3, string4, string5, int1);
	}

	@Then("User see the column {string} and data in it {string}")
	public void user_see_the_column_and_data_in_it(String string, String string2) {
		dashboardpageobjects.readingdatafromTimelineTestingDatabase(string, string2);
	}

	@Then("User click on Dashboard from side bar")
	public void user_click_on_dashboard_from_side_bar() {
		dashboardpageobjects.dashboardfromsidebar();

	}

	@Then("I see todays date web element")
	public void i_see_todays_date_web_element() {
		dashboardpageobjects.todaysdate();
	}

	@Then("I click on {string} from tablist of data point")
	public void i_click_on_from_tablist_of_data_point(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.clickonFilterFromDataPoints(locatorText);
		}

	}

	// Pivot Grid

	@Given("Created database with following details")
	public void created_database_with_following_details(io.cucumber.datatable.DataTable dataTable) {
		List<List<String>> db = dataTable.asLists();
		dashboardpageobjects.EnterDatabasename(db.get(1).get(0) + getDbname());
		dashboardpageobjects.enterDescripton(db.get(1).get(1));
		dashboardpageobjects.ClickonNextButton();
		dashboardpageobjects.databaseavatarcolor(db.get(1).get(2));
		dashboardpageobjects.databaseAvator(db.get(1).get(3));
		dashboardpageobjects.ClickonNextButton();
		dashboardpageobjects.databaseTypePublic_Private(db.get(1).get(4));
		dashboardpageobjects.ClickonNextButton();
		dashboardpageobjects.clickonArrow();
		dashboardpageobjects.formTypeOld_New(db.get(1).get(5));
		util.waitUtil.waitExecutionForGivenTime(1);
		dashboardpageobjects.clickonCreatButton();
		util.waitUtil.waitExecutionForGivenTime(1);
	}

	@Given("User accepts the Delete alert")
	public void user_accepts_the_delete_alert() {
		util.alertutil.alertPopupAccept();
	}

	@Given("User enters the dashboard title")
	public void user_enters_the_dashboard_title() {
		dashboardpageobjects.dashboardTitle();
	}

	@Given("I click created dashboard")
	public void i_click_created_dashboard() {
		dashboardpageobjects.clickonPivotGridDashboard();
	}

	@Then("User click on mapping data for field {string}")
	public void user_click_on_mapping_data_for_field(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.selectMappingDataForField(locatorText);
		}
	}

	@Then("I click on {string} from fields")
	public void i_click_on_from_fields(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			String xpath = "//*[@class='ng-star-inserted'][contains(text(),'" + locatorText + "')]/..";
			WebElement ele = driver.findElement(By.xpath(xpath));
			ele.click();

		}
	}

	@Then("User see {int} name column data as {string},{string} and {string}")
	public void user_see_name_column_data_as_and(Integer int1, String string, String string2, String string3) {
		String[] name = { string, string2, string3 };
		for (String NAME : name) {
			String[] splitText = NAME.split("=");
			String locator = splitText[0];
			String locatorText = splitText[1];
			if (locator.equals("VT")) {
				dashboardpageobjects.verificationOfNameColumnData(int1, locatorText);
			}
		}
	}

	@Then("User see {int} subject column data as {string},{string},{string} and {string}")
	public void user_see_subject_column_data_as_and(Integer int1, String string, String string2, String string3,
			String string4) {
		String[] subjects = { string, string2, string3, string4 };
		for (String SUBJECTS : subjects) {
			String[] splitText = SUBJECTS.split("=");
			String locator = splitText[0];
			String locatorText = splitText[1];
			if (locator.equals("VT")) {
				dashboardpageobjects.verificationOfSubjectsColumnData(int1, locatorText);
			}
		}
	}

	@Then("User see {int} name column data as {string} and {string},{string} hides")
	public void user_see_name_column_data_as_and_hides(Integer int1, String string, String string2, String string3) {
		dashboardpageobjects.FilterverificationTextIsExactlyNAME(int1, string);
		String[] name = { string2, string3 };

		for (String HiddenName : name) {
			String[] splitText = HiddenName.split("=");
			String locator = splitText[0];
			String locatorText = splitText[1];
			if (locator.equals("VT")) {
				try {
					String xpath = "(//*[contains(text(),'" + locatorText + "')])";
					assertFalse(driver.findElement(By.xpath(xpath)).isDisplayed());
				} catch (Exception e) {
					e.printStackTrace();
					TestBase.writeResponse(locatorText + "Is NOT Displayed");
				}

			}
		}
	}

	@Then("User see {int} name column data as {string}, {string} and {string} get hides")
	public void user_see_name_column_data_as_and_get_hides(Integer int1, String string, String string2,
			String string3) {
		dashboardpageobjects.FilterverificationTextNotInNAME(int1, string, string2);
		String[] splitText = string3.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			try {
				String xpath = "(//*[contains(text(),'" + locatorText + "')])";
				assertFalse(driver.findElement(By.xpath(xpath)).isDisplayed());
			} catch (Exception e) {
				e.printStackTrace();
				TestBase.writeResponse(locatorText + "Is Not Displayed");
			}

		}
	}

	@Then("Pivot Grid displays only {string}, {int} marks")
	public void pivot_grid_displays_only_marks(String string, Integer int1) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locatorText.equals("Less than")) {
			dashboardpageobjects.FilterVerificationLessThanMarks(int1);
		}
	}

//Doughtnut Chart

	@Then("I click on {string} mouse hover text")
	public void i_click_on_mouse_hover_text(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.clickonMouseHoverText(locatorText);
		}

	}

	@Then("User mouse hover to the {string} of the {string}")
	public void user_mouse_hover_to_the_of_the(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		String[] splitText2 = string2.split("=");
		String locator2 = splitText[0];
		String locatorText2 = splitText2[1];
		if (locator.equals("VT") && (locator2.equals("VT"))) {
			dashboardpageobjects.MouseHoverActionOfPivot(locatorText, locatorText2);
		}
	}

	@Then("User double clicks on {string} field {string} in Pivot")
	public void user_double_clicks_on_field_in_pivot(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		String[] splitText2 = string2.split("=");
		String locator2 = splitText[0];
		String locatorText2 = splitText2[1];
		if (locator.equals("VT") && (locator2.equals("VT"))) {
			dashboardpageobjects.doubleClickOnSummersizeByPivot(locatorText, locatorText2);
		}
	}

	@Given("User changed the {string} to {string} in {string}[{int}] pivot")
	public void user_changed_the_to_in_pivot(String string, String string2, String string3, Integer int1) {
		String[] splitText = string3.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		String[] splitText2 = string2.split("=");
		String locator2 = splitText[0];
		String Change = splitText2[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.SummarizeBypivotNameChange(Change, locatorText, int1);
		}
	}

	@Then("User see the doughtnut chart division are {int}")
	public void user_see_the_doughtnut_chart_division_are(Integer int1) {
		dashboardpageobjects.chartdivision(int1);
	}

	@Then("User see the Name Label with count are {string}, {string} and {string}")
	public void user_see_the_name_label_with_count_are_and(String string, String string2, String string3) {
		dashboardpageobjects.NameLabelVerification3Label(string, string2, string3);
	}

	@Then("User see the Name Label with count are {string},{string},{string},{string},{string} and {string}")
	public void user_see_the_name_label_with_count_are_and(String string, String string2, String string3,
			String string4, String string5, String string6) {
		dashboardpageobjects.NameLabelVerification6Label(string, string2, string3, string4, string5, string6);
	}

	@Then("User see the Name Label with count are {string}, {string},{string} and {string}")
	public void user_see_the_name_label_with_count_are_and(String string, String string2, String string3,
			String string4) {
		dashboardpageobjects.NameLabelVerification4Label(string, string2, string3, string4);
	}

	@Then("I remove new {int} name from the form")
	public void i_remove_new_name_from_the_form(Integer int1) {
		dashboardpageobjects.DeletenewEntryFromNewForm(int1);
	}

	@Then("User mouse hover on doughnut chart and see {string} tooltip text")
	public void user_mouse_hover_on_doughnut_chart_and_see_tooltip_text(String string) {
		dashboardpageobjects.TooltipMouseHoverVerification(string);
	}

	@Given("I click on {string} of quick filters")
	public void i_click_on_of_quick_filters(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.filterclick(locatorText);
		}
	}

	@Then("User see the Name Label with count are {string} and {string}")
	public void user_see_the_name_label_with_count_are_and(String string, String string2) {
		dashboardpageobjects.NameLabelVerification2LabelFilter(string, string2);
	}

	@Given("I click on {string} of filter configuration choose field")
	public void i_click_on_of_filter_configuration_choose_field(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.selectingOptionFromFilter(locatorText);
		}
	}

	@Given("I mouse Hover on {string} of {string}")
	public void i_mouse_hover_on_of(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		String[] splitText2 = string2.split("=");
		String locator2 = splitText2[0];
		String locatorText2 = splitText2[1];
		if (locator.equals("DI") && locator2.equals("LABEL")) {
			dashboardpageobjects.drilldownMouseHoverText(locatorText, locatorText2);
		}
	}

	@Then("I click on {string} doughtnut chart segment and {string} web element")
	public void i_click_on_doughtnut_chart_segment_and_web_element(String string, String string2) {
		String[] splitText = string2.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.doughtnutdivisionclickAndVerification(string, locatorText);
		}
	}

	@Then("I click on {string} PieChart chart segment and {string} web element")
	public void i_click_on_pie_chart_chart_segment_and_web_element(String string, String string2) {
		String[] splitText = string2.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.PieChartdivisionclickAndVerification(string, locatorText);
		}
	}

	@Then("User verifies after clicking on {string} doughtnut chart segment does not navigates to dashboard")
	public void user_verifies_after_clicking_on_doughtnut_chart_segment_does_not_navigates_to_dashboard(String string) {
		dashboardpageobjects.DrilldownremovedVerification(string);
	}

	@Then("User see {string} label for {string} color {int} in number")
	public void user_see_label_for_color_in_number(String string, String string2, Integer int1) {
		dashboardpageobjects.LebelsOfdoughtnutCharts(string, string2, int1);
	}

	@Then("User see {string} pie chart label for {string} color {int} in number")
	public void user_see_pie_chart_label_for_color_in_number(String string, String string2, Integer int1) {
		dashboardpageobjects.LebelsOfPieCharts(string, string2, int1);
	}

	@Then("User double clicks on {string} field {string} in Pivot input[{int}]")
	public void user_double_clicks_on_field_in_pivot_input(String string, String string2, Integer int1) {
		dashboardpageobjects.clickonPivotSummerizeByInput(int1);
	}

	@Then("I click on {string} {string}[{int}]")
	public void i_click_on(String string, String string2, Integer int1) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		String[] splitText2 = string2.split("=");
		String locator2 = splitText2[0];
		String locatorText2 = splitText2[1];
		if (locator.equals("VT") && (locator2.equals("DI"))) {
			dashboardpageobjects.deleteconfiguration(locatorText, locatorText2, int1);
		}
	}

	@Given("I enter {string} as {string} in input field")
	public void i_enter_as_in_input_field(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("PH")) {
			dashboardpageobjects.sendKeysforPivotfilterValue(locatorText, string2);
		}
	}

//Pie Chart
	@Then("I click on {string} from configuration")
	public void i_click_on_from_configuration(String string) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.clickOnOptionsInConfiguration(locatorText);
		}
	}

	@Then("I click on {string} dropdown of Choose form")
	public void i_click_on_dropdown_of_choose_form(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.clickOnDropdownInDataPoints(locatorText);
		}
	}

	@Then("I click on {string} comman for widget")
	public void i_click_on_comman_for_widget(String string) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.clickonAdvanceFilter(locatorText);
		}
	}

	@Then("User see the PieChart chart division are {int}")
	public void user_see_the_pie_chart_chart_division_are(Integer int1) {
		dashboardpageobjects.chartdivision(int1);
	}

	@Then("User verifies after clicking on {string} PieChart chart segment does not navigates to dashboard")
	public void user_verifies_after_clicking_on_pie_chart_chart_segment_does_not_navigates_to_dashboard(String string) {
		dashboardpageobjects.DrilldownremovedVerification(string);
	}

	@Then("User mouse hover on pie chart and see {string} tooltip text")
	public void user_mouse_hover_on_pie_chart_and_see_tooltip_text(String string) {
		dashboardpageobjects.TooltipMouseHoverVerification(string);
	}

	@Then("I see {string} column {string} added submission")
	public void i_see_column_added_submission(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		String[] splitText2 = string2.split("=");
		String locator2 = splitText2[0];
		String locatorText2 = splitText2[1];
		if (locator.equals("VT") && (locator2.equals("VT"))) {
			dashboardpageobjects.verificationOfDataWithDatabase(locatorText, locatorText2);
		}
	}

	// Stress Test

	@When("I submit all the submission")
	public void i_submit_all_the_submission() throws Exception {
		for (int i = 0; i <= 200; i++) {
			globalPageObjects.enterTextByLabelTextAreawithoutEnterPress("Text Edit-" + i, "Submission :" + i);
		}
	}

// formEntryforDateFilter
	@When("I submit all the taxi booking submission")
	public void i_submit_all_the_taxi_booking_submission() {
		globalPageObjects.clickOnElementByLabelInputIndex("Taxi Booking Date", 2);

	}

//KPI 

	@Then("I see the KPI {string} amd Count is {string}")
	public void i_see_the_kpi_amd_count_is(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		String[] splitText2 = string2.split("=");
		String locator2 = splitText2[0];
		String locatorText2 = splitText2[1];
		if (locator.equals("VT") && (locator2.equals("VT"))) {
			dashboardpageobjects.KPIchartVisibleText(locatorText, locatorText2);
		}
	}
//Dashboard Filters

	@Then("I see in column {string} date is only TODAY's date")
	public void i_see_in_column_date_is_only_today_s_date(String string) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardPage.DateFilterVerificationToday(locatorText);
		}
	}

	@Then("I see in column {string} date is only {int} past days")
	public void i_see_in_column_date_is_only_past_days(String string, Integer int1) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardPage.DateFilterVerificationLast7Days(locatorText, int1);
		}
	}

//Zapp Permission

	@Given("I enter {string} as {string} zapp name")
	public void i_enter_as_zapp_name(String string, String string2) {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("PH")) {
			dashboardpageobjects.ZappName(locatorText, string2 + getDbname());
			TestBase.writeResponse("Entered Zapp Name :" + dbname);
		}
	}

	@Given("I click on {string} of Zapp Permission")
	public void i_click_on_of_zapp_permission(String string) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("LABEL")) {
			dashboardpageobjects.ZappEditPermissionClick(locatorText);
		}

	}

	@Given("I enter {string} as {string} of zapp permission")
	public void i_enter_as_of_zapp_permission(String string, String string2) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("LABEL")) {
			dashboardpageobjects.enterZappPermissionUser(locatorText, string2);
		}
	}

	@Then("Created Zapp {string} visible for user in zapp list")
	public void created_zapp_visible_for_user_in_zapp_list(String string) throws InterruptedException {
		dashboardpageobjects.ZappVisibleInList(string);

	}

	@Then("Created Zapp {string} not visible for user in zapp list")
	public void created_zapp_not_visible_for_user_in_zapp_list(String string) {
		dashboardpageobjects.ZappNOTVisibleInList(string);
	}

	@Then("I click on {string} of created Zapp")
	public void i_click_on_of_created_zapp(String string) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("VT")) {
			dashboardpageobjects.ClickOnExpandButtonOfZapp(locatorText);
		}
	}

	@Then("I click on new created Zapp")
	public void i_click_on_new_created_zapp() throws InterruptedException {
		dashboardpageobjects.clickonNewZapp();
	}

	@Then("I click on {string} of  dashboard filter")
	public void i_click_on_of_dashboard_filter(String string) throws InterruptedException {
		String[] splitText = string.split("=");
		String locator = splitText[0];
		String locatorText = splitText[1];
		if (locator.equals("ID")) {
			dashboardpageobjects.clickonDataTableFilterBYID(locatorText);
		}
	}
	
	@Then("I click on {int} slot of calendar")
	public void i_click_on_slot_of_calendar(Integer int1) throws InterruptedException {
		dashboardpageobjects.clickOnSlotandVerifiesTheDateTimeMonthView(int1);
	}

	@Given("I click on {int} slot of Day view of calendar")
	public void i_click_on_slot_of_day_view_of_calendar(Integer int1) throws InterruptedException {
		dashboardpageobjects.clickOnSlotOfDayViewOfCalendar(int1);
	}

	@Given("I click on {int} slot of Week view of calendar")
	public void i_click_on_slot_of_week_view_of_calendar(Integer int1) throws InterruptedException {
		dashboardpageobjects.clickOnSlotOfWeekViewOfCalendar(int1);
	}
	@Given("I click on {int} slot of Timeline view of calendar")
	public void i_click_on_slot_of_timeline_view_of_calendar(Integer int1) throws InterruptedException {
		dashboardpageobjects.clickOnSlotOfTimelineViewOfCalendar(int1);
	}

}
