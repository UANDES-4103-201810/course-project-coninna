# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
UserProfile.create(name: "Coni", username:"Coni123", phone:9876543210, mail:"coni@mail.com", role:"user", dob:2018-03-03, credit_card_info:"sikjdfn", country:"Chile", password:"Contraseña1", address:"lala", last_access:"")
Project.create(category: "a", description:"a", days_to_go:2, goal_amount:900, title:"ad", descriptive_page:"e", user_id:1, actual_money:94)
Promise.create(delivery_date: "2012-09-08", description:"hasd",amount:89)
Wishlist.create(project_id:1)
Admin.create(name: "Caro", username:"Caro123", phone:0123456789, mail:"caro@mail.com", role:"admin", dob:2017-03-03, credit_card_info:"sikjdfn", country:"Chile", password:"Contraseña2", address:"lala", last_access:"")