class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    # ...
  end

  private

  def user_params
    params.require(:user).permit(:provider, :uid, :name, :oauth_token, :oauth_secret)
  end
end
