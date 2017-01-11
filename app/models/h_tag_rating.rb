class HTagRating < ApplicationRecord
  # Direct associations

  belongs_to :rating

  belongs_to :guest,
             :class_name => "Guestprofile"

  # Indirect associations

  # Validations

end
