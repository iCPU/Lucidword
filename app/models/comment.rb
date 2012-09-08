class Comment < ActiveRecord::Base
  attr_accessible :content, :ending_id, :parent_id, :user_id, :user_ip, :user_agent, :referrer, :user

  has_ancestry  

  belongs_to :ending
  belongs_to :user

  validates_presence_of :content, :ending_id

  scope :recent, order("created_at DESC")

  def self.search(query)
    if query.blank?
      scoped
    else
      conditions = %w[content name email site_url].map { |c| "comments.#{c} like :query" }
      where(conditions.join(" or "), :query => "%#{query}%")
    end
  end

  def request=(request)
    self.user_ip = request.remote_ip
    self.user_agent = request.env['HTTP_USER_AGENT']
    self.referrer = request.env['HTTP_REFERER']
  end

  def notify_other_commenters
    users_to_notify.each do |user|
      Mailer.comment_response(self, user).deliver
    end
  end

  def users_to_notify
    ancestors.map(&:user).compact.select { |u| u.email.present? && u.email_on_reply? && u != user }
  end

end
