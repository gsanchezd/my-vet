class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :veterinary, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
