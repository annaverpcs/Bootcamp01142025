# Author Rustam R
# Test case JAN-615 Test set-UserStory#5
@medicenter
Feature: Testing Medi Center Rustam R

  Background: Login as Administrator

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

  Scenario: Test Add appointment as an Administrator

    #User loges with valid credentials as administrator and makes sure that they are on the home page

#    Given I open url "https://medicenter-qa2.vercel.app/"
#    Then I should see page title as "Medicenter"
#    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
#    Then I wait for element with xpath "//button[contains(text(),'Login')]" to be present
#    Then I wait for element with xpath "//button[contains(text(),'Create account')]" to be present
#    And I click on element with xpath "//button[contains(text(),'Login')]"
#    Then I click on element with xpath "//input[@id='email']"
#    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
#    Then I type "abc123" into element with xpath "//input[@id='password']"
#    Then I click on element with xpath "//button[@type='submit']"
#    Then I should see page title as "Medicenter"

    # An administrator creates an appointment
    And I wait for 3 sec
    Then I click on element with xpath "//button[@id='radix-:r6:-trigger-appointments']"

    And I click on element with xpath "//button[text()= 'day']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"

    And I click on element with xpath "//button[text()='Add appointment']"
    Then I type "R R" into element with xpath "//input[@id='user_name']"
    Then I type "test" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    And I click on element with xpath "//select[@name='employee_id']/..//option[16]"
    Then I wait for 3 sec
    And I type "02/13/2025" into element with xpath "//input[@name='date']"
    And I wait for 3 sec
    Then I click on element with xpath "//div[@role='radiogroup'][1]"
    And I wait for 3 sec
    Then I click on element with xpath "//button[text() ='Save']"
    And I wait for 3 sec


#    Then I click on element with xpath "//button[@id='radix-:r6:-trigger-appointments']"
#    And I wait for 3 sec
#    Then I click on element with xpath "//button[@title='day view']"
#    And I wait for 3 sec
#    Then I wait for element with xpath "//a/div[contains(text(),'R R')]" to be present
#    Then I click on element with xpath "//a/div[contains(text(),'R R')]"
#    And I click on element with xpath "//button[text()='Cancel appointment']"
#    And I wait for 3 sec

     #  To make sure an appointment have created




  Scenario: Delete appointment made administrator

#  Given I open url "https://medicenter-qa2.vercel.app/"
#  Then I should see page title as "Medicenter"
#  Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
#  Then I wait for element with xpath "//button[contains(text(),'Login')]" to be present
#  Then I wait for element with xpath "//button[contains(text(),'Create account')]" to be present
#  And I click on element with xpath "//button[contains(text(),'Login')]"
#  Then I click on element with xpath "//input[@id='email']"
#  Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
#  Then I type "abc123" into element with xpath "//input[@id='password']"
#  Then I click on element with xpath "//button[@type='submit']"
#  Then I should see page title as "Medicenter"

    And I wait for 3 sec
    Then I click on element with xpath "//button[@id='radix-:r6:-trigger-appointments']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@title='day view']"
    And I wait for 3 sec

    Then I wait for element with xpath "//a/div[contains(text(),'R R')]" to be present

    Then I click on element with xpath "//a/div[contains(text(),'R R')]"
    And I wait for 3 sec
    And I click on element with xpath "//button[text()='Cancel appointment']"
    And I wait for 3 sec














