class Listing < ApplicationRecord
  # Direct associations

  has_many   :requests,
             :dependent => :destroy

  has_many   :messages,
             :dependent => :nullify

  has_many   :availabilities,
             :dependent => :nullify

  has_many   :tags,
             :class_name => "ListingTag",
             :dependent => :nullify

  belongs_to :host,
             :class_name => "Hostprofile"

  # Indirect associations

  # Validations

end
