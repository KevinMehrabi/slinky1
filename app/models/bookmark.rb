class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :mark, :class_name => "User"
end
