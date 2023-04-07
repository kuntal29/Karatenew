# Validation of response
Feature: Creates a new booking in the API

  Background: 
    * def request_headers = {Connection:'keep-alive', Content-Type:'application/json', Accept:'application/json'}
    * def req = read('classpath:src/test/java/input/Create_Booking_Payload.json')
    * def getDate = function(){ return java.lang.System.nanoTime() }
    * def time = getDate()
    * def randomString = 'user' + time + '_Test'

  # Get the response and print
  @tag2
  Scenario Outline: Creates a new booking in the API
    Given url 'https://restful-booker.herokuapp.com/booking'
    And headers request_headers
    * set req.firstname = '<name>'
    And request req
    * print req
    When method POST
    Then status 200
    * print response
    And match response.bookingid == '#present'
    And match response.bookingid != null
    And def jsonResponse = response.booking.firstname
    * print jsonResponse

    Examples: 
      | name   |
      | kuntal |
     

  # data driven through using setting random string function
  @tag12
  Scenario: Creates a new booking in the API
    Given url 'https://restful-booker.herokuapp.com/booking'
    And headers request_headers
    * set req.firstname = randomString
    And request req
    * print req
    When method POST
    Then status 200
    * print response
