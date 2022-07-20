<!-- home/controllers -->

class HomeController < ApplicationController
    def landing
    end
    def first_member
        @firstmember = "Leo"
    end
    def second_member
        @secondmember = "Nicole"
    end
    def cubed
        @yournumber = params[:yournumber]
        @result = @yournumber.to_i ** 3
    end
    def evenly
        @num1 = params[:num1]
        @num2 = params[:num2]
        if @num1.to_i % @num2.to_i == 0
             @results = "It is evenly divisible"
        else @num1.to_i % @num2.to_i != 0
            @results = "It is not evenly divisible"
        end
    end
    def palindrome
        @yourword = params[:yourword]
        if @yourword == @yourword.reverse
            @results = 'It is a Palindrome'
        else 
            @results = 'Is not a Palindrome'
        end
    end
end



<!-- app/config/routes -->

Rails.application.routes.draw do
 get '/landing' => 'home#landing'
 get '/first_member' => 'home#first_member'
 get '/second_member' => 'home#second_member'
 get '/cubed/:yournumber' => 'home#cubed'
 get '/evenly/:num1/:num2' => 'home#evenly'
 get '/palindrome/:yourword' => 'home#palindrome'

end



<!-- apps/views -->

<h1>Here are our favorites!</h1>

<%= link_to 'first_member', '/first_member' %>
<br/>

<%= link_to 'second_member', '/second_member' %>
<br/>

<%= link_to 'cubed', '/cubed' %>
<br/>

<%= link_to 'evenly', '/evenly' %>
<br/>

<%= link_to 'palindrome', '/palindrome' %>
<br/>

<!-- first member -->

<h1><%= @firstmember %></h1>
    <ul>
        <li>Call of Duty</li>
        <li>Music Festivals</li>
        <li>Basketball</li>
    </ul>

<!-- second member -->

<h1><%= @secondmember %></h1>
    <ul>
        <li>Cliff Jumping</li>
        <li>Movie Marathons</li>
        <li>Pasta</li>
    </ul>

<!-- Cubed -->

<h1>Are you squared or cubed!</h1>

<%= @cubed %>

  <p><%= @result %></p>

<!-- evenly -->

<h1>Divide your Odds!</h1>

<h3><%= @results %></h3>

<!-- palindrome -->

<h1>Put it in reverse Terry!</h1>

<h3> <%= @results %> </h3>
