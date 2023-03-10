=begin
database design: prest_table relationship

- a presentation belongs to an event
- a presentation has many speakers (through relationship table myprests)
- a presentation has many audience(to review) (through relationship table pgrades)

view full database design at https://aepsale.nicholastec.com/ dev doc.
=end

class Prest < ApplicationRecord
  belongs_to :event
  has_many :users, through: :myprests
  has_many :users, through: :pgrades
end
