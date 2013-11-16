class Guest < ActiveRecord::Base
	has_many :items, :through => :item_guests
	has_many :item_guests
end
