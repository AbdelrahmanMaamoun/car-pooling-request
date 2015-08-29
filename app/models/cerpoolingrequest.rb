class Cerpoolingrequest < ActiveRecord::Base 
	belongs_to :user
	belongs_to :travel


	validates :email, format: {with: /\w+@\w+\.com/}
	validates :password, presence: true
	
  attr_accessible :email, :password, :prefer_from, :prefer_to, :travel_id, :user_id
end
