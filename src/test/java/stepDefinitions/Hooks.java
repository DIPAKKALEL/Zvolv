package stepDefinitions;

import javax.mail.MessagingException;
import com.github.dockerjava.api.model.Config;
import Enums.Browsers;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import testbase.TestBase;

public class Hooks {
	TestBase testBase;
	int count = 0;
	String browser = null;
	String mobile = null;
	String api = null;
	String database = null;

	@Before
	public void initializeTest(Scenario scenario) throws Exception {
		String platform = System.getProperty("platform");
		System.out.println("Platform is :" + platform);
		System.out.println("Hooks at Before Method Executed");
		testBase = new TestBase();
		if (platform.equalsIgnoreCase("web")) {
			// Set Scenario as Global Variable
			testBase.currentScenario(scenario);

			String environment = System.getProperty("environment");

			// Load Configuration File Based on Execution Environment
			if (environment != null && !environment.isEmpty()) {
				testBase.loadConfigReader(environment);
			} else {
				testBase.loadConfigReader("dev");// dev //staging //release //production
			}
			// Execute Scripts on Browser based on System variables
			browser = System.getProperty("browser");
			mobile = System.getProperty("mobile");
			api = System.getProperty("api");
			database = System.getProperty("database");
			System.out.println("browser=" + browser);
			System.out.println("mobile=" + mobile);
			System.out.println("api=" + api);
			System.out.println("database=" + database);
			if (browser != null && mobile == null && api == null && database == null) {
				// testBase.startScenarioVideoRecording(scenario.getName());
				testBase.selectBrowser(browser.toUpperCase());
				testBase.maximizeWindow();
			} else if (browser == null && api == null && mobile != null && database == null) {
				// testBase.startScenarioVideoRecording(scenario.getName());
				testBase.selectBrowser(mobile.toUpperCase());
			} else if (browser == null && api != null && mobile == null && database == null) {
				// testBase.selectBrowser(mobile.toUpperCase());
				System.out.println("api=" + api);
			} else if (browser == null && api == null && mobile == null && database != null) {
				testBase.getDBConnection();
				System.out.println("Connected To Data Base Successfully...");
				System.out.println("testBase.getDBConnection()" + testBase.getDBConnection());
			} else {
				testBase.selectBrowser(Browsers.CHROME.name());
				 testBase.maximizeWindow();
				 System.out.println("Platform is Web  webDriver Launched successfully");
			}

			if (api == null & database == null) {
				testBase.setImplecitWait();
			}
		} else if (platform.equalsIgnoreCase("mobile")) {
			testBase.selectBrowser(Browsers.ANDROID.name());
			System.out.println("Platform is Mobile Android Driver Launched successfully");
		}
		// testBase.driver.get(testBase.CONFIG.getProperty("TEST_URL"));
		// testBase.startScenarioVideoRecording(scenario.getName());
	}

