class Product < ActiveRecord::Base
	has_many :features
	belongs_to :contract
end
