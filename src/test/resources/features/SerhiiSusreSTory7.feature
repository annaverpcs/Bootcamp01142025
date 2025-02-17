#Athor: SerhiiS
  #Jira id: JAN-166Feature:
@medicenter
Feature: Test Set for User Story "As an administrator, I can cancel an appointment" SerhiiS

  #Background consists test case: User can login as administrator with valid credentials. Jira ID JAN-451
  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    When I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    When I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    Then I wait for 3 sec
#Appointmnets with specifis patient name should be createed before for each specialist
  Scenario Outline: Administrator is able to cancel any specialist's appointment. Jira ID JAN-452, JAN-453, JAN-454, JAN-456
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"
    Then I wait for element with xpath "//table[@role='grid']" to be present
    Then I click on element with xpath <Specialistxpath>
    Then I click on element with xpath <Specialistxpath>
    Then I wait for 1 sec
    Then I click on element with xpath <Patientname>
    Then I wait for element with xpath <Patientname> to be present
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    Then I wait for element with xpath <Patientname> to not be present
    Examples:
      |  Specialistxpath                      |Patientname                                 |
      |  "//option[@value='doctor']"          |"//div[contains(text(),'John Doe Junior')]" |
      |  "//option[@value='nurse']"           | "//div[contains(text(),'John Doe Junior')]"|
      |  "//option[@value='neurologist']"     |"//div[contains(text(),'John Doe Junior')]" |
      |  "//option[@value='ophthalmologist']" |"//div[contains(text(),'John Doe Junior')]" |
      |  "//option[@value='cardiologist']"    |"//div[contains(text(),'John Doe Junior')]" |

