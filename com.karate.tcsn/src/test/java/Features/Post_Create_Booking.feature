Feature: Creates a new booking in the API

  Background: 
    * def request_headers = {Connection:'keep-alive', Content-Type:'application/json', Accept:'application/json'}
    * def req = read('classpath:src/test/java/input/Create_Booking_Payload.json')
    * def getDate = function(){ return java.lang.System.nanoTime() }
    * def time = getDate()
    * def randomString = 'user' + time + '_Test'
    
 @tag1
  Scenario Outline: Creates a new booking in the API
    Given url 'https://restful-booker.herokuapp.com/booking'
    And headers request_headers
    * set req.firstname = randomString
    # Can appned addition attribute in the json using set keyword and set string as well
    # * set req.middlename = '<middlename>'
    And request req
    * print req
    #When method POST
   # Then status 200
   # * print response
   
   Examples:
   |name|middlename|
   |kuntal|jain|
   |jain|test|
   
   
     Scenario Outline: Creates a new booking in the API
    Given url 'https://restful-booker.herokuapp.com/booking'
    And headers request_headers
    * set req.firstname = randomString
    # Can appned addition attribute in the json using set keyword and set string as well
    # * set req.middlename = '<middlename>'
    And request req
    * print req
    #When method POST
   # Then status 200
   # * print response
   
   Examples:
   |name|middlename|
   |kuntal|jain|
   |jain|test|
 