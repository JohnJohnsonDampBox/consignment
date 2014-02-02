class Owner < ActiveRecord::Base
  has_many :consignments
  has_many :goods, through: :consignments
end
