Setup
Create a new rails application and database
Create a model for owner
<!-- rails generate model Owner name:string address:string -->
An owner has a name and address, and can have multiple credit cards
Create a model for credit card
A credit card has a number, an expiration date, and an owner
<!-- rails generate model CreditCard number:string expiration_date:string owner_id:integer -->
Challenges
Create three owners and save them in the database
<!-- 3.0.0 :004 > Owner.all
  Owner Load (0.4ms)  SELECT "owners".* FROM "owners"
 =>                                                          
[#<Owner:0x000000012e88eff8                                  
  id: 1,                                                     
  name: "Felipe",                                            
  address: "177 Codingishard Dr",                            
  created_at: Mon, 18 Jul 2022 18:07:46.224434000 UTC +00:00,
  updated_at: Mon, 18 Jul 2022 18:07:46.224434000 UTC +00:00>,
 #<Owner:0x000000012e88ecb0                                  
  id: 2,                                                     
  name: "Doris",                                             
  address: "1512 MLK BLVD",                                  
  created_at: Mon, 18 Jul 2022 18:09:27.397112000 UTC +00:00,
  updated_at: Mon, 18 Jul 2022 18:09:27.397112000 UTC +00:00>,
 #<Owner:0x000000012e88ead0                                  
  id: 3,
  name: "Barney",
  address: "PBS Kids Ln",
  created_at: Mon, 18 Jul 2022 18:11:06.284378000 UTC +00:00,
  updated_at: Mon, 18 Jul 2022 18:11:06.284378000 UTC +00:00>] -->
Create a credit card in the database for each owner
<!-- #<CreditCard:0x0000000103875830
 id: 1,
 number: "1234567890123456",
 expiration_date: "05/05/2025",
 owner_id: 1,
 created_at: Mon, 18 Jul 2022 18:21:36.246680000 UTC +00:00,
 updated_at: Mon, 18 Jul 2022 18:21:36.246680000 UTC +00:00> 
#<CreditCard:0x000000011e61c190                                                          
 id:2,                                                                                  
 number: "2345678901234567",                                                             
 expiration_date: "01/17/2023",                                                          
 owner_id:2,                                                                            
 created_at: Mon, 18 Jul 2022 18:27:36.289904000 UTC +00:00,                             
 updated_at: Mon, 18 Jul 2022 18:27:36.289904000 UTC +00:00> -->
<!-- #<CreditCard:0x000000013e538b00                                                           
 id:3,                                                                                   
 number: "3456789012345678",                                                              
 expiration_date: "07/11/2039",                                                           
 owner_id:3,                                                                             
 created_at: Mon, 18 Jul 2022 18:29:35.412131000 UTC +00:00,                              
 updated_at: Mon, 18 Jul 2022 18:29:35.412131000 UTC +00:00>                              
3.0.0 :017 >  -->

Add two more credit cards to one of the owners
<!-- #<CreditCard:0x000000011f098358                                                          
 id:4,                                                                                  
 number: "4567890123456789",                                                             
 expiration_date: "06/19/2033",                                                          
 owner_id:2,                                                                            
 created_at: Mon, 18 Jul 2022 18:32:00.001719000 UTC +00:00,                             
 updated_at: Mon, 18 Jul 2022 18:32:00.001719000 UTC +00:00>                             
3.0.0 :018 > -->

<!-- #<CreditCard:0x000000011f071438                                                          
 id:5,                                                                                  
 number: "5678901234567890",                                                             
 expiration_date: "12/26/2099",                                                          
 owner_id:2,                                                                            
 created_at: Mon, 18 Jul 2022 18:33:38.770776000 UTC +00:00,                             
 updated_at: Mon, 18 Jul 2022 18:33:38.770776000 UTC +00:00>                             
3.0.0 :019 > -->
Stretch Challenge
Add a credit limit to each card
<!-- [#<CreditCard:0x0000000133c74730                                  
  id: 1,                                                          
  number: "1234567890123456",                                     
  expiration_date: "05/05/2025",                                  
  owner_id: 1,                                                    
  created_at: Mon, 18 Jul 2022 18:21:36.246680000 UTC +00:00,     
  updated_at: Mon, 18 Jul 2022 18:52:50.044863000 UTC +00:00,     
  credit_limit: 500>,                                             
 #<CreditCard:0x0000000133c6ff78                                  
  id: 2,                                                          
  number: "2345678901234567",                                     
  expiration_date: "01/17/2023",                                  
  owner_id: 2,                                                    
  created_at: Mon, 18 Jul 2022 18:27:36.289904000 UTC +00:00,
  updated_at: Mon, 18 Jul 2022 18:56:22.223284000 UTC +00:00,
  credit_limit: 50000>,
 #<CreditCard:0x0000000133c6fc08
  id: 4,
  number: "4567890123456789",
  expiration_date: "06/19/2033",
  owner_id: 2,
  created_at: Mon, 18 Jul 2022 18:32:00.001719000 UTC +00:00,
  updated_at: Mon, 18 Jul 2022 18:57:19.853470000 UTC +00:00,
  credit_limit: 100000>,
 #<CreditCard:0x0000000133c6fac8
  id: 5,
  number: "5678901234567890",
  expiration_date: "12/26/2099",
  owner_id: 2,
  created_at: Mon, 18 Jul 2022 18:33:38.770776000 UTC +00:00,
  updated_at: Mon, 18 Jul 2022 18:58:15.901797000 UTC +00:00,
  credit_limit: 30>,
 #<CreditCard:0x0000000133c6fa00
  id: 3,
  number: "3456789012345678",
  expiration_date: "07/11/2039",
  owner_id: 3,
  created_at: Mon, 18 Jul 2022 18:29:35.412131000 UTC +00:00,
  updated_at: Mon, 18 Jul 2022 19:00:51.291837000 UTC +00:00,
  credit_limit: 10000000>] -->
Find the total credit extended to the owner with multiple credit cards