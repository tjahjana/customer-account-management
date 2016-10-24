class Customer < ActiveRecord::Base
  has_secure_password
  has_many :contracts
end
