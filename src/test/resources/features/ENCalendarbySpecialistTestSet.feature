#Author Efrain Nunez
  #Medicenter Administrator Filter Calendar Test Sets
@medicenter
Feature: Filter calender appointments by type of specialist Efrain Nunez

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
    #Open Appointment Tab
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"
    Then I wait for element with xpath "//table[@role='grid']" to be present

  Scenario: Filter Calendar by doctor appointments
    #Click on dropdown menu
    Then I wait for 2 sec
    #Click to remove unrelated options
    Then I click on element with xpath "//option[@value='nurse']"
    Then  I click on element with xpath "//option[@value='neurologist']"
    Then  I click on element with xpath "//option[@value='ophthalmologist']"
    Then  I click on element with xpath "//option[@value='cardiologist']"
    And I wait for 1 sec
    Then I wait for element with xpath "//div[contains(text(),'Ben Simpson')]" to be present
    Then I click on element with xpath "//div[contains(text(),'Ben Simpson')]"
    And I wait for 1 sec
    And element with xpath "//span[contains(text(),'Doctor')]" should be displayed

  Scenario: Filter Calendar by nurse appointments
    #Click on dropdown menu
    Then I wait for 2 sec
    #Click to remove unrelated options
    Then I click on element with xpath "//option[@value='doctor']"
    Then  I click on element with xpath "//option[@value='neurologist']"
    Then  I click on element with xpath "//option[@value='ophthalmologist']"
    Then  I click on element with xpath "//option[@value='cardiologist']"
    And I wait for 1 sec
    Then I wait for element with xpath "//div[contains(text(),'Archie Kole')]" to be present
    Then I click on element with xpath "//div[contains(text(),'Archie Kole')]"
    And I wait for 1 sec
    And element with xpath "//span[contains(text(),'Nurse')]" should be displayed

  Scenario: Filter Calendar by neurologist appointments
    #Click on dropdown menu
    Then I wait for 2 sec
    #Click to remove unrelated options
    Then I click on element with xpath "//option[@value='doctor']"
    Then  I click on element with xpath "//option[@value='nurse']"
    Then  I click on element with xpath "//option[@value='ophthalmologist']"
    Then  I click on element with xpath "//option[@value='cardiologist']"
    And I wait for 1 sec
    Then I wait for element with xpath "//div[contains(text(),'Hardluck Henry')]" to be present
    Then I click on element with xpath "//div[contains(text(),'Hardluck Henry')]"
    And I wait for 1 sec
    And element with xpath "//span[contains(text(),'Neurologist')]" should be displayed

  Scenario: Filter Calendar by ophthalmologist appointments
    #Click on dropdown menu
    Then I wait for 2 sec
    #Click to remove unrelated options
    Then I click on element with xpath "//option[@value='doctor']"
    Then  I click on element with xpath "//option[@value='nurse']"
    Then  I click on element with xpath "//option[@value='neurologist']"
    Then  I click on element with xpath "//option[@value='cardiologist']"
    And I wait for 1 sec
    Then I wait for element with xpath "//div[contains(text(),'John')]" to be present
    Then I click on element with xpath "//div[contains(text(),'John')]"
    And I wait for 1 sec
    And element with xpath "//span[contains(text(),'Ophthalmologist')]" should be displayed

  Scenario: Filter Calendar by cardiologist appointments
    #Click on dropdown menu
    Then I wait for 2 sec
    #Click to remove unrelated options
    Then I click on element with xpath "//option[@value='doctor']"
    Then  I click on element with xpath "//option[@value='nurse']"
    Then  I click on element with xpath "//option[@value='neurologist']"
    Then  I click on element with xpath "//option[@value='ophthalmologist']"
    And I wait for 1 sec
    Then I wait for element with xpath "//div[contains(text(),'Tony Stark')]" to be present
    Then I click on element with xpath "//div[contains(text(),'Tony Stark')]"
    And I wait for 1 sec
    And element with xpath "//span[contains(text(),'Cardiologist')]" should be displayed
