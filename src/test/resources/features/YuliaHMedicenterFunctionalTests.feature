#Author Yulia Hammond
#Jira issues #JAN-441, #JAN-442

  @medicenter
  @functional
Feature: Functional tests for user stories #2 and #6 Yulia Hammond

  Scenario: Administrator can login with valid credentials
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
      #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Calvin Grant')]" to be present
    Then element with xpath "//h1[contains(text(),'Calvin Grant')]" should contain text "Calvin Grant"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed

  Scenario: Administrator can NOT login using invalid email
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "admin2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 2 sec
    And I wait for element with xpath "//span[contains(text(),'Invalid login credentials')]" to be present

  Scenario: Administrator can NOT login using invalid password
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123456" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 2 sec
    And I wait for element with xpath "//span[contains(text(),'Invalid login credentials')]" to be present

  Scenario: Login text field can NOT remain blank
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 2 sec
    And I wait for element with xpath "//span[contains(text(),'missing email or phone')]" to be present

  Scenario:Password text field can NOT remain blank
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 2 sec
    And I wait for element with xpath " //span[contains(text(),'Invalid login credentials')]" to be present


  Scenario: Administrator can cancel appointment
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
        #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
  #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Calvin Grant')]" to be present
    Then element with xpath "//h1[contains(text(),'Calvin Grant')]" should contain text "Calvin Grant"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed
    And I wait for 1 sec
    # Administrator creates an appointment
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"
    And I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Add appointment')]"
    And I wait for 2 sec
    Then I wait for element with xpath "//span[contains(text(),'New appointment')]" to be present
    Then I type "Jose Morales" into element with xpath "//input[@id='user_name']"
    Then I type "Back pain" into element with xpath "//textarea[@id='note']"
    And I click on element with xpath "//select[@name='employee_id']/..//option[@value='a2bb9b91-54f4-4d02-94ff-f94e12b8cbb6']"
    Then I wait for 1 sec
    Then I type "02/20/2025" into element with xpath "//input[@name='date']"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'10:00 AM')]"
    And I wait for 1 sec
    Then I click on element with xpath "//button[text() ='Save']"
    And I wait for 3 sec
    #Verify the appointment was created
    Then I wait for element with xpath "//a/div[contains(text(),'Jose Morales')]" to be present
    Then I click on element with xpath "//a/div[contains(text(),'Jose Morales')]"
    And I wait for 2 sec
    #Cancel the appointment
    And I click on element with xpath "//button[text()='Cancel appointment']"
    And I wait for 1 sec
    And element with xpath "//p[contains(text(),'Jose Morales')]" should not be present



