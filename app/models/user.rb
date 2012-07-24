class User < ActiveRecord::Base
  rolify
# Include default devise modules. Others available are:
# :token_authenticatable, :confirmable,
# :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

 # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  acts_as_voter
  acts_as_voteable

  has_many :beginnings  
  has_many :endings
  has_many :comments
 
end
