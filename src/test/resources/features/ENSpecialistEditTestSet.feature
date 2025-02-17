#Author Efrain Nunez
  #Medicenter Administrator Edit Specialist Test Set

@medicenter
Feature: Edit specialist info Efrain Nunez

  Background:
      # Administrator 2 Login - Calvin Grant
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
    Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    Then I wait for 1 sec
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 1 sec
    Then I wait for element with xpath "//h1[contains(text(),'Calvin Grant')]" to be present
    Then element with xpath "//h1[contains(text(),'Calvin Grant')]" should contain text "Calvin Grant"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed
    Then I wait for 1 sec
    #Verify specialist tab
    And element with xpath "//button[contains(text(),'Add specialist')]" should be displayed

  Scenario: Edit specialist first and last name
    Then I click on element with xpath "//tr[td[text()='John Williams']]//span[@aria-hidden='true' and text()='edit']"
    Then I wait for 1 sec
    Then I clear element with xpath "//input[@id='first_name']"
    And I clear element with xpath "//input[@id='last_name']"
    Then I type "Kevin" into element with xpath "//input[@id='first_name']"
    Then I type "James" into element with xpath "//input[@id='last_name']"
    And I wait for 1 sec

  Scenario: Edit specialist role
    Then I click on element with xpath "//tr[td[text()='John Williams']]//span[@aria-hidden='true' and text()='edit']"
    Then I wait for 1 sec
    Then I click on element with xpath "//option[@value='cardiologist']"
    And I wait for 1 sec

  Scenario: Edit specialist by adding working days
    Then I click on element with xpath "//tr[td[text()='John Williams']]//span[@aria-hidden='true' and text()='edit']"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[@id='thursday']"
    And I click on element with xpath "//button[@id='friday']"
    And I wait for 1 sec

    Scenario: Edit specialist by removing working days
      Then I click on element with xpath "//tr[td[text()='John Williams']]//span[@aria-hidden='true' and text()='edit']"
      Then I wait for 1 sec
      Then I click on element with xpath "//button[@id='monday']"
      Then I click on element with xpath "//button[@id='tuesday']"
      Then I wait for 1 sec

  Scenario: Edit specialist working hours
    Then I click on element with xpath "//tr[td[text()='John Williams']]//span[@aria-hidden='true' and text()='edit']"
    Then I wait for 1 sec
    Then I clear element with xpath "//input[@id='working_hours.monday.from']"
    And I clear element with xpath "//input[@id='working_hours.monday.to']"
    Then I type "0900" into element with xpath "//input[@id='working_hours.monday.from']"
    And I type "1700" into element with xpath "//input[@id='working_hours.monday.to']"
    And I wait for 1 sec
    
    Scenario: Edit all specialist info
      Then I click on element with xpath "//tr[td[text()='John Williams']]//span[@aria-hidden='true' and text()='edit']"
      And I wait for 1 sec
      #Edit name
      Then I clear element with xpath "//input[@id='first_name']"
      And I clear element with xpath "//input[@id='last_name']"
      Then I type "Kevin" into element with xpath "//input[@id='first_name']"
      Then I type "James" into element with xpath "//input[@id='last_name']"
      #Edit role
      Then I click on element with xpath "//option[@value='cardiologist']"
      #Edit working hours and days
      And I wait for 1 sec
      #Clear Monday
      Then I clear element with xpath "//input[@id='working_hours.monday.from']"
      And I clear element with xpath "//input[@id='working_hours.monday.to']"
      Then I type "0000" into element with xpath "//input[@id='working_hours.monday.from']"
      And I type "0000" into element with xpath "//input[@id='working_hours.monday.to']"
      Then I click on element with xpath "//button[@id='monday']"
      #Clear Tuesday
      And I wait for 1 sec
      Then I clear element with xpath "//input[@id='working_hours.tuesday.from']"
      And I clear element with xpath "//input[@id='working_hours.tuesday.to']"
      Then I type "0000" into element with xpath "//input[@id='working_hours.tuesday.from']"
      And I type "0000" into element with xpath "//input[@id='working_hours.tuesday.to']"
      Then I click on element with xpath "//button[@id='tuesday']"
      #Add Thursday
      And I wait for 1 sec
      Then I click on element with xpath "//button[@id='thursday']"
      Then I click on element with xpath "//div//input[@id='working_hours.thursday.from']"
      And I type "1000" into element with xpath "//div//input[@id='working_hours.thursday.from']"
      Then I click on element with xpath "//div//input[@id='working_hours.thursday.to']"
      And I type "1400" into element with xpath "//div//input[@id='working_hours.thursday.to']"
      #Add Friday
      And I wait for 1 sec
      Then I click on element with xpath "//button[@id='friday']"
      Then I click on element with xpath "//input[@id='working_hours.friday.from']"
      And I type "1000" into element with xpath "//input[@id='working_hours.friday.from']"
      Then I click on element with xpath "//input[@id='working_hours.friday.to']"
      And I type "1400" into element with xpath "//input[@id='working_hours.friday.to']"
      And I click on element with xpath "//button[@aria-label='Zamknij']//span[text()='close']"
      And I wait for 1 sec


