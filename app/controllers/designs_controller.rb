class DesignsController < ApplicationController
  def index
    @designs = Design.includes(:user).all
    @votes = Vote.group(:design_id, :a).count
  end

  def new
    @design = Design.new
  end

  def show
    @design = Design.find(params[:id])
    @votes = @design.votes.group(:a).count
  end


  def create
    @design = Design.new(design_params)
    # todo remove when we have auth
    @design.user = User.where(email: 'selsworth.ian@gmail.com').first

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
