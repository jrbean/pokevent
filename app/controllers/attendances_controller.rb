class AttendancesController < ApplicationController

  def show
    @attendance = current_user.attended_events
  end

end
