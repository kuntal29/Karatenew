# Simple get list of all booking ids and check status
Feature: to get the date using js function

Background:
* def request_headers = {Connection:'keep-alive', Content-Type:'application/json', Accept:'application/json'}
* def date = read ('karate-config.js')
* def add = Function ("num1", "num2", "return num1 + num2")
* def sum = add(2,5)
* def num1 = 10
* def num2 = 20
* def num = (num1 > num2) ? "num1 is greater" : "Num2 is greater"
* def date = read('date.js')



  @tag22
  Scenario: To get the list of booking ids
  * print request_headers
  * print sum
  * print num
  * print month