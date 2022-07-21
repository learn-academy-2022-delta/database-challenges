# Setup: 
- $ rails new company_contacts -d postgresql -T
- $ cd company_contacts 
- rails db:create

# Installed RSpec gem -->
-$ bundle add rspec-rails

Generated a spec folder to hold our RSpec tests
- $rails generate rspec:install 

# Model Creation --> 
- $ rails g model Account username:string password:string email:string
- $ rails db:migrate

- # app/db/migrate/schema.rb 

 create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Developer Stories:

1.) As a developer, I need username, password, and email to be required. (DONE)

-  app/spec/models/account_spec.rb

require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do 
    account = Account.create(username: 'yoloKing', password: 'appleSauce123?', email: 'donutcake@aol.com')
    expect(account).to be_valid 
  end 
end

- RSpec Results: 

rspec spec/models/account_spec.rb
.

Finished in 0.04236 seconds (files took 1.52 seconds to load)
1 example, 0 failures
 
2.) As a developer, I need every username to be at least 5 characters long. (DONE)

3.) As a developer, I need each username to be unique. (DONE)

4.) As a developer, I need each password to be at least 6 characters long. (DONE)

5.) As a developer, I need each password to be unique.

As a developer, I want my Account model to have many associated Addresses.

As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.

As a developer, I want to validate the presence of all fields on Address.
