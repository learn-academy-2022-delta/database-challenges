
Model Creation:

rails generate model Owner name:string address:string wallet:string 
      invoke  active_record
      create    db/migrate/20220718181205_create_owners.rb
      create    app/models/owner.rb


rails generate model Credit_Card number:string expiration_date:string owner:string 
      invoke  active_record
      create    db/migrate/20220718181339_create_credit_cards.rb
      create    app/models/credit_card.rb


Model Classes:

- app/models/owner.rb
    class Owner < ApplicationRecord
        has_many :credit_cards
    end
- app/models/credit_cards.rb
    class CreditCard < ApplicationRecord
        belongs_to :owner
    end

Added Owners: 

- rails c 
- Owner.create(name:"Tom", address:"123 Apple Street", wallet: 2)
- Owner.create(name:"Bob", address:"567 Peach Blvd", wallet: 5)
- Owner.create(name:"Ivin", address:"4054 Carpenter Ave", wallet: 3)

Added Credit Cards: 

- tom=Owner.find(1)
- rails g migration change_column_owner_to_owner_id
- CreditCard.create(number:1234, expiration: 01/26)
- Owner.credit_cards
- rails db:migrate