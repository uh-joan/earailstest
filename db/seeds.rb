# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all

@user = User.new(name:'test', email:'test@test.com', password: 'qweqwe', password_confirmation:'qweqwe')
@user.save
@user.activate

# TopCategory.delete_all
# TopCategory.create(name:'Pizza', shortDescription: "Top Category for all Pizzas", enabled: '1', deleted: '0', user_id: '1')
# TopCategory.create(name:'Burger', shortDescription: "Top Category for all burgers", enabled: '1', deleted: '0', user_id: '1')
# TopCategory.create(name:'Chicken', shortDescription: "Category for SF Chicken", enabled: '1', deleted: '0', user_id: '1')
# TopCategory.create(name:'Side', shortDescription: "Category for Side orders", enabled: '1', deleted: '0', user_id: '1')


Addon.delete_all
Addon.create(name: 'Peperoni', onlineViewLabel: 'Peperoni' , printViewLabel: 'Peperoni', posViewLabel: 'Peperoni',
             displayIndex: '1', visibleOnline: '1', visiblePos: '1',user_id: '1')
Addon.create(name: 'Onion', onlineViewLabel: 'Onion' , printViewLabel: 'Onion', posViewLabel: 'Onion',
             displayIndex: '2', visibleOnline: '1', visiblePos: '1',user_id: '1')
Addon.create(name: 'Mushroom', onlineViewLabel: 'Mushroom' , printViewLabel: 'Mush', posViewLabel: 'Mushroom',
             displayIndex: '3', visibleOnline: '1', visiblePos: '1',user_id: '1')
Addon.create(name: 'Salami', onlineViewLabel: 'Salami' , printViewLabel: 'Salami', posViewLabel: 'Salami',
             displayIndex: '4', visibleOnline: '1', visiblePos: '1',user_id: '1')
Addon.create(name: 'Tomato', onlineViewLabel: 'Tomato' , printViewLabel: 'Tomato', posViewLabel: 'Tomato',
             displayIndex: '5', visibleOnline: '1', visiblePos: '1',user_id: '1')
Addon.create(name: 'Ketchup', onlineViewLabel: 'Ketchup' , printViewLabel: 'Ketchup', posViewLabel: 'Ketchup',
             displayIndex: '1', visibleOnline: '1', visiblePos: '1',user_id: '1')
Addon.create(name: 'Chili Sauce', onlineViewLabel: 'Chili' , printViewLabel: 'Chili', posViewLabel: 'Chili',
             displayIndex: '2', visibleOnline: '1', visiblePos: '1',user_id: '1')
Addon.create(name: 'Deep Pan', onlineViewLabel: 'Deep Pan' , printViewLabel: 'Deep', posViewLabel: 'Deep Pan',
             displayIndex: '1', visibleOnline: '1', visiblePos: '1',user_id: '1')
Addon.create(name: 'Thin Crust', onlineViewLabel: 'Thin Crust' , printViewLabel: 'Thin', posViewLabel: 'Thin Crust',
             displayIndex: '2', visibleOnline: '1', visiblePos: '1',user_id: '1')
Addon.create(name: 'Stuffed Crust', onlineViewLabel: 'Stuffed Crust' , printViewLabel: 'Stuffed', posViewLabel: 'Stuffed Crust',
             displayIndex: '3', visibleOnline: '1', visiblePos: '1',user_id: '1')



AddonList.delete_all
AddonList.create(name: 'Pizza Toppings', onlineViewLabel: 'Toppings', posViewLabel: 'Toppings', sortListByIndex: '1',
                 sortListByName: '0', multipleSelection: '1', enabled: '1', user_id: '1')
AddonList.create(name: 'Burger Toppings', onlineViewLabel: 'Toppings', posViewLabel: 'Toppings', sortListByIndex: '1',
                 sortListByName: '0', multipleSelection: '1', enabled: '1', user_id: '1')
AddonList.create(name: 'Pizza Base', onlineViewLabel: 'Select a Pizza Base', posViewLabel: 'Base', sortListByIndex: '1',
                 sortListByName: '0', multipleSelection: '0', enabled: '1', user_id: '1')
