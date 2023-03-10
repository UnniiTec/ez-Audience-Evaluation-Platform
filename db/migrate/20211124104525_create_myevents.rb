class CreateMyevents < ActiveRecord::Migration[6.0]
  def change
    create_table :myevents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.string :myevent_code, null: false

      t.timestamps
    end
  end
end
