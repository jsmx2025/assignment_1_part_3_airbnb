class Review < ApplicationRecord
  # Direct associations

  belongs_to :booking

  has_one    :rating,
             :dependent => :destroy

  belongs_to :guest,
             :class_name => "Guestprofile"

  belongs_to :listing

  belongs_to :host,
             :class_name => "Hostprofile",
             :counter_cache => true

  # Indirect associations

  # Validations

end
