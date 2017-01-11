class Guestprofile < ApplicationRecord
  # Direct associations

  belongs_to :guest,
             :class_name => "UserGuest"

  # Indirect associations

  # Validations

end
