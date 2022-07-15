<!-- Markdown for rolodex challenge -->

rails generate model Person first_name:string last_name:string phone:string 

Create_people.create first_name: "Jack", last_name:"Smith", phone: "1235557899"

Person.create first_name: "Jack", last_name:"Smith", phone: "1235557899"

Person.create first_name: "Michael", last_name:"Sanchez", phone: "234-555-7899"

Person.create first_name: "Rachel", last_name:"Gomez", phone: "234-234-7899"

Person.create first_name: "Nicole", last_name:"Ramirez", phone: "939-234-7899"

Person.create first_name: "Chris", last_name:"Tomas", phone: "939-234-1212"

<!-- Person.all

#<Person:0x000000011ed8ed10
 id: 5,
 first_name: "Chris",
 last_name: "Tomas",
 phone: "939-234-1212",
 created_at: Fri, 15 Jul 2022 16:56:47.919721000 UTC +00:00,
 updated_at: Fri, 15 Jul 2022 16:56:47.919721000 UTC +00:00> 
3.0.0 :008 > Person.all
  Person Load (0.4ms)  SELECT "people".* FROM "people"
 =>                                                           
[#<Person:0x000000013ed09028                                  
  id: 1,                                                      
  first_name: "Jack",                                         
  last_name: "Smith",                                         
  phone: "1235557899",                                        
  created_at: Fri, 15 Jul 2022 16:54:52.025541000 UTC +00:00, 
  updated_at: Fri, 15 Jul 2022 16:54:52.025541000 UTC +00:00>,
 #<Person:0x000000013ed08e98                                  
  id: 2,                                                      
  first_name: "Michael",                                      
  last_name: "Sanchez",                                       
  phone: "234-555-7899",                                      
  created_at: Fri, 15 Jul 2022 16:55:30.468656000 UTC +00:00, 
  updated_at: Fri, 15 Jul 2022 16:55:30.468656000 UTC +00:00>,
 #<Person:0x000000013ed08dd0
  id: 3,
  first_name: "Rachel",
  last_name: "Gomez",
  phone: "234-234-7899",
  created_at: Fri, 15 Jul 2022 16:55:55.192276000 UTC +00:00,
  updated_at: Fri, 15 Jul 2022 16:55:55.192276000 UTC +00:00>,
 #<Person:0x000000013ecfb770
  id: 4,
  first_name: "Nicole",
  last_name: "Ramirez",
  phone: "939-234-7899",
  created_at: Fri, 15 Jul 2022 16:56:23.608675000 UTC +00:00,
  updated_at: Fri, 15 Jul 2022 16:56:23.608675000 UTC +00:00>,
 #<Person:0x000000013ecfb6a8
  id: 5,
  first_name: "Chris",
  last_name: "Tomas",
  phone: "939-234-1212",
  created_at: Fri, 15 Jul 2022 16:56:47.919721000 UTC +00:00,
  updated_at: Fri, 15 Jul 2022 16:56:47.919721000 UTC +00:00>] 
3.0.0 :009 >  -->
