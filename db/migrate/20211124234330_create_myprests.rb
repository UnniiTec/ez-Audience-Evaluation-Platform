class CreateMyprests < ActiveRecord::Migration[6.0]
  def change
    create_table :myprests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :prest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
