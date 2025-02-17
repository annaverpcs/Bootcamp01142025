#  Author:
# Jira ID 123
Feature: Search Engines

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

     # www.swisscows.com
  Scenario: Steps by  www.swisscows.com
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
    Then I wait for element with xpath "//div[@class='mainline-results mainlineLast login: Wed Feb 12 19:35:10 on ttys002
  zhaziradoszhanova@ZhaziranovasMBP ~ % pwd
  /Users/zhaziradoszhanova
  zhaziradoszhanova@ZhaziranovasMBP ~ % cd Gitrepo
  cd: no such file or directory: Gitrepo
  zhaziradoszhanova@ZhaziranovasMBP ~ % cd IdeaProjects
  zhaziradoszhanova@ZhaziranovasMBP IdeaProjects % ls
  Bootcamp01142025
  zhaziradoszhanova@ZhaziranovasMBP IdeaProjects % mkdir
  usage: mkdir [-pv] [-m mode] directory_name ...
  zhaziradoszhanova@ZhaziranovasMBP IdeaProjects % mkdir 01142025emptyrepo
  zhaziradoszhanova@ZhaziranovasMBP IdeaProjects % cd 01142025emptyrepo
  zhaziradoszhanova@ZhaziranovasMBP 01142025emptyrepo % ls
  zhaziradoszhanova@ZhaziranovasMBP 01142025emptyrepo % ls -la
  total 0
  drwxr-xr-x  2 zhaziradoszhanova  staff   64 Feb 15 17:37 .
  drwxr-xr-x@ 5 zhaziradoszhanova  staff  160 Feb 15 17:37 ..
  zhaziradoszhanova@ZhaziranovasMBP 01142025emptyrepo % git init
  Initialized empty Git repository in /Users/zhaziradoszhanova/IdeaProjects/01142025emptyrepo/.git/
  zhaziradoszhanova@ZhaziranovasMBP 01142025emptyrepo % ls -la
  total 0
  drwxr-xr-x  3 zhaziradoszhanova  staff  -results__web']" to be present
    Then element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "Development"


  Scenario: Steps for Duckduckgo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='searchbox_input']" should be present
    When I type "Development" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='react-layout']" to be present
    Then element with xpath "//div[@id='react-layout']" should contain text "Development"