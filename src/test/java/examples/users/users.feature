Feature: sample karate test script

#Background:
#* configure ssl = true

Scenario: Valid GET endpoint

Given url 'https://jsonplaceholder.typicode.com/todos/1'
When method GET
Then status 200
And match response.title contains 'delectus aut autem'

Scenario: Valid Post endpoint

Given url 'https://jsonplaceholder.typicode.com/posts'
And request {"title": "foo", "body": "bar", "userId": 1}
When method POST
Then status 201
And match response.title contains 'foo'
And def resp = response