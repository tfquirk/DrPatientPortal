class PatientSerializer
  include FastJsonapi::ObjectSerializer
  #has_many :doctors, through: :appointments
  #has_many :appointments
  attributes :first_name, :last_name, :email, :city, :state, :street, :zip, :phone, :appointments
end
