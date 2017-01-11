class Rating < ApplicationRecord
  # Direct associations

  has_one    :guest_tag_rating,
             :class_name => "HTagRating",
             :dependent => :destroy

  has_many   :tagsratings,
             :class_name => "GTagRating",
             :dependent => :destroy

  belongs_to :review

  # Indirect associations

  # Validations

end
