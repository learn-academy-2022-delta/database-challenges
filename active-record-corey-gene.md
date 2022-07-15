<!-- Challenge: Rolodex
As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

Create a new Rails app named 'rolodex_challenge'.

# rails new rolodex_challenge -d postgesql -T

Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'

rails db:create

Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.

# rails generate model Person first_name:string last_name:string phone:string 


Run a migration to set up the database.
Open up Rails console.
Actions

#rails db:migrate

Add five family members into the Person table in the Rails console.
# rails c (console)

# Person.create first_name:"corey", last_name:"arnold",phone:"916-296-6213"

# Person.create first_name:"gene", last_name:"martinez", phone:"951-550-1025"

#  Person.create first_name:"jenaya", last_name:"arnold", phone:"916-990-1239"


Retrieve all the items in the database.
Add yourself to the Person table.

# Person.all

Retrieve all the entries that have the same last_name as you.

# Person.where(last_name:"arnold")

Update the phone number of the last entry in the database.


# phone = Person.last
# phone.update(phone:"916-123-4567")

Retrieve the first_name of the third Person in the database.

# Person.third

Stretch Challenges

Update all the family members with the same last_name as you, to have the same phone number as you.

# same_last = Person.where(last_name:"arnold")
# same_last.update(phone:"000-234-5678")

Remove all family members that do not have your last_name. -->

# last = Person.where.not(last_name:"arnold")
# last.destroy 2