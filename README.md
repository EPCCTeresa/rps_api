# RPS

This API provides and endpoint to play RPS game.
# Requirements

### Ruby version
Ruby 3.0.0

Test enviroment:
* RSpec
* Simplecov

## Installation

Download this repo by using git clone command and execute in your local machine:

    $ bundle install

## Execution
After downloading and installing the proyect, let's execute the server by runn

    $ rails s
    
Now the server is ready to receive petitions. There are two options:

1. Go to a web browser and use the url: http:/localhost::3000. Would need to follow the flow of the app by clicking on "Start" and after that the user will be redirected to a form where they can choose the movement. The user will need to use "rock", "paper" or "scissors" in the textfield "Choice". In case the user enters an invalid option, the bot wins.
2. Use a HTTP client and make a POST call to the url: http://localhost:3000/result/create?name="user_name"&move="user_move"
The user will need to use their name instead of "user_name" and also will need to indicate one of the moves indicated above in the point 1. 

# Features

### Unit tests
Starting from tests, the script test coverage is 98.25%. The whole test suite existis in the `/spec` folder. To run test you need to run command:
```bash
rspec
```
Afterwards the coverage report will be automatically generated in the `/coverage` folder and can be viewed in the browser by opening `index.html` file.

### Functionality
The API read the name and the move the user chooses, calculates the result depending on the bot movement and report the user the output of the game. 


# Technical decisions

The idea is to build a API that after applying the required engine, can say who is the winner of a Rock, Paper Scissors movement. So the idea I had after analysing the problem was to do it by implementing a logic that can generate randomly the bot choice and the logic that decides who is the winner. We all know that rock wins scissors, so created a Hash that gives us this relation where the "rock" would be a key of the Hash and scissors would be the value.





