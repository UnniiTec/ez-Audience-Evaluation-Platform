=begin
database design: events_table relationship

- an event belongs to an admin
- an event has many presenations
- an event has many enrolled records
- an event has many enrolled audience/speakers

view full database design at https://aepsale.nicholastec.com/ dev doc.
=end

class Event < ApplicationRecord
  belongs_to :user
  has_many :myevents
  has_many :prests
  has_many :users, through: :myevents
end
