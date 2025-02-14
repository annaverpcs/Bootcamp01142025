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

  Scenario: Login as Administrator
      #Given I open url "https://medicenter-qa2.vercel.app/"
      #Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      #Then I click on element with xpath "//button[contains(text(),'Login')]"
     # Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
      #And element with xpath "//label[@for='email']" should be present
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
      #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    Then element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed

  Scenario: Login as Patient
      #Given I open url "https://medicenter-qa2.vercel.app/"
      #Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      #Then I click on element with xpath "//button[contains(text(),'Login')]"
      #Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
      #And element with xpath "//label[@for='email']" should be present
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "patient2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
      #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Ben Simpson')]" to be present
    Then element with xpath "//h1[contains(text(),'Ben Simpson')]" should contain text "Ben Simpson"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed

  Scenario: Patient Create and delete an appointment
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "patient2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
      #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Ben Simpson')]" to be present
    Then element with xpath "//h1[contains(text(),'Ben Simpson')]" should contain text "Ben Simpson"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed
      # patient create an appointment
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//span[contains(text(),'Make an appointment')]" to be present
    Then I type "AnnaV first appointment" into element with xpath "//textarea[@id='note']"
    And I wait for 1 sec
    And I click on element with xpath "//select[@name='employee_id']/..//option[@value='fe1aa9d7-fcbd-40a5-bb90-b7279df2562b']"
    Then I type "02/19/2025" into element with xpath " //input[@id='date']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'09:00 AM')]"
    And I click on element with xpath "//button[contains(text(),'Save')]"
    #patient verify that this appointment is created
    Then I wait for element with xpath "//p[contains(text(),'AnnaV first appointment')]" to be present
    Then element with xpath "//p[contains(text(),'AnnaV first appointment')]/ancestor::article/div[1]/h3" should contain text "Tuesday 18 February 2025, 09:00"
    #delete this appointment
    Then I wait for element with xpath "//p[contains(text(),'AnnaV first appointment')]/ancestor::article/div[2]/span" to be present
    And I click on element with xpath "//p[contains(text(),'AnnaV first appointment')]/ancestor::article/div[2]/span"
    #confirmation pop window
    Then I wait for element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" to be present
    And I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    #verify that this appointment is cancelled
    And I wait for 1 sec
    And element with xpath "//p[contains(text(),'AnnaV first appointment')]" should not be present

  Scenario: Patient Create and Cancel the delete for an appointment
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "patient2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
      #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Ben Simpson')]" to be present
    Then element with xpath "//h1[contains(text(),'Ben Simpson')]" should contain text "Ben Simpson"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed
      # patient create an appointment
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//span[contains(text(),'Make an appointment')]" to be present
    Then I type "AnnaV first appointment" into element with xpath "//textarea[@id='note']"
    And I wait for 1 sec
    And I click on element with xpath "//select[@name='employee_id']/..//option[@value='fe1aa9d7-fcbd-40a5-bb90-b7279df2562b']"
    Then I type "02/19/2025" into element with xpath " //input[@id='date']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'09:00 AM')]"
    And I click on element with xpath "//button[contains(text(),'Save')]"
    #patient verify that this appointment is created
    Then I wait for element with xpath "//p[contains(text(),'AnnaV first appointment')]" to be present
    Then element with xpath "//p[contains(text(),'AnnaV first appointment')]/ancestor::article/div[1]/h3" should contain text "Tuesday 18 February 2025, 09:00"
    #delete this appointment
    Then I wait for element with xpath "//p[contains(text(),'AnnaV first appointment')]/ancestor::article/div[2]/span" to be present
    And I click on element with xpath "//p[contains(text(),'AnnaV first appointment')]/ancestor::article/div[2]/span"
    #confirmation pop window
    Then I wait for element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" to be present
    #cancel delete function
    And I click on element with xpath "//span[contains(text(),'close')]"
    #verify that this appointment is still exist
    And I wait for 1 sec
    Then I wait for element with xpath "//p[contains(text(),'AnnaV first appointment')]" to be present
    #delete this appointment
    Then I wait for element with xpath "//p[contains(text(),'AnnaV first appointment')]/ancestor::article/div[2]/span" to be present
    And I click on element with xpath "//p[contains(text(),'AnnaV first appointment')]/ancestor::article/div[2]/span"
    #confirmation pop window
    Then I wait for element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" to be present
    And I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    #verify that this appointment is cancelled
    And I wait for 1 sec
    And element with xpath "//p[contains(text(),'AnnaV first appointment')]" should not be present