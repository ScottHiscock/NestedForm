class Cashier < ActiveRecord::Base
  attr_accessible :money, :user_attributes
  has_one :user
  accepts_nested_attributes_for :user
end
