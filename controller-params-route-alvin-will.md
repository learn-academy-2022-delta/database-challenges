# Controller 
### app/controllers/home_controller.rb
class HomeController < ApplicationController
    def landing 
    end

    def alvin
    end   
    
    def will
    end

    def cubed
        @cubed_num = params[:cubed_num]
        @cubed_num = @cubed_num.to_i**3
    end

    def evenly
        @even_div1 = params[:even_div1]
        @even_div2 = params[:even_div2]

        if @even_div1.to_i % @even_div2.to_i == 0
            @results = @even_div1 + " is divisible by " + @even_div2
        else
            @results = @even_div1 + " is not divisible by " + @even_div2
        end

    end

    def palindrome
        @palindrome_word = params[:palindrome_word]

        if @palindrome_word.downcase != @palindrome_word.downcase.reverse  
              @results = @palindrome_word + " is not a palindrome."
        else
            @results = @palindrome_word + " is a palindrome."  
        end

    end

    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adj = params[:adj]
        @adv = params[:adv]

            @results = "Once upon a time there was a " + @noun + " who lived in a well furnished box in Malibu and spends all his time " + @verb + ". One day someone " + @adv + " punted his box and it rolled into the " + @adj + " ocean. THE END" 
    end
end


# Routes 
### config/routes.rb
Rails.application.routes.draw do
  <!-- # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index" -->
  get '/landing' => 'home#landing'
  root to: 'home#landing'
  get '/alvin' => 'home#alvin'
  get '/will' => 'home#will'
  get '/cubed/:cubed_num' => 'home#cubed'
  get '/evenly/:even_div1/:even_div2' => 'home#evenly'
  get '/palindrome/:palindrome_word' => 'home#palindrome'
  get '/madlib/:noun/:verb/:adv/:adj' => 'home#madlib'
end


## app/views/home/landing.html.erb
    <h1> Welcome to the best page everrrr! </h1>
    <%= link_to 'Alvin', '/alvin' %>
    <br/>
    <%= link_to 'Will' , '/will' %>
    <br/>
    <%= link_to 'Cubed Number' , '/cubed/:cubed_num' %>
    <br/>
    <%= link_to 'Divisble Numbers' , '/evenly/:even_div1/:even_div2' %>
    <br/>
    <%= link_to 'Palindrome' , '/palindrome/:palindrome_word' %>
    <br/>
    <%= link_to 'Madlib' , '/madlib/:noun/:verb/:adv/:adj' %>

## app/views/home/alvin.html.erb
    <h1> Hello, Welcome to Alvin's Page! <h1>

    <h2> Alvin's Top 3 foods <h2>
    <ul>
        <li> Sushi </li>
        <li> Pizza </li>
        <li> BBQ </li>
    </ul>

## app/views/home/will.html.erb
    <h1> HEY HEYYYY, Welcome to Will's Page! <h1>

    <h2> Will's Top 3 Albums <h2>

    <ul>
        <li> Miseducation of Lauyrn Hill </li>
        <li> Kenny Loggins' Greatest Hits </li>
        <li> Veggie Tales: Silly SOngs with Larry </li>
    </ul>

## app/views/home/cubed.html.erb
    <h1>
    <%=@cubed_num%>
    </h1>


## app/views/home/evenly.html.erb
    <h2> <%=@results%> </h2>

## app/views/home/palindrome.html.erb
    <h2> <%=@results%> <h2>

## app/views/home/madlib.html.erb
    <h3> <%=@results%> <h3>


