class User < ApplicationRecord
  has_secure_password
  has_secure_token :auth_token

  validates :email, uniqueness: true

  def self.authenticate(email, password)
    puts "User.authenticate"
    user = User.find_by(email: email)
    return user if user && user.authenticate(password) && user.regenerate_auth_token
  end

end
