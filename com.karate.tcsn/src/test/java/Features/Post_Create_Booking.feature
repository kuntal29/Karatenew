Feature: Creates a new booking in the API

  Background: 
    * def request_headers = {Connection:'keep-alive', Content-Type:'application/json', Accept:'application/json'}
    * def req = read('classpath:src/test/java/input/Create_Booking_Payload.json')
    * def getDate = function(){ return java.lang.System.nanoTime() }
    * def time = getDate()
    * def randomString = 'user' + time + '_Test'

  # data driven through scenario outline and example table
  @tag1
  Scenario Outline: Creates a new booking in the API
    Given url 'https://restful-booker.herokuapp.com/booking'
    And headers request_headers
    * set req.firstname = '<name>'
    # Can appned addition attribute in the json using set keyword and set string as well
    # * set req.middlename = '<middlename>'
    And request req
    * print req
    When method POST
    Then status 200
    * print response

    Examples: 
      | name   |
      | kuntal |
      | jain   |

  # data driven through using setting random string function
  @tag1
  Scenario: Creates a new booking in the API
    Given url 'https://restful-booker.herokuapp.com/booking'
    And headers request_headers
    * set req.firstname = randomString
    And request req
    * print req
    When method POST
    Then status 200
    * print response
