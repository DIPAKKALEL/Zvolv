package testbase;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Calendar;
import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.configuration.ConfigurationException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.safari.SafariDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import Enums.Browsers;
import Enums.OS;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.cucumber.java.Scenario;
import io.github.bonigarcia.wdm.WebDriverManager;
import net.rcarz.jiraclient.JiraException;
import utilities.JiraUtil;
import utilities.ScreenRecorderUtil;
import utilities.WaitUtil;

public class TestBase {

	public static RemoteWebDriver driver;
	public static Properties CONFIG;
	public static Scenario executionScenario;
	public File fs;
	public static Connection connection = null;
	public static ResultSet resultSet = null;
	public static Statement statement = null;
	public static int updateQuery = 0;
	String dbTimeStamp;
	public static String dbname;
	public static String dashboardname;
	public static String demo;
	public static String fieldName;
	public static String StressDB;
	public static String randomnumber1;
	public static String MonthSlotClick;
	public static String DaySlotClick;
	public static String WeekSlotClick;
	public static String TimelineSlotClick;
	public static AppiumDriverLocalService appiumService;
	public static AndroidDriver driver1;

//	public static void main(String[] args) throws Exception {
//		TestBase testbase = new TestBase();
//		testbase.selectBrowser(Browsers.ANDROID.name());
//	}

