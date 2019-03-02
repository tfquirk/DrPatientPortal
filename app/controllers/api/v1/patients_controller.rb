class Api::V1::PatientsController < ApplicationController

  def index
    @patient = PatientSerializer.new(Patient.all).serialized_json
    render json: @patient, status: :ok
  end

  def show
    @patient = PatientSerializer.new(Patient.find(params[:id])).serialized_json
    render json: @patient, status: :ok
  end

  def create
    @patient = Patient.create(patient_params)
    render json: @patient, status: :ok
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(patient_params)
    render json: @patient, status: :ok
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    render json: {message: "Patient record deleted."}, status: :ok
  end

  private

  def patient_params
    params.require(:appoinment).permit(:first_name, :last_name, :email, :city, :state, :street, :zip, :phone)
  end
end
