class SpecializationsController < ApplicationController

  def create
    @specialization = current_user.specializations.build(:specialty_id => params[:specialty_id])
    if @specialization.save
      flash[:notice] = "Added specialty"
      redirect_to root_url

    else
      flash[:notice] = "error"
      redirect_to root_url
    end
  end

  def destroy
  end


end
