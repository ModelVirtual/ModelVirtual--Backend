Feature: Student exit in the web
  As a customer,
  I want to add products to one list of favourites,
  for organize better the products
  what are they from me interest.

  Background:
    Given https://app-modelvirtual--backend-220613181745.azurewebsites.net/api/v1/favorties" is available

  @student-adding
  Scenario 01: The client add a product to your favorites list
    Given that I'm seeing a product.
    When I select the option to add it to my favourites.
    Then the app will add the product to my favorites list.