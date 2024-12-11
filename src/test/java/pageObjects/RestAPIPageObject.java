package pageObjects;

import static org.junit.Assert.assertEquals;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;
import testbase.TestBase;
import io.restassured.path.json.JsonPath;

import static org.hamcrest.Matchers.*;

public class RestAPIPageObject {
	String corelationResponse;
	public Response RESPONSE;
	TestBase testbase = new TestBase();

	public void APItoTest(String uri) {
		RestAssured.baseURI = uri;
	}

	public void sendGetRequest() {
		RESPONSE = RestAssured.get();
	}

	public void verifyStatusCode(int expectedstatuscode) {
		assertEquals(expectedstatuscode, RESPONSE.getStatusCode());
	}

	public void verifytheResponse(String expectedResponse) {
		RestAssured.when().get("?page=2").then().statusCode(200).body("data[0].first_name", equalTo(expectedResponse));
		corelationResponse = expectedResponse;
	}

	public void postRequest(String updateFirstName) throws Exception {
		RESPONSE = RestAssured.given().contentType("application/json").body(updateFirstName).when().post("/users")
				.then().extract().response();
		Thread.sleep(2000);
		assertEquals(201, RESPONSE.getStatusCode());
		String token = RESPONSE.jsonPath().getString("name");
		RESPONSE.then().body("name", equalTo("John Doe"));
		RESPONSE.then().body("username", equalTo("john_doe"));
		RESPONSE.then().body("email", equalTo("john.doe@example.com"));
		RESPONSE.then().body("password", equalTo("password123"));
		testbase.writeResponse("User received from api is :" + token);
	}

	public void jsonBodyKeyValueVerification(String key, String value) {
		RESPONSE.then().body(key, equalTo(value));
		testbase.writeResponse("Value received from key -" + key + "- is :" + RESPONSE.jsonPath().getString(key));
	}

	public void corelationOfAPI(String docstring) {
		RESPONSE = RestAssured.given().contentType("application/json").body(docstring).when().post("/users")
				.then().extract().response();
		String Name = RESPONSE.jsonPath().getString("name");
		testbase.writeResponse("API RESPONSE :" + Name);
		String updatedocstring = docstring.replace(Name, corelationResponse);
		testbase.writeResponse("Updated doc String :" + updatedocstring);
		RESPONSE = RestAssured.given().contentType("application/json").body(updatedocstring).when().post("/users")
				.then().extract().response();
		String Updatedname = RESPONSE.jsonPath().getString("name");
		assertEquals(Updatedname,corelationResponse);
		assertEquals(201,RESPONSE.getStatusCode());
		testbase.writeResponse("Corelation API updated Name Response :" + Updatedname);
	}

}
