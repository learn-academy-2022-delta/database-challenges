


Challenges
Routes, Views, Controllers

As a user, I can visit a custom landing page at localhost:3000.

http://localhost:3000/landing
Welcome to this app!


As a user, I can see the names of my team members as hyperlinks on the landing page.


As a user, I can click on each team member's name and be taken to a page that displays a list of that team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)

http://localhost:3000/alex
alex
pizza
LOTR
MACOS

http://localhost:3000/william
William
pizza
Batman
MACOS




Params

As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.

http://localhost:3000/cubed/10
this is your number cubed
answer 1000

As a user, I can visit a page called evenly that takes two numbers as params and displays whether or not the first number is evenly divisible by the second.

http://localhost:3000/evenly/10/5
This is dividing number 10 by 5
answer is: evenly divisble



As a user, I can visit a page called palindrome that takes a string as a param and displays whether it is a palindrome (the same word forward and backward).

http://localhost:3000/palindrome/civic

is civic a palindrome
palindrome



As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story.

http://localhost:3000/madlib/dog/ran/very/fast

The dog ran very fast


-- home controller

class HomeController < ApplicationController

    def landing

	end
    def william

    end
    def alex

    end

    def cubed
        @number = params[:number]
        @result = @number.to_i * @number.to_i * @number.to_i 

    end

    def evenly
        @number1 = params[:number1]
        @number2 = params[:number2]
        if @number1.to_i % @number2.to_i == 0
            @result1 = "evenly divisble"
        else 
            @result1 = "not evenly divisible"
        end

    end

    def palindrome
        @word = params[:word]
        if @word == @word.reverse 
            @result2 = "palindrome"
        else
            @result2 = "not palindrome"
        end
    end

    def madlib 
        @verb = params[:verb]
        @noun = params[:noun]
        @adjective = params[:adjective]
        @adverb = params[:adverb]

    end




end


-- routes.rb 

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/landing' => 'home#landing'
  get '/william' => 'home#william'
  get '/alex' => 'home#alex'
  get '/cubed/:number' => 'home#cubed'
  get '/evenly/:number1/:number2' => 'home#evenly'
  get '/palindrome/:word' => 'home#palindrome'
  get '/madlib/:noun/:verb/:adjective/:adverb' => 'home#madlib'
  # Defines the root path route ("/")
  # root "articles#index"
end


