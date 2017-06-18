class AppliesController < ApplicationController
  def create
    @apply = Apply.create(recruitment_id: params[:recruitment_id], user_id: current_user.id, campany_id: params[:campany_id], user_name: current_user.user_name )
    redirect_to root_path
  end

  private
  def apply_params
    params.permit(:recruitment_id, :campany_id )
  end

end
