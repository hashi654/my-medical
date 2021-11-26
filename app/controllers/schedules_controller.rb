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
    @schedule = Schedule.create(schedule_params)
  end

  private
  def schedule_params
    params.require(:schedule).permit(:year_id, :month_id, :day_id, :hour_id).merge(user_id: current_user.id)
  end
end
