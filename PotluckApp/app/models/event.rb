class Event < ActiveRecord::Base
	has_many :users
	has_many :categories
end
