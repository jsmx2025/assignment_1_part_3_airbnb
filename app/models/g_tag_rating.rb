class GTagRating < ApplicationRecord
  # Direct associations

  belongs_to :host,
             :class_name => "Hostprofile"

  # Indirect associations

  # Validations

end