	public WebDriver selectBrowser(String browser) throws MalformedURLException, InterruptedException {
		if (System.getProperty("os.name").toLowerCase().contains(OS.WINDOW.name().toLowerCase())) {
			if (browser.equalsIgnoreCase(Browsers.CHROME.name())) {
				// System.setProperty("webdriver.chrome.driver",System.getProperty("user.dir")+"/src/test/resources/drivers/chromedriver_windows_118/chromedriver.exe");
				// System.getProperty("user.dir") +
				// "/src/test/resources/drivers/chromedriver.exe");
				// System.setProperty("webdriver.chrome.driver","D:\\Selenium\\chromedriver-win64\\chromedriver.exe");
				ChromeOptions option = new ChromeOptions();
				option.addArguments("--remote-allow-origins=*");
				option.addArguments("allow-file-access-from-files");
				option.addArguments("use-fake-device-for-media-stream");
				option.addArguments("use-fake-ui-for-media-stream");
				option.addArguments("--disable-dev-shm-usage");// dipak,
				WebDriverManager.chromedriver().setup();
				driver = new ChromeDriver(option);
			} else if (browser.equalsIgnoreCase(Browsers.FIREFOX.name())) {
				WebDriverManager.firefoxdriver().setup();
				driver = new FirefoxDriver();
			} else if (browser.equalsIgnoreCase(Browsers.ANDROID.name())) {
				appiumService = AppiumDriverLocalService.buildDefaultService();
				Thread.sleep(3000);
		        appiumService.start();
//				
				DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
				// AndroidOptions options = new AndroidOptions();
//				desiredCapabilities.setCapability("udid", "c6fb5143");
				desiredCapabilities.setCapability("devicename", "XiaomiM2101K7AI");
				desiredCapabilities.setCapability("platformName", "Android");
			//	desiredCapabilities.setCapability("platformVersion", "12.0");
				desiredCapabilities.setCapability("automationName", "uiautomator2");
			//	desiredCapabilities.setCapability("appium:app", "C:\\Users\\Deep\\Desktop\\apkFiles\\Calculator.apk");
			    desiredCapabilities.setCapability("appPackage", "com.google.android.calculator");
				desiredCapabilities.setCapability("appActivity", "com.android.calculator2.Calculator");
//				desiredCapabilities.setCapability("appium:app",
//						"C:\\Users\\Deep\\Downloads\\Android UI Programming_1.0_APKPure.apk");
				// desiredCapabilities.setCapability(MobileCapabilityType.PLATFORM_VERSION,
				// "12");
				// desiredCapabilities.setCapability(MobileCapabilityType.DEVICE_NAME,
				// "emulator-5554");
				// desiredCapabilities.setCapability(MobileCapabilityType.DEVICE_NAME,
				// "emulator-5554");

				// desiredCapabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME,
				// "UiAutomator2");
				// desiredCapabilities.setCapability(MobileCapabilityType.APP,
				// "/Users/Deep/Downloads/Android UI Programming_1.0_APKPure.apk");
				// desiredCapabilities.setCapability(MobileCapabilityType.NEW_COMMAND_TIMEOUT,
				// 180);
				URL url = URI.create("http://127.0.0.1:4723/").toURL();
			    driver1 = new AndroidDriver(url, desiredCapabilities);
				String sessionId = driver1.getSessionId().toString();
				System.out.println("sessionId===============" + sessionId);

			} else {
				// System.setProperty("webdriver.chrome.driver",
				// System.getProperty("user.dir") +
				// "src/test/resources/drivers/chromedriver_windows_118/chromedriver.exe");
				// System.setProperty("webdriver.chrome.driver","D:\\Selenium\\chromedriver-win64\\chromedriver.exe");
				System.out.println("****************************HEADLESS BROWSER EXECUTION STARTED");
				WebDriverManager.chromedriver().setup();
				ChromeOptions option = new ChromeOptions();
				option.addArguments("--remote-allow-origins=*");
				// option.setHeadless(true);
				option.addArguments("--headless");
				option.addArguments("--disable-gpu");
				option.addArguments("--no-sandbox");
				option.addArguments("--disable-dev-shm-usage");
				option.addArguments("--disable-extensions");
				option.addArguments("start-maximized");
				option.addArguments("--window-size=1920,1080");
				// option.addArguments("--proxy-server='direct://'");
				// option.addArguments("--proxy-bypass-list=*");

				// option.addArguments("--ignore-certificate-errors");

				// option.setBinary("/usr/bin");
				driver = new ChromeDriver(option);
				System.out.println("Printer Driver=" + driver);
				System.out.println("****************************HEADLESS BROWSER Launched Successfully");

				// ChromeOptions options = new ChromeOptions();
				// options.setHeadless(true);
				// driver = new ChromeDriver(options);
			}

		} else if (System.getProperty("os.name").toLowerCase().contains(OS.MAC.name().toLowerCase())) {
			if (browser.equalsIgnoreCase(Browsers.CHROME.name())) {
				// System.setProperty("webdriver.chrome.driver",
				// System.getProperty("user.dir") + "/src/test/resources/drivers/chromedriver");
				ChromeOptions option = new ChromeOptions();
				option.addArguments("--remote-allow-origins=*");
				option.addArguments("allow-file-access-from-files");
				option.addArguments("use-fake-device-for-media-stream");
				option.addArguments("use-fake-ui-for-media-stream");
				WebDriverManager.chromedriver().setup();
				driver = new ChromeDriver(option);
			} else if (browser.equalsIgnoreCase(Browsers.FIREFOX.name())) {
				System.setProperty("webdriver.gecko.driver",
						System.getProperty("user.dir") + "/src/test/resources/drivers/geckodriver/geckodriver");
				driver = new FirefoxDriver();
			} else if (browser.equalsIgnoreCase(Browsers.HEADLESS.name())) {
				System.setProperty("webdriver.chrome.driver",
						System.getProperty("user.dir") + "/src/test/resources/drivers/chromedriver");
				ChromeOptions options = new ChromeOptions();
				// options.setHeadless(true);
				driver = new ChromeDriver(options);
			} else if (browser.equalsIgnoreCase(Browsers.SAFARI.name())) {
				driver = new SafariDriver();
			} else if (browser.equalsIgnoreCase("remote-chrome")) {
				ChromeOptions options = new ChromeOptions();
				options.addArguments("--always-authorize-plugins");
				options.addArguments("enable-automation");
				options.addArguments("--no-sandbox");
				options.addArguments("--disable-extensions");
				options.addArguments("--dns-prefetch-disable");
				options.addArguments("--disable-gpu");
				options.setPageLoadStrategy(PageLoadStrategy.NORMAL);
				driver = new RemoteWebDriver(new URL("http://localhost:4444/wd/hub"), options);
//			} else if (browser.equalsIgnoreCase(Browsers.ANDROID.name())) {
//				DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
//				desiredCapabilities.setCapability(MobileCapabilityType.PLATFORM_VERSION, "7");
//				desiredCapabilities.setCapability(MobileCapabilityType.DEVICE_NAME, "0824da1a9804");
//				desiredCapabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, "UiAutomator2");
//				// desiredCapabilities.setCapability(MobileCapabilityType.APP,
//				// "/Users/mohansridhar/Downloads/VigoClinic-v2.10-QA.apk");
//				desiredCapabilities.setCapability(MobileCapabilityType.BROWSER_NAME, "chrome");
//				desiredCapabilities.setCapability(MobileCapabilityType.NEW_COMMAND_TIMEOUT, 300);
//
//				URL url = new URL("http://127.0.0.1:4723/wd/hub");
//				driver = new AndroidDriver(url, desiredCapabilities);
//				driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(300));
//				// driver.findElement(By.xpath("(//*[contains(@text,'Username')])[1]")).click();
//				String sessionId = driver.getSessionId().toString();
//			}
		} else {
			// System.setProperty("webdriver.chrome.driver",
			// System.getProperty("user.dir") +
			// "src/test/resources/drivers/chromedriver_windows_118/chromedriver-linux64");

			System.out.println("****************************HEADLESS BROWSER EXECUTION STARTED");
			// System.setProperty("java.awt.headless", "false");
			WebDriverManager.chromedriver().setup();
			ChromeOptions option = new ChromeOptions();
			option.addArguments("--remote-allow-origins=*");
			option.addArguments("--headless");
			option.addArguments("--disable-gpu");
			option.addArguments("--no-sandbox");
			option.addArguments("--disable-dev-shm-usage");
			option.addArguments("--disable-extensions");
			option.addArguments("--dns-prefetch-disable");
			option.addArguments("start-maximized");
			option.addArguments("--window-size=1920,1080");
			// option.addArguments("--disable-dev-shm-usage");
			// option.addArguments("--proxy-server='direct://'");
			// option.addArguments("--proxy-bypass-list=*");
			// option.addArguments("--headless");
			// option.addArguments("--ignore-certificate-errors");
			// option.setBinary("/usr/bin");
			driver = new ChromeDriver(option);
			System.out.println("Printer Driver=" + driver);
			System.out.println("****************************HEADLESS BROWSER Launched Successfully");
			// ChromeOptions options = new ChromeOptions();
			// options.setHeadless(true);
			// driver = new ChromeDriver(options);
		}
		}
		return driver;
	}

