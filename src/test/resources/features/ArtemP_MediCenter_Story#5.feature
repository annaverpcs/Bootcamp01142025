# Author: Artem P.
# Jira ID# 123
Feature: User story #10 - Contact page

  # https://medicenter-qa2.vercel.app/
  Scenario: User able to sign in as administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//h1[contains(text(),'Mary Poppins')]" should be disabled

  Scenario: Administrator able to open an "Appointments" tab
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"

  Scenario: The pop up window "New appointment" appears after clicked one on the button "Add appointment"
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"
    And I click on element with xpath "//span[contains(text(),'person_add')]"

  Scenario: