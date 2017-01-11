class Guestprofile < ApplicationRecord
  # Direct associations

  has_many   :messages,
             :foreign_key => "guest_id",
             :dependent => :nullify

  belongs_to :guest,
             :class_name => "UserGuest"

  # Indirect associations

  # Validations

end
