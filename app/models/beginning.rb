class Beginning < ActiveRecord::Base
  attr_accessible :content, :original_author, :title
  belongs_to :user

  validates :content, presence: true
  validates :title, presence: true
  validates :user_id, presence: true

  default_scope order: 'beginnings.created_at DESC'
end
