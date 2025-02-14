#author: Anna V
#Merdical Center scenarios
@medicenter
Feature: Medical Center Test scenarios using Selenium WebDriver methods
 Scenario: Login
  Given AnnaV launch "Medicenter V2"
  Then AnnaV page title is "Medicenter"
  And AnnaV wait for "//h1[contains(text(),'Medical Center')]" text
  Then AnnaV click on "Login" button
  And I wait for 1 sec
  Then AnnaV type "administrator1@gmail.com" to "Email" textfield
  Then AnnaV type "abc123" to "Password" textfield
  And I wait for 1 sec
  And AnnaV click on "Sign In" button
  And I wait for 2 sec
