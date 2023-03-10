class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :evt_name,         null: false, default: "Default Event"
      t.string :evt_host,         null: false, default: "Default Host"
      t.date :evt_sdate,          null: false
      t.date :evt_edate,          null: false
      t.text :evt_desc,           null: false, default: "No description"
      t.boolean :evt_public,      null: false, default: false
      t.string :evt_code,         null: false
      t.references :user,         null: false, foreign_key: true

      t.timestamps
    end

    add_index :events, :evt_code, unique: true
  end
end
