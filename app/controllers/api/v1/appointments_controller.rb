class Api::V1::AppointmentsController < ApplicationController

  def index
    @appointments = AppointmentSerializer.new(Appointment.all).serialized_json
    render json: @appointments, status: :ok
  end

  def show
    @appointment = AppointmentSerializer.new(Appointment.find(params[:id])).serialized_json
    render json: @appointment, status: :ok
  end

  def create
    byebug
    @appointment = Appointment.create(appointment_params)
    render json: @appointment, status: :ok
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    render json: @appointment, status: :ok
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    render json: {message: "Appointment record deleted."}, status: :ok
  end

  private

  def appointment_params
    params.require(:appointmentProps).permit(:doctor_id, :patient_id, :appointment)
  end
end
