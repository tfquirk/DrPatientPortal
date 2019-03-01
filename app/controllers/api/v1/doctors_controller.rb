class Api::V1::DoctorsController < ApplicationController

  # allows a fetch to be made to the /api/v1/activities url
  # and returns all activities in the database
  def index
    @doctors = Doctor.all
    render json: @doctors, status: :ok
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor, status: :ok
  end

  def create
    @doctor = Doctor.create(doctor_params)
    render json: @doctor, status: :ok
  end

  # after a user of the website has booked a reservation for an activity
  # this route allows a PATCH to be made to the /api/v1/activities/:id
  # to decrement the spaces available based on the number of spots requested in the reservation
  def update
    @doctor = Doctor.find(params[:id])
    @doctor.update(doctor_params)
    render json: @doctor, status: :ok
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    render json: {message: "Doctor record deleted."}, status: :ok
  end

  private

  # only allows :positions_open to be changed during the PATCH
  def doctor_params
    params.require(:doctor).permit(ITEMS NEEDED HERE TO WHITELIST)
  end
end
