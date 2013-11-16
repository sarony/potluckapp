# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

events = Event.create([{name: "Thanksgiving Potluck", date: "2013/11/24", time: "07:00"},{name: "Birthday Party", date: "2013/12/13", time: "09:00"}])

guests = Guest.create([{
		name: "Ian", 
		email: "ian@mail.com", 
		rsvp: true
	},
	{
		name: "Saron", 
		email: "saron@mail.com", 
		rsvp: true
	}, 
	{
		name: "Tiffancy", 
		email: "tiffancy@mail.com", 
		rsvp: false
	}, 
	{
		name: "Frog", 
		email: "froggy@mail.com", 
		rsvp: true
	}])

categories = Category.create([{name: "Entrees", event_id: 1}, {name: "Sides", event_id: 1}, {name: "Desserts", event_id: 1}, {name: "Drinks", event_id: 2}, {name: "Dessert", event_id: 2}])

items_thanksgiving = Item.create([{name: "turkey", quantity: 1, unit: "", category_id: 1}, {name: "mashed potatoes", quantity: 1, unit: "bowl", category_id: 2}, {name: "strawberries", quantity: 200, unit: "berries", category_id: 3}])

items_xmas = Item.create([{name: "rum", quantity: 2, unit: "bottles", category_id: 4}, {name: "chocolate cake", quantity: 1, unit:"", category_id: 5}])

joinTableData = ItemGuest.create([
	{
		item_id: 1,
		guest_id: 1
	},
	{
		item_id: 2,
		guest_id: 2
	},
	{
		item_id: 3,
		guest_id: 3
	},
	{
		item_id: 4,
		guest_id: 4
	},
	{
		item_id: 5,
		guest_id: 1
	}
	])



