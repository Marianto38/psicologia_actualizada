class Appointment < ApplicationRecord

  # Validaciones
  validates :date, :time, :reason, :patient_name, :patient_email, :patient_phone, presence: true
  validates :patient_email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  
end
