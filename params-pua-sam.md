Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'main#cubed'
  get '/cubed/:number_cubed' => 'main#cubed'
  get '/madlib/:noun/:verb/:adv/:adj' => 'main#madlib'
  get '/palindrome/:string' => 'main#palindrome'
  get '/evenly/:num1/:num2' => 'main#evenly'

end


class MainController < ApplicationController
    def cubed
        @number_cubed = params[:number_cubed]
        @result = @number_cubed.to_i ** 3
    end
    def evenly
        @num1 = params[:num1]
        @num2 = params[:num2]
        @result = @num1 % @num2 == 0
    end
    def palindrome
        @string = params[:string]
        @result = @string == @string.reverse
    end
    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adj = params[:adj]
        @adv = params[:adv]
        @result = "Today, every student has a computer small enough to fit into there #{@noun}. They can solve any math problem by simply pushing the computer's little #{@noun}. Computers can add, multipy, divide, and #{@adv} #{@verb}. They can also #{@verb} better than a human. Some computers are brains. Others have a/an #{@adj} screen that shows all kinds of #{@noun} and #{@adj} figures." 
    end
end

madlib.html.erb
<h1> Madlib Time </h1>

<h3> <%=@result %> </h3>


cubed.html.erb
<h1>The Cubed</h1> 
<h2> <%= @result %> </h2>

<%= link_to 'evenly', '/evenly/:num1/:num2' %>
</br>
<%= link_to 'palindrome', '/palindrome/:string' %>
</br>
<%= link_to 'madlib', '/madlib/:noun/:verb/:adv/:adj' %>


evenly.html.erb
<h1> Does It Divide Evenly? </h1>
<h2> <%= @result %> </h2>


palindrome.html.erb
<h1> Is It A Palindrome? </h1>
<h2> <%= @result %> </h2>