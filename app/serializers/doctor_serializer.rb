class DoctorSerializer
  include FastJsonapi::ObjectSerializer
  #has_many :patients, through: :appointments
  #has_many :appointments
  attributes :first_name, :last_name, :bio, :specialty, :license_state, :license_number, :accepts_new_patients, :city, :state, :street, :zip, :website
end
