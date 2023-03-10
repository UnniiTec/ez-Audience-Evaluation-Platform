=begin
database design: pgrade_table relationship

- an pgrade record(presentation grades table) belongs to(connected between)
an audience and a presentation

view full database design at https://aepsale.nicholastec.com/ dev doc.
=end

class Pgrade < ApplicationRecord
  belongs_to :user
  belongs_to :prest
end