	public void currentScenario(Scenario scenario) {
		executionScenario = scenario;
	}

	public static void writeResponse(String textToWrite) {
		executionScenario.log(textToWrite);
	}

	public void maximizeWindow() {
		driver.manage().window().maximize();
	}

	public void minimizeWindow() {
		driver.manage().window().minimize();
	}

	public static String getDbname() {
		Random rand = new Random();
		int max = 99999, min = 9999;
		int randNumber = rand.nextInt(max - min + 1) + min;
		dbname = "dft-auto-" + Integer.toString(randNumber);
		return dbname;

	}

	public static String getDashBoardName() {
		Random rand = new Random();
		int max = 9999, min = 999;
		int randNumber = rand.nextInt(max - min + 1) + min;
		dashboardname = "DashBoard-" + Integer.toString(randNumber);
		return dashboardname;
	}

	public static String getFieldLabelName() {
		Random rand = new Random();
		int max = 9999, min = 999;
		int randNumber = rand.nextInt(max - min + 1) + min;
		fieldName = "dft-auto-" + Integer.toString(randNumber);
		return fieldName;
	}

	public static String StressTestBD() {
		Random rand = new Random();
		int max = 9999, min = 999;
		int randNumber = rand.nextInt(max - min + 1) + min;
		StressDB = "Stress Test " + Integer.toString(randNumber);
		return StressDB;
	}

	public void setImplecitWait() {
		String time = CONFIG.getProperty("IMPLICIT_WAIT");
		// driver.manage().timeouts().pageLoadTimeout(60, TimeUnit.SECONDS);
		// driver.manage().timeouts().setScriptTimeout(200000, TimeUnit.SECONDS);
	//	driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(Long.parseLong(time)));
	}

