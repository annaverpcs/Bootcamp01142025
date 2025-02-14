#author: Anna V
#Merdical Center scenarios
@medicenter
Feature: Medical Center DD Scenarios using Selenium WebDriver methods

  Scenario Outline: Login DD test scenario
    Given AnnaV launch "Medicenter V2"
    Then AnnaV page title is "Medicenter"
    And AnnaV wait for "//h1[contains(text(),'Medical Center')]" text
    Then AnnaV click on "Login" button
    And I wait for 1 sec
    Then AnnaV type <sEmail> to "Email" textfield
    Then AnnaV type <sPassword> to "Password" textfield
    And AnnaV click on "Sign In" button
    Then I wait for element with xpath <sLoginNameXpath> to be present
    Then element with xpath <sLoginNameXpath> should contain text <sLoginName>
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed
    Examples:
      | sEmail                      |  sPassword   | sLoginNameXpath | sLoginName |
      | "administrator1@gmail.com" |  "abc123" | "//h1[contains(text(),'Mary Poppins')]"| "Mary Poppins" |
      | "administrator2@gmail.com" |  "abc123" | "//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" |
      | "patientpcs1@gmail.com" |  "abc123" | "//h1[contains(text(),'James Johnson')]"| "James Johnson" |
      | "patient2@gmail.com" |  "abc123" | "//h1[contains(text(),'James Johnson')]"| "James Johnson" |
      | "patient2@gmail.com" |  "abc123456" |  "//h1[contains(text(),'James Johnson')]"| "James Johnson" |
      | "invalidemail" |  "abc123" |  "//h1[contains(text(),'James Johnson')]"| "James Johnson" |
      | "" |  "" |  "//h1[contains(text(),'James Johnson')]"| "James Johnson" |


