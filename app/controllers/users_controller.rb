class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    p user.as_json
    if user.save
      usersession = Usersession.new
      usersession.user_id = user.id
      usersession.save

      p "---------"
      p usersession.user_id
      p usersession.key

      session[:user_key] = usersession.key
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
