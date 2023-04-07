# Validation of response and saving response and printing response
Feature: Creates a new booking in the API

  Background: 
    * def request_headers = {Connection:'keep-alive', Content-Type:'application/json', Accept:'application/json'}
    * def req = read('classpath:src/test/java/input/Create_Booking_Payload.json')
    * def result = callonce read('Post_Create_Booking_Save_response_for_Call_once.feature')
    * def firstnamefromresponse = result.firstname

  # data driven through using setting random string function
  @tag33
  Scenario: Creates a new booking in the API
    Given url 'https://restful-booker.herokuapp.com/booking'
    And headers request_headers
    And request req
    * print req
    When method POST
    Then status 200
    * print response
    * print firstnamefromresponse
