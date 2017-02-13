class Group < ActiveRecord::Base
  belongs_to :player
  has_one :city
end
