class User < ActiveRecord::Base
  attr_accessible :cashier_id, :name, :surname
  belongs_to :cashier
end
