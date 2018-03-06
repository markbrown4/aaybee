class DesignsController < ApplicationController
  expose :designs, -> { Design.includes([:user, :votes]).all }
  expose :design

  def create
    # todo remove when we have auth
    design.user = User.where(email: 'selsworth.ian@gmail.com').first

    if design.save
      redirect_to design_path(design)
    else
      render :new
    end
  end

  private

  def design_params
    params.require(:design).permit(:a, :b, :title, :description)
  end
end
