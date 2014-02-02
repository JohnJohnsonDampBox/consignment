class Consignment < ActiveRecord::Base
  belongs_to :good
  belongs_to :owner
end
