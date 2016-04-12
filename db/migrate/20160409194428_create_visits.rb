class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :title
      t.text :observation
      t.references :Pet
      t.timestamps null: false
    end
  end
end
