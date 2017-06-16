class AppliesController < ApplicationController
  def create
    @apply = Apply.create(recruitment_id: params[:recruitment_id], user_id: current_user.id)
    redirect_to root_path
  end

  private
  def apply_params
    params.permit(:recruitment_id)
  end

end
