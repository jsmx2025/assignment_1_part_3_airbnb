class Guesthostprofile < ApplicationRecord
  # Direct associations

  belongs_to :host,
             :class_name => "UserHost"

  # Indirect associations

  # Validations

end
