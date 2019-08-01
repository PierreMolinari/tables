class Appointment < ApplicationRecord
    belongs_to :city, optional: :true
    belongs_to :doctor
    belongs_to :patient
end
