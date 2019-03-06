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
    @patient = Patient.all.find_or_create_by(email: patient_info["email"])
    if @patient.first_name == nil
      @patient.update(patient_info)
    end
    @appointment = Appointment.new(appointment_params)
    @appointment.patient = @patient
    @appointment.save
    render json: { confirmed: @appointment, patient_name: @patient["first_name"] }, status: :ok
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
    params.require(:appointmentProps).permit(:doctor_id, :appointment, :patient_id)
  end
  def patient_info
    params.require(:patient_info).permit(:first_name, :last_name, :phone, :email)
  end
end
