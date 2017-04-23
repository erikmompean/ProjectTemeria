class Player < ActiveRecord::Base

  has_many :groups
  has_many :cities
end
