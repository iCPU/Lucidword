# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT USER LOGIN'

user = User.create! :name => 'Chris', :email => 'c@c.c', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user.name
user.add_role :admin

user2 = User.create! :name => 'James', :email => 'j@j.j', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user2.name
user2.add_role :admin

user3 = User.create! :name => 'Alex', :email => 'a@a.a', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user3.name
user3.add_role :admin

user4 = User.create! :name => 'Robin', :email => 'r@r.r', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user4.name
user4.add_role :admin

