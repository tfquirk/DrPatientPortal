class Api::V1::AppointmentsController < ApplicationController

  def index
    @appoinment = Appointment.all
    render json: @appoinment, status: :ok
  end

  def show
    @appoinment = Appointment.find(params[:id])
    render json: @appoinment, status: :ok
  end

  def create
    @appoinment = Appointment.create(appoinment_params)
    render json: @appoinment, status: :ok
  end

  # after a user of the website has booked a reservation for an activity
  # this route allows a PATCH to be made to the /api/v1/activities/:id
  # to decrement the spaces available based on the number of spots requested in the reservation
  def update
    @appoinment = Appointment.find(params[:id])
    @appoinment.update(appoinment_params)
    render json: @appoinment, status: :ok
  end

  def destroy
    @appoinment = Appointment.find(params[:id])
    @appoinment.destroy
    render json: {message: "Appointment record deleted."}, status: :ok
  end

  private

  # only allows :positions_open to be changed during the PATCH
  def appoinment_params
    params.require(:appoinment).permit(ITEMS NEEDED HERE TO WHITELIST)
  end
end
