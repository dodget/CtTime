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
  end


end
