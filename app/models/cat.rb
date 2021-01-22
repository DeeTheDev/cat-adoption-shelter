class Cat < ApplicationRecord
    # NOTE: user association was commented-out due to "user must exist"
    # warning while updating Cat model
    # belongs_to :user
end
