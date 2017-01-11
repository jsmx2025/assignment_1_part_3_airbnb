class Hostprofile < ApplicationRecord
  # Direct associations

  has_many   :bookings,
             :foreign_key => "host_id",
             :dependent => :destroy

  has_many   :reviews,
             :foreign_key => "host_id",
             :dependent => :destroy

  has_many   :messages,
             :foreign_key => "host_id",
             :dependent => :nullify

  belongs_to :host,
             :class_name => "UserHost",
             :foreign_key => "user_host_id"

  # Indirect associations

  # Validations

end
