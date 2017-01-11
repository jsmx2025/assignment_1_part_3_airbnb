class UserGuest < ApplicationRecord
  # Direct associations

  has_one    :guesthostprofile,
             :dependent => :destroy

  has_one    :guestprofile,
             :foreign_key => "guest_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
