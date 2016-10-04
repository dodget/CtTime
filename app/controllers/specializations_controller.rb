class SpecializationsController < ApplicationController

  def create
    @user = User.find(params[:user])
    @specialization = @user.specializations.build(:specialty_id => params[:specialty_id])
    if @specialization.save
      flash[:notice] = "Added specialty"
      redirect_to request.referrer

    else
      flash[:notice] = "error"
      redirect_to request.referrer
    end
  end

  def destroy
    @user = User.find(params[:id])
    @specialization = @user.specializations.find_by_specialty_id(params[:specialty_id])

    if @specialization.destroy
      flash[:notice] = "Removed specialization."
      redirect_to request.referrer
    else
      flash[:error] = "Unable to remove specialization"
      redirect_to request.referrer
    end
  end


end
