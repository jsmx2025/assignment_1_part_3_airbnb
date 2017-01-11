class Availability < ApplicationRecord
  # Direct associations

  has_one    :price,
             :dependent => :destroy

  belongs_to :listing

  # Indirect associations

  # Validations

end
