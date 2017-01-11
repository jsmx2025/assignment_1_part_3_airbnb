class Review < ApplicationRecord
  # Direct associations

  belongs_to :listing

  belongs_to :host,
             :class_name => "Hostprofile",
             :counter_cache => true

  # Indirect associations

  # Validations

end
