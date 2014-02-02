class Good < ActiveRecord::Base
  has_many :consignments
  has_many :owners, through: :consignments
end
