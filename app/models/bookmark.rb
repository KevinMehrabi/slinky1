class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :bookmark, :class_name => "User"
end
