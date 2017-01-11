class ListingTag < ApplicationRecord
  # Direct associations

  belongs_to :listing,
             :counter_cache => :tags_count

  # Indirect associations

  # Validations

end
