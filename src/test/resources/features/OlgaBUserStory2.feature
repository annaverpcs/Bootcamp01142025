#author: Olga B
# Medical Center scenarios
#User Story 2
@medicenter
Feature: Medical Center Test scenarios Olga B

  Scenario: Login as Administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
      #Login page
    Then I clear element with xpath "//input[@id='email']"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec

    Scenario: Administrator cannot login with invalid credentials
      Given I open url "https://medicenter-qa2.vercel.app/"
      Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      Then I click on element with xpath "//button[contains(text(),'Login')]"
      Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
      And element with xpath "//label[@for='email']" should be present
      #Login page
      Then I clear element with xpath "//input[@id='email']"
      Then I type "administratoR1@gmail.com" into element with xpath "//input[@id='email']"
      And I type "abC123" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[@type='submit']"
      And I wait for 1 sec