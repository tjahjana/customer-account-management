class Customer < ActiveRecord::Base
  has_many :contracts
end
