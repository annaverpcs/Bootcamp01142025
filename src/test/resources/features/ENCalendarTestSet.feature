#Author Efrain Nunez
  #Medicenter Administrator Calendar Test Set
@medicenter
Feature: Appointment Calendar Test scenarios Efrain Nunez

  Background:
      # Administrator 2 Login - Calvin Grant
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//label[@for='email']" should be present
    Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    Then I wait for 1 sec
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 1 sec
    Then I wait for element with xpath "//h1[contains(text(),'Calvin Grant')]" to be present
    Then element with xpath "//h1[contains(text(),'Calvin Grant')]" should contain text "Calvin Grant"
    And element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed
    Then I wait for 1 sec
    #Open Appointment Tab
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"
    Then I wait for element with xpath "//table[@role='grid']" to be present

    #Calendar Navigation Test Scenarios

  Scenario: Open calendar by month
      #Verify Calendar is displayed by month
    Then element with xpath "//button[contains(text(),'month')]" should be displayed
    And element with xpath "//div[@class='fc-dayGridMonth-view fc-view fc-daygrid']" should be present

  Scenario: Open calender by week
      #Click on week button
    Then I click on element with xpath "//button[contains(text(),'week')]"
      #Verify Calendar is displayed by week
    And element with xpath "//div[@class='fc-dayGridWeek-view fc-view fc-daygrid']" should be present

  Scenario: Open calender by day
     #Click on day button
    Then I click on element with xpath "//button[contains(text(),'day') and @title='day view']"
     #Verify Calendar is displayed by day
    And element with xpath "//div[@class='fc-dayGridDay-view fc-view fc-daygrid']" should be present

  Scenario: Use arrows to change month
      #Verify Calendar is displayed by month
    Then element with xpath "//button[contains(text(),'month')]" should be displayed
    And element with xpath "//div[@class='fc-dayGridMonth-view fc-view fc-daygrid']" should be present
      #Click on forward arrow for next month
    Then I click on element with xpath "//button[@title='Next month']"
    And I wait for element with xpath "//h2[contains(text(),'March 2025')]" to be present
    Then element with xpath "//h2[contains(text(),'March 2025')]" should contain text "March 2025"
      #Click on back arrow for previous month
    Then I wait for 1 sec
    Then I click on element with xpath "//button[@title='Previous month']"
    And I wait for element with xpath "//h2[contains(text(),'February 2025')]" to be present
    Then element with xpath "//h2[contains(text(),'February 2025')]" should contain text "February 2025"

  Scenario: Use arrows to change week
     #Click on week button
    Then I click on element with xpath "//button[contains(text(),'week')]"
      #Verify Calendar is displayed by week
    And element with xpath "//div[@class='fc-dayGridWeek-view fc-view fc-daygrid']" should be present
    #Click on forward arrow for next week
    Then I click on element with xpath "//button[@title='Next week']"
    #Click on back arrow for previous week
    Then I wait for 2 sec
    Then I click on element with xpath "//button[@title='Previous week']"

  Scenario: Use arrows to change day
      #Click on day button
    Then I click on element with xpath "//button[contains(text(),'day') and @title='day view']"
     #Verify Calendar is displayed by day
    And element with xpath "//div[@class='fc-dayGridDay-view fc-view fc-daygrid']" should be present
      #Click on forward arrow for next day
    Then I click on element with xpath "//button[@title='Next day']"
      #Click on back arrow for previous day
    Then I wait for 2 sec
    Then I click on element with xpath "//button[@title='Previous day']"

    #Generate PDF file Test Scenario

  Scenario: Generate PDF file
       #Click on day button
    Then I click on element with xpath "//button[contains(text(),'day') and @title='day view']"
    Then I wait for 1 sec 
    And element with xpath "//button[contains(text(),'Generate PDF')]" should be present
    Then I click on element with xpath "//button[contains(text(),'Generate PDF')]"
    Then I wait for 1 sec

    #Appointment Summary

    Scenario: View appointment summary
      Then element with xpath "//button[contains(text(),'month')]" should be displayed
      And element with xpath "//div[@class='fc-dayGridMonth-view fc-view fc-daygrid']" should be present
      Then I click on element with xpath "//div[contains(text(),'Ben Simpson')]"
      Then I wait for element with xpath "//span[contains(text(),'Appointment summary')]" to be present
      And element with xpath "//span[contains(text(),'Appointment summary')]" should contain text "Appointment summary"
      Then I click on element with xpath "//button[@aria-label='Zamknij']//span[text()='close']"
      





      


        