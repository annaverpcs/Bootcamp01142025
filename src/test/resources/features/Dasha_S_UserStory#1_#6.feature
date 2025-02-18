#Dasha S
  #Medical Center Scenarios

Feature: As a patient, I can login to MediCenter

  Scenario: Login with valid credentials
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    And I wait for 1 sec
    Then element with xpath "//label[@for='email']" should contain text "Email Address"
    And I type "dashadailyjobs+1@gmail.com" into element with xpath "//input[@id='email']"
    Then element with xpath "//label[@for='password']" should contain text "Your password"
    And I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    And I wait for element with xpath "//h1[contains(text(),"Dashen'ka")]" to be present

  Scenario: Login with unregister email address
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    And I wait for 1 sec
    Then element with xpath "//label[@for='email']" should contain text "Email Address"
    And I type "123@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    And I wait for element with xpath "//span[contains(text(),"Invalid login credentials")]" to be present

  Scenario: Login with empty email address field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    And I wait for 1 sec
    Then element with xpath "//label[@for='email']" should contain text "Email Address"
    And I type "" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    And I wait for element with xpath "//span[contains(text(),'missing email or phone')]" to be present

  Scenario: Sign up in account with valid data
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Create account')]"
    And I wait for 1 sec
    Then element with xpath "//label[@for='email']" should contain text "Email Address"
    And I type "dashadailyjobs+94@gmail.com" into element with xpath "//input[@id='email']"
    And I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign up')]"
    And I wait for 1 sec
    And I wait for element with xpath "//h1[contains(text(),'Hold on!')]" to be present

