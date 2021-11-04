class SchedulesController < ApplicationController
  def index
    @shedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def show
  end

  def create
    @schedule = Schedule.create
  end

  #private
  #def schedule_params
   # params.require(:schedule).permit(:year, :month, :day, :hour).merge(year: ,user_id: current_user.id)
  #end
end
