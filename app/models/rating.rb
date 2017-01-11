class Rating < ApplicationRecord
  # Direct associations

  has_many   :tagsratings,
             :class_name => "GTagRating",
             :dependent => :destroy

  belongs_to :review

  # Indirect associations

  # Validations

end
