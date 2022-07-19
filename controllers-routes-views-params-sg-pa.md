<!-- Routes, Views, Controllers Challenge -->
app/controllers/main_controller.rb
class MainController < ApplicationController
    def top_three
        @name1 = 'Samuel'
        @name2 = 'Pua'
        @name3 = 'Billy'
    end

end

config/routes.rb
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/top_three' => 'main#top_three'
  get '/name1' => 'main#name1'
  get '/name2' => 'main#name2'
  get '/name3' => 'main#name3'
  root to: 'main#top_three'
end

app/views/main/top_three.html.erb
<h1> Top Three </h1>

<%= link_to 'Samuel', '/name1' %>
</br>
<%= link_to 'Pua', '/name2' %>
</br>
<%= link_to 'Billy', '/name3' %>

app/views/main/name1.html.erb
<h1> Top Three Favorites </h1>
<h2>Samuel</h2>

<h2>Things</h2>
<ul>
    <li>Sleep</li>
    <li>Clearwater Beach</li>
    <li>Krispy Kreme</li>
</ul>

app/views/main/name2.html.erb
<h1> Top Three Favorites </h1>
<h2>Pua</h2>

<h2>Things</h2>
<ul>
    <li>Dogs</li>
    <li>Gladiator</li>
    <li>Dark Souls</li>
</ul>

app/views/main/name3.html.erb
<h1> Top Three Favorites </h1>
<h2>Billy</h2>

<h2>Things</h2>
<ul>
    <li>Walks</li>
    <li>Goats</li>
    <li>Duck Donuts</li>
</ul>

<!-- Params Challenge -->