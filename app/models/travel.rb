class Travel < ActiveRecord::Base
 belongs_to :source ,class_name: 'city' , foreign_key: 'source_city_id'
 belongs_to :destination ,class_name: 'cty' , foreign_key 'des_city_id' 
 has_many :car_pooling_requessts
 has_many :users, through: :car_pooling_requessts


    validates :Name, presence: true, length: {maximum: 50}
	validates :cost, presence: true
	validates :distance, presence: true
	validates :duration, presence: true




  attr_accessible :cost, :dest_city_id, :distance, :duration, :name, :source_city_id
end
