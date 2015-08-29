class User < ActiveRecord::Base
	has_many :notifications
	has_many :cerpoolingrequests
	has_many :travels, :through => :cerpoolingrequests

	validates :email, format: {with: /\w+@\w+\.com/}
	validates :password, presence: true


  attr_accessible :age, :email, :password, :phone
end
