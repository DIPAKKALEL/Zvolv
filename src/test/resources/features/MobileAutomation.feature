@tag
Feature: Mobile Automation
  I want to use this template for my Mobile feature file
	
  @Appium
  Scenario: Application apk test on android 
  Given I click on android app "ID=com.google.android.calculator:id/digit_8"
	And I click on android app "ID=com.google.android.calculator:id/op_add"
	And I click on android app "ID=com.google.android.calculator:id/digit_2"
	When I click on android app "ID=com.google.android.calculator:id/eq"
#	Then I see "10" as a result in "ID=com.google.android.calculator:id/result_preview"