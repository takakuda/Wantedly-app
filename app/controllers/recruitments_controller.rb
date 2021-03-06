class RecruitmentsController < ApplicationController

  def index
    @recruitments = Recruitment.all.order("created_at DESC").each do
    end
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = Recruitment.create(title: recruitment_params[:title], text: recruitment_params[:text], image: recruitment_params[:image], campany_id: current_campany.id, campany_name: recruitment_params[:campany_name], job_type: recruitment_params[:job_type])

    redirect_to root_path
  end

  def show
    @recruitment = Recruitment.find(params[:id])
    if user_signed_in?
      @user = current_user.id
    elsif campany_signed_in?
      @campany = current_campany.id
    end
  end


  private

  def recruitment_params
    params.require(:recruitment).permit(:title, :text, :image, :id, :campany_name, :job_type)
  end
end
