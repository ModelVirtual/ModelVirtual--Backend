Feature: Customer view shop list
  as a customer
  I want to meet
  the stores that are registered in the
  fitting room virtual
  So find more products that they can interest me yes

  Background:
    Given https://app-modelvirtual--backend-220613181745.azurewebsites.net/api/v1/shopList" is available

    @student-adding
    Scenario 01: The client observes stores registered in the service.
    Given that I find myself in the product interface.
    When looking at the list of stores and select the brand desired. EP04 neotech.com 47
    Then the app will redirect me to the official store page chosen.
    And I will be able to see garments that I can try myself.