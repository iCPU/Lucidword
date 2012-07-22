class Beginning < ActiveRecord::Base
  attr_accessible :content, :original_author, :title, :style_type

  belongs_to :user
  has_many :endings

  validates :content, presence: true
  validates :title, presence: true
  validates :user_id, presence: true

  default_scope order: 'beginnings.created_at DESC'

end
