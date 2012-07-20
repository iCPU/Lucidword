class Comment < ActiveRecord::Base
  attr_accessible :content, :ending_id, :parent_id, :user_id

  has_ancestry  

  belongs_to :ending
  belongs_to :user

  validates_presence_of :content

  scope :recent, order("created_at DESC")

end