AddonList.create(name: 'Sauces', onlineViewLabel: 'Add Sauces', posViewLabel: 'Sauces', sortListByIndex: '0',
                 sortListByName: '1', multipleSelection: '0', enabled: '1', user_id: '1')


AddonListItem.delete_all
AddonListItem.create(user_id: '1', addon_list_id: '1', addon_id: '1')
AddonListItem.create(user_id: '1', addon_list_id: '1', addon_id: '2')
AddonListItem.create(user_id: '1', addon_list_id: '1', addon_id: '3')
AddonListItem.create(user_id: '1', addon_list_id: '1', addon_id: '4')
AddonListItem.create(user_id: '1', addon_list_id: '1', addon_id: '5')
AddonListItem.create(user_id: '1', addon_list_id: '2', addon_id: '2')
AddonListItem.create(user_id: '1', addon_list_id: '2', addon_id: '3')
AddonListItem.create(user_id: '1', addon_list_id: '2', addon_id: '5')
AddonListItem.create(user_id: '1', addon_list_id: '3', addon_id: '8')
AddonListItem.create(user_id: '1', addon_list_id: '3', addon_id: '9')
AddonListItem.create(user_id: '1', addon_list_id: '3', addon_id: '10')
AddonListItem.create(user_id: '1', addon_list_id: '4', addon_id: '6')
AddonListItem.create(user_id: '1', addon_list_id: '4', addon_id: '7')


Group.delete_all
Group.create(name: 'Pizza ', description: 'All Pizzas have a tomato sauce base', onlineViewLabel: 'Pizzas',
             posViewLabel: 'Pizzas', headerImagePath: '/img/pizzamenuheader.jpg', displayIndex: '1',
             visibleOnline: '1', visibleOnPos: '0', enabled: '1', deleted: '0', user_id: '1')
Group.create(name: 'Calzone Pizza', description: 'Folded Pizzas', onlineViewLabel: 'Calzones',
             posViewLabel: 'Calzones', headerImagePath: '/img/pizzamenuheader.jpg', displayIndex: '2',
             visibleOnline: '1', visibleOnPos: '0', enabled: '1', deleted: '0', user_id: '1')


Group.create(name: 'Burger', description: 'Burgers come with chips',onlineViewLabel: 'Burgers',
             posViewLabel: 'Burgers', headerImagePath: '/img/pizzamenuheader.jpg', displayIndex: '3',
             visibleOnline: '1', visibleOnPos: '1', enabled: '1', deleted: '0', user_id: '1')
Group.create(name: 'Chicken', description: 'SF Chickens comes with chips', onlineViewLabel: 'Chickens',
             posViewLabel: 'Chickens', headerImagePath: '/img/pizzamenuheader.jpg', displayIndex: '4',
             visibleOnline: '1', visibleOnPos: '1', enabled: '1', deleted: '0', user_id: '1')
Group.create(name: 'Sides', description: 'Sides',onlineViewLabel: 'Sides',
             posViewLabel: 'Side', headerImagePath: '/img/pizzamenuheader.jpg', displayIndex: '5',
             visibleOnline: '1', visibleOnPos: '1', enabled: '1', deleted: '0', user_id: '1')


#Sizes used for groups
CategorySize.delete_all
CategorySize.create(prefixLabelOnline: 'Small', prefixLabelPrint: 'S', prefixLabelPos: 'S',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '1' , user_id: '1')
CategorySize.create(prefixLabelOnline: 'Medium', prefixLabelPrint: 'M', prefixLabelPos: 'M',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '1' , user_id: '1')
CategorySize.create(prefixLabelOnline: 'Large', prefixLabelPrint: 'L', prefixLabelPos: 'L',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '1' , user_id: '1')

CategorySize.create(prefixLabelOnline: 'Large', prefixLabelPrint: 'L', prefixLabelPos: 'L',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '2' , user_id: '1')
CategorySize.create(prefixLabelOnline: 'Medium', prefixLabelPrint: 'M', prefixLabelPos: 'M',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '2' , user_id: '1')

CategorySize.create(prefixLabelOnline: '1/4 Pounder', prefixLabelPrint: '1/4', prefixLabelPos: '1/4',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '3' , user_id: '1')
CategorySize.create(prefixLabelOnline: '1/2 Pounder', prefixLabelPrint: '1/2', prefixLabelPos: '1/2',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '3' , user_id: '1')

