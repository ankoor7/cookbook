class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :username, :password, :password_confirmation
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true


end
