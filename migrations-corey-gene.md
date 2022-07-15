<!-- Favorite Movies Challenge
Setup
Create a new Rails application called 'favorite_movies'.
Create the database
Generate a Movie model with a title attribute and a category attribute
Challenges
Add five entries to the database via the Rails console
Create a migration to add a new column to the database called movie_length

 rails g migration add_column_movie_length_to_movies
 changes in file - add_column :movies, :movie_length, :string
 rails db:migrate

Update the values of the five existing attributes to include a movie_length value


Generate a migration to rename the column 'category' to 'genre' 

rails generate migration change_column_name_category_to_genre
rename_column :movies, :category, :genre -->