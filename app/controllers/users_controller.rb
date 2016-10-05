class UsersController < ApplicationController

  def index
    @users = User.all.order(:last)
  end

  def show
    @user = User.find(params[:id])
    @schedules = Schedule.all
    @potential_specialties = Specialty.all
  end

end
