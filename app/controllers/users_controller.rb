class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @schedules = Schedule.all
    @potential_specialties = Specialty.all
  end

end
