class City < ActiveRecord::Base
  belongs_to :player
  belongs_to :group
end
