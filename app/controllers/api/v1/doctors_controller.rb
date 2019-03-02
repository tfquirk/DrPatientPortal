class Api::V1::DoctorsController < ApplicationController

  def index
    @doctors = DoctorSerializer.new(Doctor.all).serialized_json
    render json: @doctors, status: :ok
  end

  def show
    @doctor = DoctorSerializer.new(Doctor.find(params[:id])).serialized_json
    render json: @doctor, status: :ok
  end

  def create
    @doctor = Doctor.create(doctor_params)
    render json: @doctor, status: :ok
  end

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

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :bio, :specialty, :license_state, :license_number, :accepts_new_patients, :city, :state, :street, :zip, :website)
  end
end
