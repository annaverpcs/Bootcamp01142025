# Author: Artem P.
# Jira ID# 123
@medicenter
Feature: User story #10 - Contact page. Artem P.


  # https://medicenter-qa2.vercel.app/
  Scenario: "Contact Us" page available for guest
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//a[contains(text(),'Contact')]"
    Then I should see page title contains "Medicenter"

  Scenario: "Contact Us" page available for patient"
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "patient3@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I click on element with xpath "//a[@href='/contact']"
    And I wait for 3 sec
    Then I should see page title contains "Medicenter"

  Scenario: “Contact Us” page can't be viewed by administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then I should see page title does not contain "Contact"

  Scenario: User able to send the message via email to Reception
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//a[contains(text(),'Contact')]"
    Then I should see page title contains "Medicenter"
    And I click on element with xpath "//a[contains(text(),'medicenter@example.com')]"

  Scenario: User able to contact via phone number with Reception
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//a[contains(text(),'Contact')]"
    Then I should see page title contains "Medicenter"
    And I click on element with xpath "//div[h3[text()='Reception']]//a[@href='tel:48 123 456 789']"

  Scenario: User able to contact via phone number with "First contact doctor’s office"
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//a[contains(text(),'Contact')]"
    Then I should see page title contains "Medicenter"
    And I wait for 1 sec
    And I click on element with xpath "//div[h3[text()=\"First contact doctor's office\"]]//a[contains(text(), '+48 123 456 789')]"

  Scenario: User able to contact via phone number with "Diagnostics and Surgical Office"
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//a[contains(text(),'Contact')]"
    Then I should see page title contains "Medicenter"
    And I wait for 1 sec
    And I click on element with xpath "//div[h3[text()='Diagnostic and Surgical Office']]//a[@href='tel:48 123 456 789']"
    And I wait for 1 sec