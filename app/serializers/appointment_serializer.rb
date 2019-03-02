class AppointmentSerializer
  include FastJsonapi::ObjectSerializer
  # belongs_to :patient
  # belongs_to :doctor
  attributes :doctor_id, :patient_id, :appointment
end
