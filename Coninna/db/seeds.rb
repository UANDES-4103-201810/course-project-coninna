# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_profiles=UserProfile.create([{ name:'Coni', user_name: 'Coni123', phone: '123456', mail: 'coni@mail.com', role:'user', dob: '' }, { }])