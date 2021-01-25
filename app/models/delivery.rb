class Delivery < ApplicationRecord
    belongs_to :cat, dependent: :destroy
end
