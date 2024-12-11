package stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.RestAPIPageObject;


public class RestAPIAutomationStepDefs {
	RestAPIPageObject apipageobjects = new RestAPIPageObject();
	
	
	@Given("I set the base URI to {string}")
	public void i_set_the_base_uri_to(String string) {
		apipageobjects.APItoTest(string);
	}
	@When("I send Get request")
	public void i_send_get_request() {
		apipageobjects.sendGetRequest();
	}
	@Then("I receive a {int} status code")
	public void i_receive_a_status_code(Integer int1) {
		apipageobjects.verifyStatusCode(int1);
	}
	@Then("I receive a response {string}")
	public void i_receive_a_response(String string) {
		apipageobjects.verifytheResponse(string);
	}
	@When("I send Post request to {string} with valid credentials")
	public void i_send_post_request_to_with_valid_credentials(String string) throws Exception {
		
	}
	@Then("I verify the json value {string}")
	public void i_verify_the_json_value(String string) {
	   String[] keyvalue = string.split(":");
	   String key=keyvalue[0];
	   String value = keyvalue[1];
	   apipageobjects.jsonBodyKeyValueVerification(key, value);
	   
	}
	
	@When("I send Post request to:")
	public void i_send_post_request_to(String docString) throws Exception {
		apipageobjects.postRequest(docString);
	}
	

@Then("I send the Post request using response previous API response :")
public void i_send_the_post_request_using_response_previous_api_response(String docString) {
	apipageobjects.corelationOfAPI(docString);
}
	
	
	
}
