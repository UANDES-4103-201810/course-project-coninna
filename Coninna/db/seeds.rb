# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 
users = User.create([{ name:'Coni', user_name: 'Coni123', phone: 123456, email: 'coni@mail.com', dob:'', credit_card_info: 'info', country:'YesPlease', password:'123456', password_confirmation:'123456',  address:'Calle 1',last_access:'' , admin: true }, { name:'Caro', user_name: 'Caro123', phone: 123456, email: 'caro@mail.com', dob: '', credit_card_info: 'info', country:'YesPlease', password:'123456', password_confirmation: '123456', address:'Calle 2',last_access:'', admin: false }, { name:'Mail1', user_name: 'Mail1', phone: 123456, email: 'mail1@mail.com', dob: '', credit_card_info: 'info', country:'YesPlease', password:'123456', password_confirmation: '123456', address:'Calle 2',last_access:'', admin: false }] )
Project.create([{title: 'Turtles', category: 'Turtugas', description: 'This project saves turtles', days_to_go:'20', goal_amount:'1000', actual_money:'10', descriptive_page:'This describes turtles', user_id:'2', outstanding: false, approves:true} , {title: 'adg', category: 'A', description: 'This project saves ad', days_to_go:'20', goal_amount:'1000', actual_money:'10', descriptive_page:'This describes ', user_id:'3', outstanding:true, approves:false}])
categories = Category.create([{name:'food'},{name:'animals'}])
