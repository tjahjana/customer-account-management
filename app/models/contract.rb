class Contract < ActiveRecord::Base
	has_many :products
	belongs_to :customer
end
