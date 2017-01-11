class UserHost < ApplicationRecord
  # Direct associations

  has_one    :guesthostprofile,
             :foreign_key => "host_id",
             :dependent => :destroy

  has_one    :hostprofile,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
