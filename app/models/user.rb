class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  def block!
    self.update_attribute(:access_blocked, true)
  end

  def unblock!
    self.update_attribute(:access_blocked, false)
  end

end
