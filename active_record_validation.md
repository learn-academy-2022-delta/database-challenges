<!-- Validations Challenges
Create a Rails application called company_contacts. The app will have a PostgreSQL database.
Generate a model called Account that has a username, a password, and an email.
All stories should have accompanying model specs.
Developer Stories

As a developer, I need username, password, and email to be required.
As a developer, I need every username to be at least 5 characters long.
As a developer, I need each username to be unique.
As a developer, I need each password to be at least 6 characters long.
As a developer, I need each password to be unique.
As a developer, I want my Account model to have many associated Addresses.
As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.
As a developer, I want to validate the presence of all fields on Address.
Stretch Challenges

As a developer, I need each Account password to have at least one number.
HINT: Read about custom validations in the Active Record validation docs.
As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
HINT: Read about :scope in the Active Record validation docs.
As a developer, I want to validate that the Address street_number and zip are numbers.
HINT: Read about numericality in the Active Record validation docs.
As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are no -->

➜  Week 6 touch active_record_validation.md
➜  Week 6 rails new validations -d postgresql -T
➜  validations git:(main) ✗ rails db:create
Created database 'validations_development'
Created database 'validations_test'

➜  validations git:(main) ✗ bundle add rspec-rails
➜  validations git:(main) ✗ rail g model Account user_name:string password:string email:string 
zsh: command not found: rail

➜  validations git:(main) ✗ rails g model Account user_name:string password:string email:string 
      invoke  active_record
      create    db/migrate/20220718220755_create_accounts.rb
      create    app/models/account.rb
      invoke    rspec
      create      spec/models/account_spec.rb
➜  validations git:(main) ✗ rails db:migrate

➜  validations git:(main) ✗ rails generate rspec:install
      create  .rspec
       exist  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb

      ➜  validations git:(main) ✗ rspec spec/models/account_spec.rb

Failed examples:

rspec ./spec/models/account_spec.rb:4 # Account is valid with valid attributes
rspec ./spec/models/account_spec.rb:10 # Account is not valid without a user name

<!-- account_rspec -->
require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create(user_name: 'Sadie', password: 'Ilovecookies', email: 'mommysprincess@hotdogs.com')
    expect(account).to be_valid
  end

  it 'is not valid without a user name' do
    account = Account.create(password: 'Ilovecookies', email: 'mommysprincess@hotdogs.com')
    expect(account.errors[:user_name]).to_not be_empty
  end
  it 'is not valid without a user name' do
    account = Account.create(user_name: 'blue')
    expect(account.errors[:user_name]).to_not be_empty
  end
  it 'is not valid without a user name' do
    account = Account.create(user_name: 'blue')
    expect(account.errors[:user_name]).to_not be_empty
  end
   it 'is not valid without a user name' do
    account = Account.create(password: 'Ilove')
    expect(account.errors[:password]).to_not be_empty
   end
    it 'is not valid without a user name' do
      account = Account.create(password: 'Ilove')
      expect(account.errors[:password]).to_not be_empty
   end
end

<!-- account.rb -->
class Account < ApplicationRecord
    validates :user_name, :password, :email, presence: true 
    validates :user_name, length: { minimum: 5 }
    validates :user_name, uniqueness: true
    validates :password, length: { minimum: 6}
    validates :password, uniqueness: true
end


