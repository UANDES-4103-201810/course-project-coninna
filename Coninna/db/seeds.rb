# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

date_1 = Date.new(1995,12,12)
date_2 = Date.new(1989,08,08)
date_3 = Date.new(2000,01,01)
date_4 = Date.new(1993, 9, 3)
date_5 = Date.new(2018,6,12)
date_6 = Date.new(2018,06,06)
date_7 = Date.new(2018,12,12)
date_8 = Date.new(2018,11,11)

user_1 = User.create(name:'CarolinaAssadi',user_name: 'CaroDelFlow', phone:123456789, email:'caro@mail.com', dob: date_1, credit_card_info: 'credcardinf', country:'Chile', password: '123456', password_confirmation:'123456', address:'Calle 8', last_access:date_5, admin: true)
user_2 = User.create(name:'ConstanzaMarchant', user_name:'ConiEsCool', phone:987654321, email:'coni@mail.com', dob:date_2, credit_card_info:'some other credit card', country:'Chile', password:'123456', password_confirmation:'123456', address:'Calle 3', last_access:date_6, admin:true)
user_3 = User.create(name:'MaxGarcia', user_name:'MaxEsMiNombre', phone:124356879, email:'max@mail.com', dob:date_3, credit_card_info:'some other card',country:'Chile',password:'123456', password_confirmation:'123456', address:'Calle 1', last_access:date_5,admin:false)
user_4 = User.create(name:'DiegoBerk', user_name:'Diegoxxxx', phone:213465789, email:'diego@mail.com', dob: date_4, credit_card_info:'cardscards', country:'Chile', password:'123456', password_confirmation:'123456', address:'Calle 10', last_access: date_6, admin:false)

category_1 = Category.create(name:'Food')
category_2 = Category.create(name:'Animals')
category_3 = Category.create(name:'Global Warming')
category_4 = Category.create(name:'Environment')
category_5 = Category.create(name:'Philanthropy')
category_6 = Category.create(name:'Music')
category_7 = Category.create(name:'Mystery')

project_1 = Project.create(title:'Turtles', category:category_2, description:'Help protect and save the turtles', days_to_go:20, goal_amount:12000,actual_money:32, descriptive_page:'This talks about turtles', user_id:user_3, outstanding:false, approves:true)
project_2 = Project.create(title:'The dying community in Killarney', category:category_5, description:'The people of this city suffer from a big disease', days_to_go:50, goal_amount:1000000, actual_money:100, descriptive_page:'This talks about the city', user_id:user_4, outstanding:true, approves:true)
project_3 = Project.create(title:'Fluffy Musical Pillows', category:category_6, description:'#This are the ##perfect #pillows', days_to_go:300, goal_amount:60000, actual_money:12, descriptive_page:'This shows you the pillows', used_id:user_3, outstanding:true, approves:true)
project_4 = Project.create(title:'Clean Water', category:category_4, description:'Send help so we an clean the water on many beaches', days_to_go:400, goal_amount:5000, actual_money:30, descriptive_page:'This shows the work done', user_id:user_4, outstanding:false, approves:true)
project_5 = Project.create(title:'Buy this',category:category_7, description:'I wont tell you what it is, but buy it', days_to_go:67, goal_amount:600, actual_money:48, descriptive_page:'You will never know', user_id:user_3, outstanding:false, approves:false )
project_6 = Project.create(title:'IceIcePolarBaby', category:category_3, description:'The ice capes are melting, help prevent this', days_to_go:700, goal_amount:6583, actual_money:23, descriptive_page:'Help preventing this from going any further', user_id:user_4, outstanding:false, approves:false)

