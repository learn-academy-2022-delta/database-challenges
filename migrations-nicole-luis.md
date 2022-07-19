Create:
    Movie.create movie_title:"The Hangover", movie_category:"Comedy"

    Movie.create movie_title:"Titanic", movie_category:"Romance"

    Movie.create movie_title:"Good Fellas", movie_category:"Action"

    Movie.create movie_title:"Scarface", movie_category:"Action"

    Movie.create movie_title:"A Bronx Tale", movie_category:"Drama"

Create Migration:
rails g migration add_column_movie_length_to_movie
rails db:migrate