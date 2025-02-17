#  Author:
# Jira ID 123
  @regression @medicenter
Feature: Search Engines
   @smoke
  # www.gibiru.com exercise
  Scenario: Search by www.gibiru.com
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I wait for element with xpath "//input[@id='q']" to be present
    And I type "Development" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" to be present
    And element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" should contain text "Development"
    And I wait for 3 sec

    #swisscows.com
  Scenario: Steps for swisscows
    Given I open url "https://swisscows.com/en"
    #Then I should see page title as "Your private and anonymous search engine Swisscows"
    When I type "Development" into element with xpath "//input[@type='search']"
    Then I click Enter button
    Then I wait for element with xpath "//div[@class='web-results content']/article[1]" to be present
    Then element with xpath "//div[@class='web-results content']/article[1]" should contain text "Development"

  Scenario: Steps for giveWater
    Given I open url "https://www.givewater.com/"
    Then I should see page title contains "giveWater"
    Then I wait for element with xpath "//input[@id='site-search']" to be present
    Then I wait for element with xpath "//div[@class='pum-content popmake-content']" to be present
   Then I wait for 1 sec
    When I click on element with xpath "//*[@class='pum-close popmake-close']"
    When I type "Development" into element with xpath "//input[@id='site-search']"
    Then I click on element with xpath "//button[@class='btn-search']"
    Then I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    Then element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "Development"


  Scenario: Steps for Duckduckgo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='searchbox_input']" should be present
    When I type "Development" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='react-layout']" to be present
    Then element with xpath "//div[@id='react-layout']" should contain text "Development"


