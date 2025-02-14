#author: Anna V
#Merdical Center scenarios
@medicenter
Feature: Medical Center Test scenarios

  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
    Then I clear element with xpath "//input[@id='email']"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
      #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    Then element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed
 @regression
  Scenario: Create and Delete an Appointment from Daily Calendar
    And I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"
    Then I click on element with xpath "//button[contains(text(),'Add appointment')]"
    And I wait for element with xpath "//span[contains(text(),'New appointment')]" to be present
    Then I type "Anna12345" into element with xpath "//input[@id='user_name']"
    And I type "AnnaV unique appointment" into element with xpath "//textarea[@id='note']"
    And I wait for 1 sec
    #And I click on element with xpath "//select[@name='employee_id']/..//option[5]"
    And I click on element with xpath "//select[@name='employee_id']/..//option[@value='fe1aa9d7-fcbd-40a5-bb90-b7279df2562b']"
    Then I type "02/19/2025" into element with xpath " //input[@id='date']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'09:00 AM')]"
    And I wait for 1 sec
    And I click on element with xpath "//button[contains(text(),'Save')]"
    #Verify that appointment is added
    Then I wait for element with xpath "//div[contains(text(),'Anna12345')]" to be present
    Then I click on element with xpath "//div[contains(text(),'Anna12345')]"
    #confirmation window
    Then element with xpath "//span[contains(text(),'Appointment summary')]" should be displayed
    And I wait for element with xpath "//dd[contains(text(),'Anna12345')]" to be present
    And element with xpath "//dd[contains(text(),'Anna12345')]" should be displayed
    #date verification
    And element with xpath "//dd[contains(text(),'2/18/2025, 9:00:00 AM')]" should be displayed
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    And I wait for 1 sec
    #verification that the appointment is cancelled
    Then element with xpath "//div[contains(text(),'Anna12345')]" should not be present