	@After
	public void afterScenario(Scenario scenario) {
		String platform = System.getProperty("platform");
		if (platform.equalsIgnoreCase("web")) {
			testBase.captureScreenShot(scenario);
			TestBase.driver.manage().deleteAllCookies();
			TestBase.driver.quit();
			System.out.println("quit the browser -- Webdriver");
		} else if (platform.equalsIgnoreCase("mobile")) {
			testBase.driver1.quit();
			System.out.println("quit the browser -- AndroidDriver");
		}

//		TestBase.driver.close();
//		TestBase.driver.quit();
//		System.out.println("quit the browser");
		// testBase.stopScenarioVideoRecording();
		/*
		 * if(browser != null && mobile == null && api == null && database == null) {
		 * //testBase.createIssueInJira(scenario);
		 * //testBase.captureScreenShot(scenario);
		 * //TestBase.driver.manage().deleteAllCookies(); TestBase.driver.close();
		 * TestBase.driver.quit(); } else if(browser == null && api == null && mobile !=
		 * null && database == null) { //testBase.createIssueInJira(scenario);
		 * testBase.captureScreenShot(scenario); TestBase.driver.quit(); } else if
		 * (browser == null && api == null && mobile == null && database != null) {
		 * testBase.closeDBConnection();
		 * System.out.println("Data Base Connection Closed..."); } else if (browser ==
		 * null && api != null && mobile == null && database == null) {
		 * System.out.println("API Connection Closed..."); }
		 */

	}

//		if (scenario.isFailed()) {
//			testBase.captureScreenShot(scenario);
//			String developerTag = scenario.getSourceTagNames().stream()
//					.filter(tag -> tag.startsWith("@developer:"))
//					.findFirst()
//					.orElse(null);
//
//			if (developerTag != null) {
//				String developerEmail = extractEmailFromTag(developerTag);
//				sendEmail(developerEmail, "Scenario " + scenario.getName() + " failed!",
//						"Hi Greeting for the day!\r\n" +
//								"Please Find The Below Current Automation Execution Report For Your Reference.\r\n" +
//								"                   \r\n" +
//								"                   \r\n" +
//								"Note: This Email Generated by Automation Script. Please Do Not Reply!\r\n" +
//								"                   \r\n" +
//								"Report Link: <a href=\"https://reports.cucumber.io/report-collections/66a2738c-52f0-4d94-8a8d-4368d3376e97\">Click here to view report</a>\r\n" +
//								"                   \r\n" +
//								"Thanks & Regards,\r\n" +
//								"DragonFlyTest,\r\n" +
//								"A Software Testing Company,\r\n" +
//								"Accredited With The ISO 9001:2015 Certification.              "
//						);
//			}
//
//		}
//	}
//
//	private String extractEmailFromTag(String tag) {
//		return tag.replace("@developer:rohit", "saikumar.pulagorla") + "@dragonflytest.com";
//	}
//
//	private void sendEmail(String to, String subject, String body) {
//		// SMTP server configuration
//		String host = "smtp.gmail.com"; 
//		String username = "saikumaroffice786@gmail.com";
//		String password = "zemb bszc ysft eqse"; 
//
//		try {
//			TestBase.sendMail(host, username, password, to, subject, body);
//			TestBase.driver.manage().deleteAllCookies();
//			TestBase.driver.close();
//			TestBase.driver.quit();
//			System.out.println("quit the browser");
//		} catch (MessagingException e) {
//			// Handle exception
//			e.printStackTrace();
//		}

	// public void closeBrowser(Scenario scenario) throws Exception {
	//
	// TestBase.driver.manage().deleteAllCookies();
	// TestBase.driver.close();
	// TestBase.driver.quit();
	// System.out.println("quit the browser");
	//
	// }

	// TestBase.driver.close();
	// TestBase.driver.quit();

	// testBase.stopScenarioVideoRecording();
	/*
	 * if(browser != null && mobile == null && api == null && database == null) {
	 * //testBase.createIssueInJira(scenario);
	 * //testBase.captureScreenShot(scenario);
	 * //TestBase.driver.manage().deleteAllCookies(); TestBase.driver.close();
	 * TestBase.driver.quit(); } else if(browser == null && api == null && mobile !=
	 * null && database == null) { //testBase.createIssueInJira(scenario);
	 * testBase.captureScreenShot(scenario); TestBase.driver.quit(); } else if
	 * (browser == null && api == null && mobile == null && database != null) {
	 * testBase.closeDBConnection();
	 * System.out.println("Data Base Connection Closed..."); } else if (browser ==
	 * null && api != null && mobile == null && database == null) {
	 * System.out.println("API Connection Closed..."); }
	 */

	// TestBase.driver.manage().deleteAllCookies();
	// TestBase.driver.close();
	// TestBase.driver.quit();
	// System.out.println("quit the browser");

	// testBase.stopScenarioVideoRecording();
	/*
	 * if(browser != null && mobile == null && api == null && database == null) {
	 * //testBase.createIssueInJira(scenario);
	 * //testBase.captureScreenShot(scenario);
	 * //TestBase.driver.manage().deleteAllCookies(); TestBase.driver.close();
	 * TestBase.driver.quit(); } else if(browser == null && api == null && mobile !=
	 * null && database == null) { //testBase.createIssueInJira(scenario);
	 * testBase.captureScreenShot(scenario); TestBase.driver.quit(); } else if
	 * (browser == null && api == null && mobile == null && database != null) {
	 * testBase.closeDBConnection();
	 * System.out.println("Data Base Connection Closed..."); } else if (browser ==
	 * null && api != null && mobile == null && database == null) {
	 * System.out.println("API Connection Closed..."); }
	 */

}

//}
