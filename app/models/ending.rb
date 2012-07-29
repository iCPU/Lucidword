class Ending < ActiveRecord::Base

  attr_accessible :beginning_id, :content, :title, :private

  acts_as_voteable
  acts_as_followable

  belongs_to :user
  belongs_to :beginning
  has_many :comments

  validates :content, presence: true
  validates :user_id, presence: true

  default_scope order: 'endings.created_at DESC'

end
