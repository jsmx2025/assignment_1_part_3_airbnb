class Guestprofile < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :foreign_key => "guest_id",
             :dependent => :destroy

  has_many   :h_tag_ratings,
             :foreign_key => "guest_id",
             :dependent => :destroy

  has_many   :reviews,
             :foreign_key => "guest_id",
             :dependent => :destroy

  has_many   :requests,
             :foreign_key => "guest_id",
             :dependent => :destroy

  has_many   :messages,
             :foreign_key => "guest_id",
             :dependent => :nullify

  belongs_to :guest,
             :class_name => "UserGuest"

  # Indirect associations

  # Validations

end
