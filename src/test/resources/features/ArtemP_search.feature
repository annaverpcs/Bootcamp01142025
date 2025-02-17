# Author: Artem P.
# Jira ID# 123
Feature: Search engines Artem P.

# www.gibiru.com execise
  Scenario: Search by gibiru.com
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I wait for element with xpath "//input[@id='q']" to be present
    And I type "Development" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" to be present
    And element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" should contain text "Development"
    And I wait for 3 sec

# www.duckduckgo.com/ execise
  Scenario: Search by duckduckgo.com
    Given I open url "https://duckduckgo.com/"
    Then I should see page title as "DuckDuckGo - Ваша защита — наш приоритет."
    Then I wait for element with xpath "//input[@id='searchbox_input']" to be present
    And I type "Testing" into element with xpath "//input[@id='searchbox_input']"
    And I wait for 5 sec
    Then I click on element with xpath "//input[@id='search_button']"
    Then I wait for element with xpath "//div[@class='FMPme3X940xAt4SKPFuw']" to be present
    And element with xpath "//div[@class='FMPme3X940xAt4SKPFuw']" should contain text "Testing"
    And I wait for 3 sec

# https://swisscows.com execise
  Scenario: Search by wisscows.com
    Given I open url "https://swisscows.com"
    Then I should see page title as "Swisscows - Ваша приватная и анонимная поисковая система"
    Then I wait for element with xpath "//input[@type='search']" to be present
    Then I type "Problem" into element with xpath "//input[@type='search']"
    Then I switch to default content
    And I wait for 3 sec
    And element with xpath "//input[@value='problem']" should contain text "problem"
    And I wait for 3 sec
