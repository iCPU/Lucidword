class Comment < ActiveRecord::Base
  attr_accessible :content, :ending_id

  belongs_to :ending
  belongs_to :user

  validates_presence_of :content

  scope :recent, order("created_at DESC")

end
