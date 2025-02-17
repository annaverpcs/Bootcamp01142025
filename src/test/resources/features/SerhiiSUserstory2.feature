#Athor: SerhiiS
  #Jira id: JAN-165
@medicenter
Feature: Test Set for User Story: "As an administrator, I can login to MediCenter" SerhiiS

  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present

  Scenario: Positive. User is able to login to the application as an Administration with valid credentials (Jira id: JAN-274)

    When I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    When I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
#User is able to logout. Jira ID JAN-283
    Then I click on element with xpath "//button//child::span[contains(text(), 'logout')]"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present

  Scenario Outline: Negative and Boundary. Jira ID JAN-333, JAN-334, JAN-335, JAN-336, JAN-338, JAN-339, JAn-340
    When I type <sEmail> into element with xpath <EmailtextField>
    When I type <sPassword> into element with xpath <PasswordtextField>
    Then I click on element with xpath <Signinbutton>
    Then I wait for element with xpath <FirstlastName> to be present
    Examples:
      | sEmail                      | EmailtextField         | sPassword                           | PasswordtextField         | Signinbutton               | FirstlastName                           |
      | " "                         | "//input[@id='email']" | "abc123"                            | "//input[@id='password']" | "//button[@type='submit']" | "//h1[contains(text(),'Mary Poppins')]" |
      | "administrator1$@gmail.com" | "//input[@id='email']" | "abc123"                            | "//input[@id='password']" | "//button[@type='submit']" | "//h1[contains(text(),'Mary Poppins')]" |
      | "administrator @gmail.com"  | "//input[@id='email']" | "abc123"                            | "//input[@id='password']" | "//button[@type='submit']" | "//h1[contains(text(),'Mary Poppins')]" |
      | "administrator@gmail.com"   | "//input[@id='email']" | " "                                 | "//input[@id='password']" | "//button[@type='submit']" | "//h1[contains(text(),'Mary Poppins')]" |
      | "administrator@gmail.com"   | "//input[@id='email']" | "abc12"                             | "//input[@id='password']" | "//button[@type='submit']" | "//h1[contains(text(),'Mary Poppins')]" |
      | "administrator@gmail.com"   | "//input[@id='email']" | "abc123456789012345678901234567890" | "//input[@id='password']" | "//button[@type='submit']" | "//h1[contains(text(),'Mary Poppins')]" |
      | "administrator@gmail.com"   | "//input[@id='email']" | "abc 12"                            | "//input[@id='password']" | "//button[@type='submit']" | "//h1[contains(text(),'Mary Poppins')]" |


