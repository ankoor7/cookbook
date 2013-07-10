class User < ActiveRecord::Base
  has_secure_password
  has_many :recipe

  attr_accessible :email, :username, :password, :password_confirmation
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  def role? role
    self.role == role
  end


end
