class FixPetFkOnVisit < ActiveRecord::Migration
  def up
    rename_column :visits, :Pet_id, :pet_id
    add_foreign_key :visits, :pets
  end

  def down
    rename_column :visits, :pet_id, :Pet_id
    remove_foreign_key :visits, :pets
  end

end
