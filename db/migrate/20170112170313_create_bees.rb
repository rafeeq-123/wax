class CreateBees < ActiveRecord::Migration[5.0]
  def change
    create_table :bees do |t|
      t.string :name
      t.string :type
      t.float :latitude 
      t.float :longitude

      t.timestamps
    end
  end
end
