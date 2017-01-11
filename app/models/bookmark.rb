class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :guest,
             :class_name => "Guestprofile"

  belongs_to :listing

  # Indirect associations

  # Validations

end
