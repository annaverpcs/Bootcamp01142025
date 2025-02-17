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

 Scenario: Calendar view can be modified by day
      Then I click on element with xpath "//button[contains(text(),'Appointments')]"
      And I wait for 1 sec
      Then I click on element with xpath "//button[@title='day view']"
      And I wait for 1 sec
      Then element with xpath "//th[starts-with(@role,'columnheader')]" should be present

Scenario: Calendar view can be modified by week
     Then I click on element with xpath "//button[contains(text(),'Appointments')]"
     And I wait for 1 sec
     Then I click on element with xpath "//button[@title='week view']"
     And I wait for 1 sec
     Then element with xpath "//div[table[@role='grid']]" should be present

Scenario: Calendar view can be modified by month
     Then I click on element with xpath "//button[contains(text(),'Appointments')]"
     And I wait for 1 sec
     Then I click on element with xpath "//button[@title='month view']"
     And I wait for 1 sec
     Then element with xpath "//div[table[@role='grid']]" should be present

Scenario: Calendar view can be modified by specialist type
     Then I click on element with xpath "//button[contains(text(),'Appointments')]"
     And I wait for 1 sec
     Then I click on element with xpath "//button[@title='month view']"
     And I wait for 1 sec
     Then element with xpath "//div[table[@role='grid']]" should be present
     Then I click on element with xpath "//option[contains(text(),'Doctor')]"
     Then I click on element with xpath "//option[contains(text(),'Ophthalmologist')]"
     Then I click on element with xpath "//option[contains(text(),'Cardiologist')]"
     Then I click on element with xpath "//option[contains(text(),'Neurologist')]"
     Then I wait for 2 sec
     Then I click on element with xpath "//div[contains(text(),'Archie Kole')]" 
     And I wait for 1 sec
     And I wait for element with xpath "//span[contains(text(),'Appointment summary')]" to be present
     And element with xpath "//span[contains(text(),'Nurse')]" should be present
     Then I wait for 2 sec

Scenario: PDF file with appointments information for the certain date can be generated
     Then I click on element with xpath "//button[@role='tab' and contains(text(),'Appointments')]"
     And I wait for 1 sec
     Then I click on element with xpath "//button[@title='day view']"
     And I wait for 1 sec
     Then I wait for element with xpath "//th[starts-with(@role,'columnheader')]" to be present
     And I wait for 1 sec
     Then I click on element with xpath "//button[contains(text(),'Generate PDF for this day')]"
     And I wait for 1 sec

Scenario: 'Next month' button on Appointments page redirects user to the screen with the calendar for the next month
     Then I click on element with xpath "//button[contains(text(),'Appointments')]"
     And I wait for 1 sec
     Then I click on element with xpath "//button[@title='month view']"
     And I wait for 1 sec
     Then element with xpath "//h2[contains(text(),'February 2025')]" should be present
     Then I click on element with xpath "//button[@title='Next month']"
     And I wait for 2 sec
     Then element with xpath "//h2[contains(text(),'March 2025')]" should be present
     And I wait for 1 sec



