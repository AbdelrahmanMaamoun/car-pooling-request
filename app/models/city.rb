class City < ActiveRecord::Base 
	has_many :outgoing_travel, class_name: 'Travel' , foreign_key: 'source_city_id'
	has_many :incoming_travel, class_name: 'Travel' , foreign_key: 'des_city_id'
	has_one  :source , class_name: 'Travel' , foreign_key: 'source_city_id'
	has_one  :destination, class_name: 'Travel' , foreign_key: 'des_city_id'
  attr_accessible :name, :zone
end
