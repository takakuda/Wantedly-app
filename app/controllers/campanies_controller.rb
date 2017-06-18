class CampaniesController < ApplicationController

  def show
    @applies = Apply.where(recruitment_id: current_campany.recruitments)
  end



  private

    def users_params
      params.require(:apply).permit(:user_id)
    end
end
