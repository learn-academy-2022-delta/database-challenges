learnacademy@LEARNs-Air-6 database-challenges % rails new rolodex_challenge -d postgresql -T

learnacademy@LEARNs-Air-6 database-challenges % cd rolodex_challenge 
learnacademy@LEARNs-Air-6 rolodex_challenge % rails db:create
learnacademy@LEARNs-Air-6 rolodex_challenge % rails server

learnacademy@LEARNs-Air-6 rolodex_challenge % rails generate model Person first_name:string last_name:string phone:string


3.0.0 :001 > Person.create first_name: "Alvin", last_name: "Accad", phone: "123-456-7890"
3.0.0 :003 > Person.create first_name: "Joe", last_name: "Smith", phone: "111-222-3333"
3.0.0 :004 > Person.create first_name: "John", last_name: "Appleseed", phone: "222-333-4444"
3.0.0 :005 > Person.create first_name: "Bob", last_name: "Andy", phone: "000-000-0000"
3.0.0 :006 > Person.create first_name: "Jim", last_name: "Halpert", phone: "987-654-3210"
3.0.0 :009 > Person.add first_name: "Joyce", last_name: "Accad", phone: "112-334-5556"

3.0.0 :013 > joyce = Person.find 6
3.0.0 :015 > joyce.phone="112-334-5550"
 => "112-334-5550" 
3.0.0 :016 > joyce.save

[#<Person:0x000000014f8a5188                                  
  id: 1,                                                      
  first_name: "Alvin",                                        
  last_name: "Accad",                                         
  phone: "123-456-7890",                                      
  created_at: Fri, 15 Jul 2022 16:42:50.909690000 UTC +00:00, 
  updated_at: Fri, 15 Jul 2022 16:42:50.909690000 UTC +00:00>,
 #<Person:0x000000014f8a50c0                                  
  id: 2,                                                      
  first_name: "Joe",                                          
  last_name: "Smith",                                         
  phone: "111-222-3333",                                      
  created_at: Fri, 15 Jul 2022 16:44:07.032751000 UTC +00:00, 
  updated_at: Fri, 15 Jul 2022 16:44:07.032751000 UTC +00:00>,
 #<Person:0x000000014f8a4ff8
  id: 3,
  first_name: "John",
  last_name: "Appleseed",
  phone: "222-333-4444",
  created_at: Fri, 15 Jul 2022 16:44:56.865730000 UTC +00:00,
  updated_at: Fri, 15 Jul 2022 16:44:56.865730000 UTC +00:00>,
 #<Person:0x000000014f8a4f30
  id: 4,
  first_name: "Bob",
  last_name: "Andy",
  phone: "000-000-0000",
  created_at: Fri, 15 Jul 2022 16:45:38.556287000 UTC +00:00,
  updated_at: Fri, 15 Jul 2022 16:45:38.556287000 UTC +00:00>,
 #<Person:0x000000014f8a4e68
  id: 5,
  first_name: "Jim",
  last_name: "Halpert",
  phone: "987-654-3210",
  created_at: Fri, 15 Jul 2022 16:46:32.751311000 UTC +00:00,
  updated_at: Fri, 15 Jul 2022 16:46:32.751311000 UTC +00:00>,
 #<Person:0x000000014f8a4d78
  id: 6,
  first_name: "Joyce",
  last_name: "Accad",
  phone: "112-334-5550",
  created_at: Fri, 15 Jul 2022 16:48:19.997992000 UTC +00:00,
  updated_at: Fri, 15 Jul 2022 16:56:11.103464000 UTC +00:00>] 
