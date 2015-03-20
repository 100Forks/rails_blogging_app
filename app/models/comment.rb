class Comment < ActiveRecord::Base
  validates :author, :presence => true
  validates :entry, :presence => true
end
