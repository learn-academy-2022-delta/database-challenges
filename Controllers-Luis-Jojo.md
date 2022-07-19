class MainController < ApplicationController
    def my_team
    end
    def iron_man
    end
    def black_widow
    end
    def captain_america
    end
    def cubed
        @mynum = params[:mynum]
        @result = @mynum.to_i**3
    end
     def evenly 
        @num1 = params[:num1]
        @num2 = params[:num2]
        if @num1.to_i / @num2.to_i % 2 === 0 
           @result = "#{@num1} is evenly divisbly by #{@num2}."
        else
           @result = "#{@num1} is not evenly divisble by #{@num2}."
        end
    end
end

app/views/main/my_team.html.erb

<h1>The Avenger's Team</h1>

<%= link_to 'Iron Man', '/iron_man' %> 
<br/>
<%= link_to 'Black Widow', '/black_widow' %> 
<br/>
<%= link_to 'Captain America', '/captain_america' %> 


app/views/main/black_widow.html.erb

<h1>Black Widow's Favorite Ninja Moves</h1>

<ul>
    <li>Scissor Leg Take Down</li>
    <li>Grappling</li>
    <li>Kicking</li>
</ul>

app/views/main/captain_america.html.erb

<h1>Captain America's Best Quotes</h1>

<ul>
    <li>"This is America's Ass!"</li>
    <li>"I can do this all day."</li>
    <li>"Avenger's assemble!"</li>
</ul>

app/views/main/iron_man.html.erb

<h1>Iron Man's Favorite Foods</h1>

<ul>
    <li>Burgers and Boos</li>
    <li>Corndogs</li>
    <li>Pecking Duck</li>
</ul>

app/views/main/cubed.html.erb

<h1>Three's Company</h1>

<h3>Janet has <%= @mynum %> skirts.</h3>

<h3>Janet had a birthday and now has <%= @result %> skirts.</h3>

app/views/main/evenly.html.erb

<h1>Evenly Divisble</h1>

<h3> Two numbers walk into a bar and need to split the bill. Will they split evenly down the middle? Or will a massive bar fight break out? <%= @result %></h3>

config/routes.rb

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
  get '/iron_man' => 'main#iron_man'
  get '/black_widow' => 'main#black_widow'
  get '/captain_america' => 'main#captain_america'
  get '/cubed/:mynum' => 'main#cubed'
  get '/evenly/:num1/:num2' => 'main#evenly'
  get '/my_team' => 'main#my_team'
  root to: 'main#my_team'
end

