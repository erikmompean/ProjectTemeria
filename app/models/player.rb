class Player < ActiveRecord::Base
  belongs_to :user
  has_many :groups
  has_many :cities
end
