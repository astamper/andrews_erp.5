class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_items
  validates_formatting_of :zip, using: :us_zip
  validates_formatting_of :email, using: :email
  validates_formatting_of :phone, using: :us_phone
end
