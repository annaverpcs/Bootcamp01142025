# Bug report JAN-672
@medicenter
Feature: Testing Medi_Center Rustam R
 # As Administrator inputs wrong appointment date and try to change it to date
 # which starts with "0" the application hangs

  Scenario: Test Add appointment as an Administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//button[contains(text(),'Login')]" to be present
    Then I wait for element with xpath "//button[contains(text(),'Create account')]" to be present
    And I click on element with xpath "//button[contains(text(),'Login')]"
    Then I click on element with xpath "//input[@id='email']"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I should see page title as "Medicenter"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@id='radix-:r6:-trigger-appointments']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    And I click on element with xpath "//button[text()= 'day']"
    And I click on element with xpath "//button[text()='Add appointment']"
    Then I type "R R" into element with xpath "//input[@id='user_name']"
    Then I type "test" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    And I click on element with xpath "//option[@value='fe1aa9d7-fcbd-40a5-bb90-b7279df2562b']"
    Then I wait for 3 sec
    And I type "02/12/2025" into element with xpath "//input[@name='date']"
    And I wait for 3 sec
    And I type "02/13/2025" into element with xpath "//input[@name='date']"

    And I wait for 3 sec
    Then I take screenshot










    








