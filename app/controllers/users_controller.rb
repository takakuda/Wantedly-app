class UsersController < ApplicationController
  def show
    @recruitments = current_user.recruitments
    @applies = Apply.where(user_id: current_user.id)
  end

private
  def user_params
    params.reqire(:user).permit(:user_id)
  end
end
