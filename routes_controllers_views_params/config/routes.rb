Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/landing' => 'home#landing'
  root to: 'home#landing'
  get '/alvin' => 'home#alvin'
  get '/will' => 'home#will'
  get '/cubed/:cubed_num' => 'home#cubed'
  get '/evenly/:even_div1/:even_div2' => 'home#evenly'
  get '/palindrome/:palindrome_word' => 'home#palindrome'
  get '/madlib/:noun/:verb/:adv/:adj' => 'home#madlib'
end
