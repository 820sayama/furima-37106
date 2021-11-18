class UserController < ApplicationController
  def edit
  end

def new
end

  def update
    current_user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
