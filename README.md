# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

DreamFarmer Ruby on Rails Project

**Preparation
	-Put Project “on paper” and draw out relationships
	-Try to eliminate has_and_belongs_to_many relationships
	-Replace with has_many, through
	-Use Devise first
	-Git push a lot

**Name Ideas


Models

*Users
	-Name
	-email
	-business_operation(dispensary, medicinal, construction, personal)
	-address
	-Password
	
	**Relationships
		-has_many :plants
		-has_many :grow_rooms, through: :plants
		-has_many :harvests, through: :plants
		#many_to_many with :grow_rooms

*Grow Rooms
	-nutrients
	-type of soil
  	-type_of_light
  	-room_temperature
  	-relative_humidity
	#give users the opportunity to plant in already established grow rooms or create their own for their own use
	#use cannabis_plant_seeds_purchased from users in grow_room to subtract from available room in grow_room

	**Relationships
		-has_many :plants
		-has_many :users, through: :plants
		#many_to_many with :grow_rooms

*Cannabis Plants
	-cannabis species
	-variety_name
	-cannabis_plant_seeds_purchased (how many of each?)
	-ready_to_harvest True/false boolean (This is the user-submittable attribute — that is some attribute other than its foreign keys that can be submitted by the app's user)
	#add cost of seed 
	#add discount for bulk growth (filling one’s own grow room)
	#after migration, create seed file and then run rake:db seed 
	**Relationships
		-belongs_to :user
		-belongs_to :grow_room
​		-has_one :harvests
		#This is the join table

*Harvest Results 
	-total weight of flower produced
	-weight of leaves produced
	-weight of stalks produced
	-weight of roots produced
	#Use random number generator (within range) for amount of cannabis flower grown
	#Calculate proportion of rest of plant
	# use at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort). Consider doing “find all” cannabis_plants that have been harvested in order to determine total production. Search for the last harvest that was completed	

	**Relationships
		-belongs_to :plant
		-belongs_to :user, through :plants
		-belongs_to :grow_rooms, through :plants
		-has_many :for_sales
		#this is a join table?

***Network

*For Sale
	-User_ID
	-Amount for sale
	-species of plant (from cannabis plants)
	-variety name (from cannabis plants)
	-part of plant for sale
	-Asking price
	#devise way for users to make offers for publicly shared production results
	#allow users to accept or decline offers
	#value inner networks profits at higher amount than returning cash to encourage 
return users

	**Relationships
		-belongs_to :harvest
		-belongs_to :plants, through: harvest
		
**Additional Notes

**README
-Application Info
-Installation Instructions
-Contributers Guide
-Lisence
https://gist.github.com/PurpleBooth/109311bb0361f32d87a2

https://go.oncehub.com/909FTOSEBReviews

-going to be adding code to devise.rb within initializers folder for third party authentication “omniauth”

*Nested route with form:
/grow_room/1/cannabis_plant/new
form_for[@grow_room, @cannabis_plant]
submit it to the nested route

Also need /grow_room/1/cannabis_plants or /grow_room/1/cannabis_plants/:id


~~~Additions towards JavaScript project

-Users have a balance
-Cannabis plants have a price
-Grow room features have a price
-Users can barter through putting portions of a harvest on the market and making offers

?*For Purchase
	-User_ID
	-species of interest
	-variety name of interest
	-type of product(drop down - flower, leaves, stalks, roots)
	-offer price

	**Relationships


*It’s A Deal
	-User_ID (seller)
	-User_ID (buyer)
	-species
	-variety name
	-part of plant
	
	**Relationships
# DreamFarmer
