class RecruitmentsController < ApplicationController

  def index
    @recruitments = Recruitment.all.order("created_at DESC").each do
    end
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = Recruitment.create(title: recruitment_params[:title], text: recruitment_params[:text], image: recruitment_params[:image], campany_id: current_campany.id)

    redirect_to root_path
  end

  def show
    @recruitment = Recruitment.find(params[:id])
    @user = current_user.id
  end


  private

  def recruitment_params
    params.require(:recruitment).permit(:title, :text, :image, :id)
  end
end
