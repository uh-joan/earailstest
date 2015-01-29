# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(name:'amir', email:'naghsh@gmail.com', password: 'qwe', password_confirmation:'qwe')

TopCategory.create(name:'Pizza', shortDescription: "Top Category for all Pizzas", enabled: '1', deleted: '0', user_id: '1')
TopCategory.create(name:'Burger', shortDescription: "Top Category for all burgers", enabled: '1', deleted: '0', user_id: '1')
TopCategory.create(name:'Chicken', shortDescription: "Category for SF Chicken", enabled: '1', deleted: '0', user_id: '1')

CategorySize.create()

Addon.create()

Group.create()