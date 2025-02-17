#Author: Aleksey R
#MediCenter Scenarios
@medicenter
  Feature: Medical Center Test Scenarios Aleksey R

  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//input[@id='email']" should be present
    #Login page
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I wait for 1 sec
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 1 sec
    #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed

  Scenario: Edit specialist First name
    Then I wait for 2 sec
    Then I click on element with xpath "//tr[td[contains(text(),'Reyes')]]//span[@aria-hidden='true' and text()='edit']"
    And I wait for element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" to be present
    And element with xpath "//span[contains(text(),'Edit specialist info')]" should contain text "Edit specialist info"
    Then I wait for 2 sec
    Then I clear element with xpath "//input[@id='first_name']"
    Then I type "Carlos II" into element with xpath "//input[@id='first_name']"
    And I click on element with xpath "//button[contains(text(),'Save')]"
#verify the changes
    Then I wait for 1 sec
    And I click on element with xpath "//tr[td[contains(text(),'Reyes') or contains(text(),'Carlos')]]//span[@aria-hidden='true' and text()='edit']"
    And I wait for element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" to be present
    And element with xpath "//span[contains(text(),'Edit specialist info')]" should contain text "Edit specialist info"

  Scenario: Edit specialist Last name
      Then I wait for 2 sec
      Then I click on element with xpath "//tr[td[contains(text(),'Reyes')]]//span[@aria-hidden='true' and text()='edit']"
      And I wait for element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" to be present
      And element with xpath "//span[contains(text(),'Edit specialist info')]" should contain text "Edit specialist info"
      Then I wait for 2 sec
      Then I clear element with xpath "//input[@id='last_name']"
      Then I type "Reyes Sr" into element with xpath "//input[@id='last_name']"
      And I click on element with xpath "//button[contains(text(),'Save')]"
  #verify the changes
      Then I wait for 1 sec
      And I click on element with xpath "//tr[td[contains(text(),'Reyes') or contains(text(),'Carlos')]]//span[@aria-hidden='true' and text()='edit']"
      And I wait for element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" to be present
      And element with xpath "//span[contains(text(),'Edit specialist info')]" should contain text "Edit specialist info"
      And I wait for 2 sec

  Scenario: Editing specialist type
      Then I wait for 2 sec
      Then I click on element with xpath "//tr[td[contains(text(),'Reyes')]]//span[@aria-hidden='true' and text()='edit']"
      And I wait for element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" to be present
      And element with xpath "//span[contains(text(),'Edit specialist info')]" should contain text "Edit specialist info"
      Then I wait for 2 sec
      And I click on element with xpath "//select[@name='role']"
      Then I wait for 1 sec
      And I click on element with xpath "//select[@name='role']/..//option[contains(text(),'Neurologist')]"
      Then I wait for 1 sec
      And I click on element with xpath "//button[contains(text(),'Save')]"
  #verify the changes
      Then I wait for 1 sec
      And I click on element with xpath "//tr[td[contains(text(),'Reyes') or contains(text(),'Carlos')]]//span[@aria-hidden='true' and text()='edit']"
      And I wait for element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" to be present
      And element with xpath "//span[contains(text(),'Edit specialist info')]" should contain text "Edit specialist info"
      #And element with xpath "//select[@name='role']/..//option[contains(text(),'Neurologist')]" should be present
      And I wait for 2 sec

  Scenario: Editing specialist 'Working hours' section
    Then I wait for 2 sec
    Then I click on element with xpath "//tr[td[contains(text(),'Reyes')]]//span[@aria-hidden='true' and text()='edit']"
    And I wait for element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" to be present
    And element with xpath "//span[contains(text(),'Edit specialist info')]" should contain text "Edit specialist info"
    Then I wait for 2 sec
    And I click on element with xpath "//label[contains(text(),'Mon')]"
    Then I type "08:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "18:00" into element with xpath "//input[@id='working_hours.monday.to']"
    And I click on element with xpath "//button[contains(text(),'Save')]"
#verify the changes
    Then I wait for 1 sec
    And I click on element with xpath "//tr[td[contains(text(),'Reyes') or contains(text(),'Carlos')]]//span[@aria-hidden='true' and text()='edit']"
    And I wait for element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" to be present
    And element with xpath "//span[contains(text(),'Edit specialist info')]" should contain text "Edit specialist info"

  Scenario: Editing specialist 'Working hours' section with invalid hour format
    Then I wait for 2 sec
    Then I click on element with xpath "//tr[td[contains(text(),'Reyes')]]//span[@aria-hidden='true' and text()='edit']"
    And I wait for element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" to be present
    And element with xpath "//span[contains(text(),'Edit specialist info')]" should contain text "Edit specialist info"
    Then I wait for 2 sec
    And I click on element with xpath "//label[contains(text(),'Mon')]"
    Then I type "26:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "28:00" into element with xpath "//input[@id='working_hours.monday.to']"
    And I click on element with xpath "//button[contains(text(),'Save')]"
#verify the changes
    Then I wait for 1 sec
    #Dialog window shouldn't be closed
    And element with xpath "//div[@class='grid gap-4']//span[contains(text(),'Edit specialist info')]" should be displayed
    #And appropriate error message should appear









