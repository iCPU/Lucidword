class Ending < ActiveRecord::Base
  acts_as_commentable

  attr_accessible :beginning_id, :content, :title

  belongs_to :user
  belongs_to :beginning

  validates :content, presence: true
  validates :user_id, presence: true

  default_scope order: 'endings.created_at DESC'

end
