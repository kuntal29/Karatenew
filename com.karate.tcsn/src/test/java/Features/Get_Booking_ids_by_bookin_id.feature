# Simple get list of all booking ids by using booking id
Feature: To get the details of booking id by using specifc booking id

  Background: 
    * def request_headers = {Connection:'keep-alive', Content-Type:'application/json', Accept:'application/json'}

  @ignore
  Scenario Outline: To get the details of booking id by using booking id
    Given url 'https://restful-booker.herokuapp.com/booking'
    And headers request_headers
    And path '<id>'
    When method GET
    Then status 200

    Examples: 
      | id |
      |  2 |
