class Api::V1::AppointmentsController < ApplicationController

  def index
    @appoinment = AppointmentSerializer.new(Appointment.all).serialized_json
    render json: @appoinment, status: :ok
  end

  def show
    @appoinment = AppointmentSerializer.new(Appointment.find(params[:id])).serialized_json
    render json: @appoinment, status: :ok
  end

  def create
    @appoinment = Appointment.create(appoinment_params)
    render json: @appoinment, status: :ok
  end

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

  def appoinment_params
    params.require(:appoinment).permit(:doctor_id, :patient_id, :appointment)
  end
end