CategorySize.create(prefixLabelOnline: '1 Piece', prefixLabelPrint: '1xPc', prefixLabelPos: '1 Pc',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '4' , user_id: '1')
CategorySize.create(prefixLabelOnline: '3 Pieces', prefixLabelPrint: '3xPc', prefixLabelPos: '3 Pc',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '4' , user_id: '1')
CategorySize.create(prefixLabelOnline: 'Each', prefixLabelPrint: '', prefixLabelPos: '',
                    postfixLabelOnline: '', postfixLabelPrint: '', postfixLabelPos: '',
                    group_id: '5' , user_id: '1')


GroupAddonList.delete_all
GroupAddonList.create(displayIndex: '1', logicIndex: '0', required: '0',
                      group_id: '1', addon_list_id: '1', user_id: '1')
GroupAddonList.create(displayIndex: '2', logicIndex: '0', required: '0',
                      group_id: '1', addon_list_id: '3', user_id: '1')

GroupAddonList.create(displayIndex: '1', logicIndex: '0', required: '0',
                      group_id: '2', addon_list_id: '1', user_id: '1')


GroupAddonList.create(displayIndex: '1', logicIndex: '0', required: '0',
                      group_id: '3', addon_list_id: '2', user_id: '1')
GroupAddonList.create(displayIndex: '1', logicIndex: '0', required: '0',
                      group_id: '3', addon_list_id: '4', user_id: '1')


GroupAddonListPrice.delete_all
#Group id 1
GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '1', category_size_id: '1',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '1', category_size_id: '2',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '2.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '1', category_size_id: '3',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '2', category_size_id: '1',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '2', category_size_id: '2',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '2.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '2', category_size_id: '3',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '3', category_size_id: '1',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '3', category_size_id: '2',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '2.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '3', category_size_id: '3',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '4', category_size_id: '1',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '4', category_size_id: '2',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '2.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '4', category_size_id: '3',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '5', category_size_id: '1',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '5', category_size_id: '2',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '2.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '1', addon_id: '5', category_size_id: '3',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '3', addon_id: '8', category_size_id: '1',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '3', addon_id: '8', category_size_id: '2',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '3', addon_id: '8', category_size_id: '3',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.50', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '3', addon_id: '9', category_size_id: '1',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '0.90', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '3', addon_id: '9', category_size_id: '2',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.40', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '3', addon_id: '9', category_size_id: '3',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '1.50', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '3', addon_id: '10', category_size_id: '1',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '2.90', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '3', addon_id: '10', category_size_id: '2',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '3.80', enabled: '1', deleted: '0',
                           group_id: '1', group_addon_list_id: '3', addon_id: '10', category_size_id: '3',user_id: '1')

#group id 2
GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '1', category_size_id: '4',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '1', category_size_id: '5',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '2', category_size_id: '4',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '2', category_size_id: '5',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '3', category_size_id: '4',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '3', category_size_id: '5',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '4', category_size_id: '4',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '4', category_size_id: '5',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '5', category_size_id: '4',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '1.80', enabled: '1', deleted: '0',
                           group_id: '2', group_addon_list_id: '1', addon_id: '5', category_size_id: '5',user_id: '1')

#group id 3
GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '2', addon_id: '2', category_size_id: '6',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '2', addon_id: '2', category_size_id: '7',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '2', addon_id: '3', category_size_id: '6',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '2', addon_id: '3', category_size_id: '7',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '2', addon_id: '5', category_size_id: '6',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '2', addon_id: '5', category_size_id: '7',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '4', addon_id: '6', category_size_id: '6',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '4', addon_id: '6', category_size_id: '7',user_id: '1')

GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '4', addon_id: '7', category_size_id: '6',user_id: '1')
GroupAddonListPrice.create(cost: '0', prices: '0.00', enabled: '1', deleted: '0',
                           group_id: '3', group_addon_list_id: '4', addon_id: '7', category_size_id: '7',user_id: '1')

ItemType.delete_all
ItemType.create()

Item.delete_all
Item.create()

ItemSize.delete_all
ItemSize.create()