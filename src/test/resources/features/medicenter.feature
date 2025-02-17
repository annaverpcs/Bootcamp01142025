#Author: Tatyana Aipova
#Jira
@medicenter
Feature: Test for  valid login (MediCenter) Tatyana Aipova
  Scenario: Login for https://medicenter-qa2.vercel.app
   Given I open url "https://medicenter-qa2.vercel.app"
   Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    And I wait for 1 sec
    Then element with xpath "//label[@for='email']" should contain text "Email address"
    And I type "patientpcs1@gmail.com" into element with xpath "//input[@id='email']"
    Then element with xpath "//label[@for='password']" should contain text "Your Password"
    And I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then element with xpath "//h1[contains(text(),'James Johnson')]" should contain text "James Johnson"




 Scenario: Login for https://medicenter-qa2.vercel.app
  Given I open url "https://medicenter-qa2.vercel.app"
  Then I should see page title as "Medicenter"
  Then I click on element with xpath "//button[contains(text(),'Login')]"
  And I wait for 1 sec
  Then element with xpath "//label[@for='email']" should contain text "Email address"
  And I type "invalid@gmail.com" into element with xpath "//input[@id='email']"
  Then element with xpath "//label[@for='password']" should contain text "Your Password"
  And I type "abc123" into element with xpath "//input[@id='password']"
  Then I click on element with xpath "//button[@type='submit']"
  Then I wait for 3 sec
  Then element with xpath "//span[contains(text(), 'Invalid login credentials')]" should contain text "Invalid login credentials"


 Scenario: Login for https://medicenter-qa2.vercel.app
  Given I open url "https://medicenter-qa2.vercel.app"
  Then I should see page title as "Medicenter"
  Then I click on element with xpath "//button[contains(text(),'Login')]"
  And I wait for 1 sec
  Then element with xpath "//label[@for='email']" should contain text "Email address"
  And I type "patientpcs1@gmail.com" into element with xpath "//input[@id='email']"
  Then element with xpath "//label[@for='password']" should contain text "Your Password"
  And I type "abc1234" into element with xpath "//input[@id='password']"
  Then I click on element with xpath "//button[@type='submit']"
  Then I wait for 3 sec
  Then element with xpath "//span[contains(text(), 'Invalid login credentials')]" should contain text "Invalid login credentials"


 Scenario: Login for https://medicenter-qa2.vercel.app
  Given I open url "https://medicenter-qa2.vercel.app"
  Then I should see page title as "Medicenter"
  Then I click on element with xpath "//button[contains(text(),'Login')]"
  And I wait for 1 sec
  Then element with xpath "//label[@for='email']" should contain text "Email address"
  Then element with xpath "//label[@for='password']" should contain text "Your Password"
  Then I click on element with xpath "//button[@type='submit']"
  Then I wait for 3 sec
  Then element with xpath "//span[contains(text(),'missing email or phone')]" should contain text "missing email or phone"
