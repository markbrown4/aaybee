class DesignsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @designs = Design.includes(:user).all
    @votes = Vote.group(:design_id, :a).count
  end

  def show
    @design = Design.find(params[:id])
    @votes = @design.votes.group(:a).count
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.new(design_params)
    @design.user = current_user

    if @design.save
      redirect_to design_path(@design)
    else
      render :new
    end
  end

  private

  def design_params
    params.require(:design).permit(:a, :b, :title, :description)
  end
end
