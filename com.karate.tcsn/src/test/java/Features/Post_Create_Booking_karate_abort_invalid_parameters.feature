Feature: karate abort on specifc condition if 400 bad request 

  Background: 
    * def request_headers = {Connection:'keep-alive', Content-Type:'application/json', Accept:'application/json'}
    * def req = read('classpath:src/test/java/input/Create_Booking_Incorrect_Payload.json')
    * def getDate = function(){ return java.lang.System.nanoTime() }
    * def time = getDate()
    * def randomString = 'user' + time + '_Test'

  
  # data driven through using setting random string function
  @tag99
  Scenario: Creates a new booking in the API
    Given url 'https://restful-booker.herokuapp.com/booking'
    And headers request_headers
    And request req
    * print req
    When method POST
    # * if (responseStatus == 500) karate.abort
    * if (responseStatus == 500) karate.fail('failed due to 500 internal server error')
    Then status 200
    * print response

