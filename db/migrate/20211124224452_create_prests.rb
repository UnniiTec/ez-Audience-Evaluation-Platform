class CreatePrests < ActiveRecord::Migration[6.0]
  def change
    create_table :prests do |t|
      t.string :prest_name, null: false, default: "Default Presentation"
      t.date :prest_evdue, null: false
      t.text :prest_desc,  null: false, default: "No Description"
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
