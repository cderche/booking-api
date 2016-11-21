class V1::AuthenticationController < ApplicationController

  def auth
    command = AuthenticateUser.call(authentication_params)

    if command.success?
      render json: command.result
    else
      render json: command.errors[:authentication]
    end
  end


  private

  def authentication_params
    params.require(:auth).permit(:email, :password)
  end
end
