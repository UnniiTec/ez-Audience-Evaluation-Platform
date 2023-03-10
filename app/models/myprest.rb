=begin
database design: myprest_table relationship

- an myprest record(presentations enrollment table) belongs to(connected between)
an speaker and a presentation

view full database design at https://aepsale.nicholastec.com/ dev doc.
=end

class Myprest < ApplicationRecord
  belongs_to :user
  belongs_to :prest
end
