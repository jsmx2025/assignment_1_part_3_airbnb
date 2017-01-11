class Guesthostprofile < ApplicationRecord
  # Direct associations

  belongs_to :guest,
             :class_name => "UserGuest",
             :foreign_key => "user_guest_id"

  belongs_to :host,
             :class_name => "UserHost"

  # Indirect associations

  # Validations

end
