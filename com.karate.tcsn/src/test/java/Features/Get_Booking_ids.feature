# Simple get list of all booking ids and check status
Feature: To get the list of booking ids

Background:
* def request_headers = {Connection:'keep-alive', Content-Type:'application/json', Accept:'application/json'}

  
  Scenario: To get the list of booking ids
    Given headers request_header
    When url 'https://restful-booker.herokuapp.com/booking'
    When method GET
    Then status 200