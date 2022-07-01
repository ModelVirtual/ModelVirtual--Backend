Feature: Student exit in the web
  as a customer,
  I want to close session in the app
  when I no longer going to use,
  To avoid another person
  with access to team use my bill.

  Background:
    Given https://app-modelvirtual--backend-220613181745.azurewebsites.net/api/v1/account" is available

  @student-adding
  Scenario 01: The client sign out
    Given that I meet at the start of the app.
    When select the option "Sign off".
    Then my session will be closed.
    And I'll be taken to the start of session