# Author: Artem P.
# Jira ID# 123
@medicenter
Feature: User story #5 - Make an appointment as admin. Artem P.


  # https://medicenter-qa2.vercel.app/
  Scenario: User able to sign in as administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then element with xpath "//h1[contains(text(), 'Mary Poppins')]" should be displayed

  Scenario: Administrator able to open an "Appointments" tab
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"

  Scenario: The pop up window "New appointment" appears after clicked one on the button "Add appointment"
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"
    And I click on element with xpath "//span[contains(text(),'person_add')]"

  Scenario: The new appointment is successfully created with valid data and manually typed date
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I wait for 1 sec
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"
    And I wait for 1 sec
    And I click on element with xpath "//span[contains(text(),'person_add')]"
    And I wait for 1 sec
    Then element with xpath "//span[contains(text(),'New appointment')]" should be displayed
    And I wait for 1 sec
    Then I type "Mr.Webber" into element with xpath "//input[@id='user_name']"
    Then I type "Mr.Webber cheking" into element with xpath "//textarea[@id='note']"
    And I wait for 1 sec
    Then I click on element with xpath "//select[@name='employee_id']//option[@value='fe1aa9d7-fcbd-40a5-bb90-b7279df2562b']"
    And I wait for 1 sec
    Then I type "02/18/2025" into element with xpath "//input[@id='date']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'12:00 PM')]"
    And I wait for 1 sec
    And I click on element with xpath "//button[contains(text(),'Save')]"
    And I wait for 1 sec
    Then I wait for element with xpath "div[contains(text(),'Mr.Webber')]" to be present
    And I click on element with xpath "div[contains(text(),'Mr.Webber')]"
    Then element with xpath "//span[contains(text(),'Appointment summary')]" should be displayed
    And I wait for element with xpath "div[contains(text(),'Mr.Webber')]" to be present
    And element with xpath "div[contains(text(),'Mr.Webber')]" should be displayed
    And element with xpath "//dd[contains(text(),'2/17/2025, 12:00 PM')]" should be displayed
    And I wait for 1 sec
    Then element with xpath "div[contains(text(),'Mr.Webber')]" should not be present






