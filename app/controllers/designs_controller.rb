class DesignsController < ApplicationController
  def index
    @designs = Design.includes([:user, :votes]).all
  end

  def new
    @design = Design.new
  end

  def show
    @design = Design.find(params[:id])
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
