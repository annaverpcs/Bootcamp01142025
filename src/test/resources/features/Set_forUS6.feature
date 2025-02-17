#  Author: Tatyana Aipova
#  Jira
@medicenter
Feature: Test for  valid login (MediCenter) SerhiiS
  Scenario: Login for https://medicenter-qa2.vercel.app
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    And I wait for 1 sec
    Then element with xpath "//label[@for='email']" should contain text "Email address"
    And I type "patientpcs1@gmail.com" into element with xpath "//input[@id='email']"
    Then element with xpath "//label[@for='password']" should contain text "Your Password"
    And I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then element with xpath "//h1[contains(text(),'James Johnson')]" should contain text "James Johnson"
    Then I click on element with xpath "//button[contains(text(), 'Make an appointment')]"
    Then I wait for 1 sec
    Then element with xpath "//span[contains(text(),'Make an appointment')]" should contain text "Make an appointment"
    Then I click on element with xpath "//select[@name='employee_id']"
    Then I click on element with xpath "//option[contains(., 'Bob') and contains(., 'Smith')]"
    Then I type "02/19/2025" into element with xpath "//input[@type='date']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(), '09:00 AM')]"
    Then I click on element with xpath "//button[contains(text(), 'Save')]"
    Then I wait for element with xpath "//h3[contains(text(),'Tuesday 18 February 2025, 09:00')]" to be present
    Then I click on element with xpath "//span[contains(text(), 'update')]"
    Then I wait for element with xpath "//button[contains(text(),'Cancel appointment')]" to be present
    And I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    Then I wait for 1 sec
    And element with xpath "//h3[contains(text(),'Tuesday 18 February 2025, 09:00')]" should not be present