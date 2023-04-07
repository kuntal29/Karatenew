# Validation of response and saving response and printing response
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
    And match response.booking.firstname == "kuntal"
    And def firstname = response.booking.firstname
    And def bookingid = response.bookingid
    * print firstname
    * print bookingid

    Examples: 
      | name   |
      | kuntal |

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
    And def responsefull = response
    * print 'Response length is' response.length
    And match response.bookingid != null
    And match $..firstname == "kuntal"
    And match bookingdates == '#present'
    And def firstname = response.booking.firstname
    And def bookingid = response.bookingid
    And def bookingdates = $..checkin
    * print firstname
    * print bookingid
    * print bookingdates

    Examples: 
      | name   |
      | kuntal |
