class Guesthostprofile < ApplicationRecord
  # Direct associations

  has_many   :bookings,
             :foreign_key => "guest_id",
             :dependent => :destroy

  belongs_to :guest,
             :class_name => "UserGuest",
             :foreign_key => "user_guest_id"

  belongs_to :host,
             :class_name => "UserHost"

  # Indirect associations

  # Validations

end
