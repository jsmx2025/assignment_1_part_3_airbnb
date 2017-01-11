class Hostprofile < ApplicationRecord
  # Direct associations

  belongs_to :host,
             :class_name => "UserHost",
             :foreign_key => "user_host_id"

  # Indirect associations

  # Validations

end
