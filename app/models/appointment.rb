class Appointment < ApplicationRecord
    belongs_to :cat, dependent: :destroy
end
