class Customer < ActiveRecord::Base
  has_many :orders
  validates_formatting_of :email, using: :email
end
