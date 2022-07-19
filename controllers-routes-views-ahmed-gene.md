//////this is our controll

class MainController < ApplicationController
  def greeter 
  end
  def ahmed 
  end
  def gene
  end
  def cubed
    @number = params[:number].to_i
    @cubed = @number * @number * @number
  end
  def evenly
    @value1 = params[:value1].to_i
    @value2 = params[:value2].to_i
    if @value1 % @value2 == 0 
      @answer= 'it is evenly divisible.'
    else 
      @answer= 'it is not evenly divisible.'
    end
  end
  def palindrome
    @word = params[:word].to_s
    if @word == @word.reverse
    @palindrome = "it is a palindrome"
    else 
      @palindrome = "it is not a palindrome"
    end
  end
  def madlib 
    @noun = params[:noun].to_s
    @verb = params[:verb].to_s
    @adjective = params[:adjective].to_s
    @adverb = params[:adverb].to_s
  end
end

///////this is our html.erb
<h1>short silly story</h1>
<h3>I was playing with my <%=@adjective%> <%=@noun%>, when
/////
<h1> Is the word a palindrome or not </h1>
<%= @palindrome %>
/////
<h1>Team Members</h1>
<%= link_to 'Ahmed', '/Ahmed' %>
<%= link_to 'Gene', '/Gene' %>
//////
<h1>Doughnut Shoppes</h1>
<h3> 1. Randy's Donuts </h3>
<h3> 2. Krsipy Kreme </h3>
<h3> 2. Dunkin Donuts </h3>
////////
<h1>is the first number evenly divisible by the second</h1>
<%= @answer %>
////////
<h1>Activites</h1>
<h3> 1. Going to the gym </h3>
<h3> 2. Going to soccer practice </h3>
<h3> 2. Visiting new places </h3>
/////////
<h1>This is your number cubed</h1>
<%= @cubed %>

///////this is our routes.rb
Rails.application.routes.draw do
  root 'main#greeter'  
  get '/greeter' => 'main#greeter'
  get '/Ahmed' => 'main#Ahmed'
  get '/Gene' => 'main#Gene'
  get '/cubed/:number' => 'main#cubed'
  get '/evenly/:value1/:value2' => 'main#evenly'
  get '/palindrome/:word' => 'main#palindrome'
  get '/madlib/:noun/:verb/:adjective/:adverb' => 'main#madlib'

end


   
































