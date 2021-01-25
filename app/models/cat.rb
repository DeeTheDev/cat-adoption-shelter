class Cat < ApplicationRecord
    # NOTE: user association was commented-out due to "user must exist"
    # warning while updating Cat model
    has_one :appointment, dependent: :destroy
    has_one :delivery, dependent: :destroy
end
