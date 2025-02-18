# Dasha Schaller
  #Jira-115
Feature: Search Engines

  Scenario: Search by gibiru.com
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I wait for element with xpath "//input[@id='q']" to be present
    And I type "Development" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" to be present
    And element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" should contain text "Development"
    And I wait for 3 sec

  #  https://swisscows.com
  Scenario: Search by www.swisscows.com
    Given I open url "https://swisscows.com/"
    Then I should see page title as "Your private and anonymous search engine Swisscows"
    Then I wait for element with xpath "//input[@type='search']" to be present
    And I type "Cow" into element with xpath "//input[@type='search']"
    Then I switch to default content
    And I wait for 1 sec


