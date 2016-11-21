class AuthenticateUser
  prepend SimpleCommand

  def initialize(params)
    @email = params[:email]
    @password = params[:password]
  end

  def call
    puts "AuthenticateUser.call"
    return user if user

    errors.add :authentication, I18n.t('authenticate_user.invalid_credentials')
    nil
  end

  private

  def user
    User.authenticate(@email, @password)
  end

end
