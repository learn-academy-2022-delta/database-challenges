<!-- Setup
Create a new rails application and database
Create a model for owner
An owner has a name and address, and can have multiple credit cards
Create a model for credit card
A credit card has a number, an expiration date, and an owner -->

➜  desktop cd owner_challenges
➜  owner_challenges git:(main) ✗ rails db:create
Created database 'owner_challenges_development'
Created database 'owner_challenges_test'
➜  owner_challenges git:(main) ✗ rails generate model Owner name:string address:string 
      invoke  active_record
      create    db/migrate/20220718175113_create_owners.rb
      create    app/models/owner.rb
➜  owner_challenges git:(main) ✗ rails generate model CreditCard number:string expiration_date:string owner:string
      invoke  active_record
      create    db/migrate/20220718175254_create_credit_cards.rb
      create    app/models/credit_card.rb
➜  owner_challenges git:(main) ✗ code .

Go to App -> models ->
class Owner < ApplicationRecord
    has_many :CreditCards
end

class CreditCard < ApplicationRecord
    belongs_to :owner
end

<!-- Setup
Create a new rails application and database
Create a model for owner
An owner has a name and address, and can have multiple credit cards
3.0.0 :004 > Owner.create(name:'Jerry', address:'129 W 81st St')
  TRANSACTION (17.2ms)  BEGIN
  Owner Create (1.4ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Jerry"], ["address", "129 W 81st St"], ["created_at", "2022-07-18 18:09:41.130970"], ["updated_at", "2022-07-18 18:09:41.130970"]]                                            
  TRANSACTION (9.0ms)  COMMIT                                                 
 =>                                                                           
#<Owner:0x00007f92db95da88                                                    
 id: 1,                                                                       
 name: "Jerry",                                                               
 address: "129 W 81st St",                                                    
 created_at: Mon, 18 Jul 2022 18:09:41.130970000 UTC +00:00,                  
 updated_at: Mon, 18 Jul 2022 18:09:41.130970000 UTC +00:00>                  
3.0.0 :005 > Owner.create(name:'Winnie The Pooh', address:'100 Acres Woods W')
  TRANSACTION (0.3ms)  BEGIN
  Owner Create (0.5ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Winnie The Pooh"], ["address", "100 Acres Woods W"], ["created_at", "2022-07-18 18:10:37.855930"], ["updated_at", "2022-07-18 18:10:37.855930"]]                                
  TRANSACTION (1.1ms)  COMMIT                                                   
 =>                                                                             
#<Owner:0x00007f92db17c490                                                      
 id: 2,                                                                         
 name: "Winnie The Pooh",                                                       
 address: "100 Acres Woods W",                                                  
 created_at: Mon, 18 Jul 2022 18:10:37.855930000 UTC +00:00,                    
 updated_at: Mon, 18 Jul 2022 18:10:37.855930000 UTC +00:00>                    
3.0.0 :006 > Owner.create(name:'Bonnie', address:'145 Grape St')
  TRANSACTION (0.9ms)  BEGIN
  Owner Create (6.7ms)  INSERT INTO "owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Bonnie"], ["address", "145 Grape St"], ["created_at", "2022-07-18 18:12:10.235656"], ["updated_at", "2022-07-18 18:12:10.235656"]]                                            
  TRANSACTION (5.6ms)  COMMIT                                                 
 =>                                                                           
#<Owner:0x00007f92d5488cc0                                                    
 id: 3,                                                                       
 name: "Bonnie",                                                              
 address: "145 Grape St",                                                     
 created_at: Mon, 18 Jul 2022 18:12:10.235656000 UTC +00:00,                  
 updated_at: Mon, 18 Jul 2022 18:12:10.235656000 UTC +00:00>      

Create a model for credit card

A credit card has a number, an expiration date, and an owner -->

class ChangeOwnerDataType < ActiveRecord::Migration[7.0]
  def change 
    remove_column :credit_cards, :owner
  end
end

class AddForeignKeyToCreditCard < ActiveRecord::Migration[7.0]
  def change
    add_column :credit_cards, :owner_id, :integer
  end
end
  

➜  owner_challenges git:(main) ✗ rails db:migrate
== 20220718184247 ChangeOwnerDataType: migrating ==============================
-- remove_column(:credit_cards, :owner)
   -> 0.0034s
== 20220718184247 ChangeOwnerDataType: migrated (0.0036s) =====================

➜  owner_challenges git:(main) ✗ rails generate migration add_foreign_key_to_credit_card
      invoke  active_record
      create    db/migrate/20220718185743_add_foreign_key_to_credit_card.rb
➜  owner_challenges git:(main) ✗ rails db:migrate                                       
== 20220718185743 AddForeignKeyToCreditCard: migrating ========================
-- add_column(:credit_cards, :owner_id, :integer)
   -> 0.0315s
== 20220718185743 AddForeignKeyToCreditCard: migrated (0.0316s) ===============

➜  owner_challenges git:(main) ✗ 