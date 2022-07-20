
We set up the database and models
---------------------------------
rails db:create

rails g model Owner name:string address:string

rails g model Card card_number:string exp_date:string owner_id:integer

rails db:migrate

Here we create the owners
---------------------------------
Owner.create(name:"Alvin",address:"123 Airforce Ln")
Owner.create(name:"Gene",address:"321 Army Rd")
Owner.create(name:"Batman",address:"555 Joker Ave")

We set each owner to a variable
---------------------------------
alvin = Owner.where(name:"Alvin").first
gene = Owner.find(2)
batman = Owner.find(3)

Here we create credit cards for each owner + 2 more for Alvin
---------------------------------
alvin.cards.create card_number:"1234567887654321", exp_date:"07/2027" 
gene.cards.create card_number:"1234567887654300", exp_date:"05/2027" 
batman.cards.create card_number:"1234567887654312", exp_date:"06/2027" 

alvin.cards.create card_number:"1234567887656547", exp_date:"07/2024" 
alvin.cards.create card_number:"1234567887658243", exp_date:"03/2025" 