	public void captureScreenShot(Scenario scenario) {
		if (scenario.isFailed()) {
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

	public void loadConfigReader(String environment) throws IOException, ConfigurationException {
		// Expecting environment same as config file name. Ex: dev, demo, release
		fs = new File(
				System.getProperty("user.dir") + "/src/test/resources/config/" + environment + "_config.properties");
		CONFIG = new Properties();
		CONFIG.load(new FileReader(fs));
	}

	public void startScenarioVideoRecording(String scenarioName) throws Exception {
		ScreenRecorderUtil.startRecord(scenarioName);
	}

	public void stopScenarioVideoRecording() throws Exception {
		ScreenRecorderUtil.stopRecord();
	}

	public Connection getDBConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = CONFIG.getProperty("db_url");
		String user = CONFIG.getProperty("db_username");
		String password = CONFIG.getProperty("db_password");
		connection = DriverManager.getConnection(url, user, password);
		return connection;
	}

	public void closeDBConnection() throws SQLException {
		if (resultSet != null) {
			resultSet.close();
		}
		if (statement != null) {
			statement.close();
		}
		if (connection != null) {
			connection.close();
		}
	}

	public String getDBTimeStamp() throws SQLException {
		dbTimeStamp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(Calendar.getInstance().getTime());
		return dbTimeStamp;
	}

	public void createIssueInJira(Scenario scenario) throws JiraException {
		if (scenario.isFailed()) {
			try {
				byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
				String issueSummary = "Failed to add " + scenario.getName();
				String Description = "Description " + scenario.getName();
				String createIssueInJira = CONFIG.getProperty("Create_Issue_In_Jira");
				System.out.println("createIssueInJira=" + createIssueInJira);
				String JiraUrl = CONFIG.getProperty("JIRA_URL");
				String JiraEmail = CONFIG.getProperty("JIRA_EMAIL");
				String JiraToken = CONFIG.getProperty("JIRA_TOKEN");
				if (createIssueInJira.equalsIgnoreCase("YES")) {
					JiraUtil jiraUtil = new JiraUtil(JiraUrl, JiraEmail, JiraToken, "CUC");
					// Issue.SearchResult srs = jiraUtil.searchJiraTicket("summary ~"+issueSummary);
					// System.out.println("srs Total=="+srs.total);
					jiraUtil.createJiraTicket("Bug", issueSummary, Description);
				}

			} catch (ClassCastException cce) {
				cce.printStackTrace();
			}
		}
	}

//	rohit
	public static String getRandomEmail() {
		Random random = new Random();
		int max = 9999;
		int min = 1000;
		int randomNumber = random.nextInt(max - min + 1) + min;
		demo = "demo" + Integer.toString(randomNumber) + "@gmail.com";
		return demo;

	}

	public void javascriptexecutorClick(WebElement ele) {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click()", ele);
	}

	public static void sendMail(String host, String username, String password, String to, String subject, String body)
			throws MessagingException {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(body);

			Transport.send(message);
			System.out.println("Email sent successfully");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	public static String getRandomRoleName() {
		Random random = new Random();
		int max = 9999;
		int min = 1000;
		int randomNumber = random.nextInt(max - min + 1) + min;
		demo = "example" + Integer.toString(randomNumber);
		return demo;
	}

//dipak
	public static String randomsubmission1() {
		Random rand = new Random();
		int max = 100000, min = 1;
		int randNumber = rand.nextInt(max - min + 1) + min;
		randomnumber1 = Integer.toString(randNumber);
		return randomnumber1;
	}

	public static String randomsubmission2() {
		Random rand = new Random();
		int max = 10000, min = 1;
		int randNumber = rand.nextInt(max - min + 1) + min;
		randomnumber1 = Integer.toString(randNumber);
		return randomnumber1;
	}

	public static String randomMonthClick() {
		Random rand = new Random();
		int max = 42, min = 1;
		int randNumber = rand.nextInt(max - min + 1) + min;
		MonthSlotClick = Integer.toString(randNumber);
		return MonthSlotClick;
	}

	public static String randomDayClick() {
		Random rand = new Random();
		int max = 14, min = 1;
		int randNumber = rand.nextInt(max - min + 1) + min;
		DaySlotClick = Integer.toString(randNumber);
		return DaySlotClick;
	}

	public static String randomWeekClick() {
		Random rand = new Random();
		int max = 90, min = 1;
		int randNumber = rand.nextInt(max - min + 1) + min;
		WeekSlotClick = Integer.toString(randNumber);
		return WeekSlotClick;
	}

	public static String randomTimelineClick() {
		Random rand = new Random();
		int max = 15, min = 1;
		int randNumber = rand.nextInt(max - min + 1) + min;
		TimelineSlotClick = Integer.toString(randNumber);
		return TimelineSlotClick;
	}

}
