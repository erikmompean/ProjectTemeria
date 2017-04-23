class Message < ActiveRecord::Base
  belongs_to :follower, class_name: "user_devise"
  belongs_to :followed, class_name: "user_devise"
end
