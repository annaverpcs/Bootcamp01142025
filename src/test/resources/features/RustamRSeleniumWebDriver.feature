# Author:RustamR
# Medical Center Scenarios

@regression
@medicenter
Feature:TestingMediCenter
# Administrator loggs in and navigates to the appointments page
  Background:git
    Given RustamR launch "MediCenter-v2"
    Then RustamR page title is "Medical Center"
    Then RustamR log in
    Then RustamR wait for 3 sec
    And RustamR should see page title as "sTitle"
    Then RustamR click on "Appointments" button
    Then RustamR click on "Day" button

# Administrator creates an appointment

  Scenario: Admin creates an appointment

    Then RustamR wait for 3 sec
    Then RustamR click on "Specialist" button
    Then RustamR wait for 3 sec
    And RustamR fillout the form
    Then RustamR wait for 5 sec
    Then RustamR click on "Save" button
    Then RustamR wait for 3 sec

# Administrator cancels an appointment

  Scenario: Delete an appointment
    Then RustamR wait for 3 sec
#    Then RustamR click on "Next Day" button
    Then RustamR wait for element with patientAppointment to be present
    Then RustamR wait for 3 sec
    Then RustamR click on "CancelAppointment" button














