class Booking < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :guest,
             :class_name => "Guesthostprofile"

  belongs_to :listing

  belongs_to :host,
             :class_name => "Hostprofile"

  # Indirect associations

  # Validations

end
