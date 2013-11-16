class Item < ActiveRecord::Base
  belongs_to :category
	has_many :guests, :through => :item_guests
	has_many :item_guests
end
