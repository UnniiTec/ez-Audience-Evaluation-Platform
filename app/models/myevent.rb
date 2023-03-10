=begin
database design: myevents_table relationship

- an myevent record(event enrollment table) belongs to(connected between)
an audience and an event

view full database design at https://aepsale.nicholastec.com/ dev doc.
=end

class Myevent < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
