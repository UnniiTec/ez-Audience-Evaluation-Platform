=begin
database design: user_table relationship

- a user(admin) could create many events
- a user(audience) could attend many events
- a user(id) is shared/linked to all relationship tables

view full database design at https://aepsale.nicholastec.com/ dev doc.
=end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :myevents
  has_many :events, through: :myevents
  has_many :prests, through: :myprests
  has_many :prests, through: :pgrades
end
