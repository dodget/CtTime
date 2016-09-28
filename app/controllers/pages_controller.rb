class PagesController < ApplicationController

  def index

    @schedules = Schedule.all

    @potential_specialties = Specialty.all

  end

end
