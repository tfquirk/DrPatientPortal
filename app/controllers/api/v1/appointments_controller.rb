class Api::V1::AppointmentsController < ApplicationController

  # allows a fetch to be made to the /api/v1/countries url
  # and returns all activities in the database
  def index
    @appointments = Appointment.all
    render json: @appoinments, status: :ok
  end
end
