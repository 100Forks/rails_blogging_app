class Comment < ActiveRecord::Base
  belongs_to :post
  validates :author, :presence => true
  validates :entry, :presence => true
end
